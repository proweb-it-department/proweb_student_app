import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/models/response_laze_list.dart';
import 'package:proweb_student_app/models/user/user.dart';
import 'package:proweb_student_app/models/user_total_position/user_total_position.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'ranking_list_event.dart';
part 'ranking_list_state.dart';
part 'ranking_list_bloc.freezed.dart';

class RankingListBloc extends Bloc<RankingListEvent, RankingListState> {
  RankingListBloc() : super(_Initial()) {
    on<RankingListEvent>((event, emit) async {
      started(int offset, int limit, int? courseId, int? groupId) async {
        var winners = state.whenOrNull(
          complited: (winners, userList, my, load, offset) => winners,
        );
        var myRanking = state.whenOrNull(
          complited: (winners, userList, my, load, offset) => my,
        );
        emit(
          RankingListState.complited(
            winners: [...(winners ?? [])],
            userList: null,
            load: LoadState.loading,
            offset: offset,
            myRanking: courseId != null || groupId != null ? null : myRanking,
          ),
        );
        final main = sl<GetResponsesMain>();
        final response = await main.positionsList(
          offset,
          limit,
          courseId,
          groupId,
        );
        final userId = sl<LocalData>().profile?.id;
        if (offset == 0 && userId != null) {
          final myRankingData = await main.position(userId, courseId, groupId);
          myRanking = myRankingData?.copyWith(
            user: User(
              id: userId,
              firstName: sl<LocalData>().profile?.firstName,
              lastName: sl<LocalData>().profile?.lastName,
              image: sl<LocalData>().profile?.image,
              patronymic: sl<LocalData>().profile?.patronymic,
            ),
          );
        }
        if (response == null) {
          return emit(
            RankingListState.complited(
              winners: [...(winners ?? [])],
              userList: null,
              load: LoadState.errorLoading,
              offset: offset,
            ),
          );
        }
        final winnersList = response.list
            .where(
              (element) =>
                  (element.position ?? 0) > 0 && (element.position ?? 0) < 4,
            )
            .toList();
        if (winnersList.isNotEmpty && winnersList.length == 3) {
          winners = [...winnersList];
          winners.sort((a, b) {
            int winA = 0;
            int winB = 0;
            if (a.position == 2) {
              winA = 0;
            } else if (a.position == 1) {
              winA = 1;
            } else if (a.position == 3) {
              winA = 2;
            }
            if (b.position == 2) {
              winB = 0;
            } else if (b.position == 1) {
              winB = 1;
            } else if (b.position == 3) {
              winB = 2;
            }
            return winA - winB;
          });
        }

        final moreList = response.list;
        return emit(
          RankingListState.complited(
            winners: [...(winners ?? [])],
            userList: ResponseLazeList<UserTotalPosition>(
              count: response.count,
              list: [...moreList],
            ),
            load: LoadState.complited,
            offset: offset,
            myRanking: courseId != null || groupId != null ? null : myRanking,
          ),
        );
      }

      await event.when(started: started);
    });
  }
}
