import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/api/network/main/post/main.dart';
import 'package:proweb_student_app/models/achievements_cup/achievements_cup.dart';
import 'package:proweb_student_app/models/cups/cups.dart';
import 'package:proweb_student_app/models/response_laze_list.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'cups_event.dart';
part 'cups_state.dart';
part 'cups_bloc.freezed.dart';

class CupsBloc extends Bloc<CupsEvent, CupsState> {
  CupsBloc() : super(CupsStateLoad()) {
    on<CupsEvent>((event, emit) async {
      started(int? userId) async {
        emit(CupsState.load());
        final main = sl<GetResponsesMain>();
        final response = await main.cups(userId);
        if (response == null) return;
        emit(
          CupsState.complited(
            cups: ResponseLazeList(
              count: response.count,
              list: [...response.list],
            ),
          ),
        );
      }

      achievementsGet(int? cupId) async {
        ResponseLazeList<Cups>? cups = state.whenOrNull(
          complited: (cups, _, _) => cups,
        );
        if (cupId == null) {
          emit(CupsState.load());
        } else {
          emit(
            CupsState.complited(
              cups: cups ?? ResponseLazeList(count: 0, list: []),
              achievementsLoad: true,
            ),
          );
        }
        final main = sl<GetResponsesMain>();
        if (cupId == null) {
          cups ??= await main.cups(null);
          if (cups == null) return;
          cupId ??= cups.list.firstOrNull?.id;
        }
        if (cupId == null) return;
        final achievements = await main.achievements(cupId);
        if (achievements == null) return;
        final achevementsList = [...achievements.list];
        achevementsList.sort((a, b) {
          int getCategory(AchievementsCup item) {
            final users = item.users;
            final user = (users != null && users.isNotEmpty)
                ? users.first
                : null;

            if (user?.isAchieved == true && user?.isRewardReceived != true) {
              return 0;
            }
            if (user?.isRewardReceived == true) return 2;
            return 1;
          }

          final aCategory = getCategory(a);
          final bCategory = getCategory(b);

          final categoryCompare = aCategory.compareTo(bCategory);
          if (categoryCompare != 0) return categoryCompare;

          return (a.targetCount ?? 0).compareTo(b.targetCount ?? 0);
        });

        emit(
          CupsState.complited(
            cups: ResponseLazeList(
              count: cups?.count ?? 0,
              list: [...(cups?.list ?? [])],
            ),
            achievements: ResponseLazeList(
              count: achievements.count,
              list: [...achevementsList],
            ),
          ),
        );
      }

      achievementsReceiveReward(int achievementId) async {
        ResponseLazeList<AchievementsCup>? achievements = state.whenOrNull(
          complited: (_, achievements, _) => achievements,
        );
        ResponseLazeList<Cups>? cups = state.whenOrNull(
          complited: (cups, _, _) => cups,
        );
        if (achievements == null) return;
        if (cups == null) return;
        AchievementsCup achievementWhere = achievements.list.singleWhere(
          (element) => element.id == achievementId,
          orElse: () => AchievementsCup(),
        );
        if (achievementWhere.id == null) return;
        final main = sl<PostResponsesMain>();
        final response = await main.achievementReceiveReward(achievementId);
        if (response == null) return;
        achievementWhere = achievementWhere.copyWith(users: [response]);
        final cupId = achievementWhere.categoryId;
        if (cupId == null) return;
        final list = ([
          ...achievements.list,
        ].map((a) => a.id == achievementId ? achievementWhere : a).toList());
        achievements = ResponseLazeList(count: achievements.count, list: list);
        final resultsCount = list.fold(0, (a, b) {
          final isAchived =
              b.users?.firstOrNull?.isAchieved == true &&
              b.users?.firstOrNull?.isRewardReceived == false;
          return (isAchived ? 1 : 0);
        });
        final resultsCountCup = list.fold(0, (a, b) {
          final isAchived = b.users?.firstOrNull?.isRewardReceived == true;
          return (isAchived ? 1 : 0);
        });
        if (resultsCount == 0) {
          Cups cupWhere = cups.list.singleWhere(
            (element) => element.id == cupId,
            orElse: () => Cups(),
          );
          if (cupWhere.id != null) {
            cupWhere = cupWhere.copyWith(rewardAvailableForAchievement: false);
            final list = ([
              ...cups.list,
            ].map((a) => a.id == cupId ? cupWhere : a).toList());
            cups = ResponseLazeList(count: cups.count, list: [...list]);
          }
        }
        if (resultsCountCup == list.length) {
          Cups cupWhere = cups.list.singleWhere(
            (element) => element.id == cupId,
            orElse: () => Cups(),
          );
          if (cupWhere.id != null) {
            final usersCup = cupWhere.users?.firstOrNull ?? CupsUsers();
            if (usersCup.isRewardReceived != true) {
              cupWhere = cupWhere.copyWith(
                users: [usersCup.copyWith(isAchieved: true)],
              );
            }
            final list = ([
              ...cups.list,
            ].map((a) => a.id == cupId ? cupWhere : a).toList());
            cups = ResponseLazeList(count: cups.count, list: [...list]);
          }
        }
        emit(CupsState.complited(cups: cups, achievements: achievements));
      }

      cupReceiveReward(int cupId) async {
        ResponseLazeList<AchievementsCup>? achievements = state.whenOrNull(
          complited: (_, achievements, _) => achievements,
        );
        ResponseLazeList<Cups>? cups = state.whenOrNull(
          complited: (cups, _, _) => cups,
        );
        if (achievements == null) return;
        if (cups == null) return;
        Cups cupWhere = cups.list.singleWhere(
          (element) => element.id == cupId,
          orElse: () => Cups(),
        );
        if (cupWhere.id == null) return;
        final main = sl<PostResponsesMain>();
        final response = await main.cupReceiveReward(cupId);
        if (response == null) return;
        cupWhere = cupWhere.copyWith(users: [response]);
        final list = ([
          ...cups.list,
        ].map((a) => a.id == cupId ? cupWhere : a).toList());
        cups = ResponseLazeList(count: cups.count, list: list);
        emit(
          CupsState.complited(
            cups: ResponseLazeList(count: cups.count, list: [...(cups.list)]),
            achievements: ResponseLazeList(
              count: achievements.count,
              list: [...(achievements.list)],
            ),
          ),
        );
      }

      await switch (event) {
        _Started(userId: final userId) => await started(userId),
        _Achievements(cupId: final cupId) => await achievementsGet(cupId),
        _AchievementsReceiveReward(achievementId: final achievementId) =>
          await achievementsReceiveReward(achievementId),
        _CupReceiveReward(cupId: final cupId) => cupReceiveReward(cupId),
      };
    });
  }
}
