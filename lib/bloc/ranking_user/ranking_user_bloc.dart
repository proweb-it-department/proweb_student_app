import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/bloc/ranking_user/ranking_user_state_data.dart';
import 'package:proweb_student_app/models/user_skill/user_skill.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'ranking_user_event.dart';
part 'ranking_user_state.dart';
part 'ranking_user_bloc.freezed.dart';

class RankingUserBloc extends Bloc<RankingUserEvent, RankingUserState> {
  RankingUserBloc() : super(_Initial()) {
    on<RankingUserEvent>((event, emit) async {
      started(int userId) async {
        emit(
          RankingUserState.complited(
            ranking: RankingUser(
              rankingList: [],
              global: null,
              loadState: LoadState.loading,
            ),
            skills: RankingSkills(skills: [], loadState: LoadState.loading),
            userId: userId,
          ),
        );

        final main = sl<GetResponsesMain>();
        var ranking = await main.getUserCourseRating(userId);
        final errorRanking = RankingUser(
          rankingList: [],
          global: null,
          loadState: LoadState.errorLoading,
        );
        if (ranking == null) {
          emit(
            RankingUserState.complited(
              ranking: errorRanking,
              skills: RankingSkills(skills: [], loadState: LoadState.loading),
              userId: userId,
            ),
          );
        } else {
          final coursesId = ranking
              .map((e) {
                return e.courseId ?? 0;
              })
              .where((element) => element > 0);
          if (coursesId.isNotEmpty) {
            for (var element in coursesId) {
              final position = await main.position(userId, element, null);
              if (position != null) {
                ranking = ranking?.map((e) {
                  if (e.courseId == element) {
                    return e.copyWith(totalScore: position);
                  }
                  return e;
                }).toList();
              }
            }
          }
          final position = await main.position(userId, null, null);
          if (position != null && ranking != null) {
            emit(
              RankingUserState.complited(
                ranking: RankingUser(
                  rankingList: ranking
                      .where((element) => element.totalScore != null)
                      .toList(),
                  global: position,
                  loadState: LoadState.complited,
                ),
                skills: RankingSkills(skills: [], loadState: LoadState.loading),
                userId: userId,
              ),
            );
          }
        }
        final stateRanking = state.whenOrNull(
          complited: (ranking, skills, userId) => ranking,
        );
        List<UserSkill>? skills = await main.skills(userId);
        if (skills != null) {
          var skillsmody = [...skills];
          skillsmody.sort((a, b) {
            return (b.score ?? 0) - (a.score ?? 0);
          });
          emit(
            RankingUserState.complited(
              ranking: stateRanking ?? errorRanking,
              skills: RankingSkills(
                skills: skillsmody,
                loadState: LoadState.complited,
              ),
              userId: userId,
            ),
          );
        } else {
          emit(
            RankingUserState.complited(
              ranking: stateRanking ?? errorRanking,
              skills: RankingSkills(
                skills: [],
                loadState: LoadState.errorLoading,
              ),
              userId: userId,
            ),
          );
        }
      }

      await event.when(started: started);
    });
  }
}
