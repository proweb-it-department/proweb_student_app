import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/models/my_statistic/my_statistic.dart';
import 'package:proweb_student_app/models/user_total_position/user_total_position.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'my_statistic_event.dart';
part 'my_statistic_state.dart';
part 'my_statistic_bloc.freezed.dart';

const data = MyStatistic(
  coworkingReservedCount: 0,
  coworkingVisitedCount: 0,
  coworkingVisitedWithoutReserveCount: 0,
  homeworkNotSolvedCount: 0,
  homeworkSolvedCount: 0,
  lessonNotVisitedCount: 0,
  lessonNotWatchedCount: 0,
  lessonVisitedCount: 0,
  lessonWatchedCount: 0,
  studentMiddleRating: '5',
);
const ranking = UserTotalPosition(position: 0, totalScore: 0);

class MyStatisticBloc extends Bloc<MyStatisticEvent, MyStatisticState> {
  MyStatisticBloc()
    : super(MyStatisticStateData(data: data, position: ranking)) {
    on<MyStatisticEvent>((event, emit) async {
      strted(int? groupId) async {
        emit(MyStatisticState.data(data: data, position: ranking));
        final main = sl<GetResponsesMain>();
        final userId = sl<LocalData>().profile?.id;
        if (userId == null) return;
        await Future.delayed(Duration(milliseconds: 1000));
        final response = await main.myStatistic(groupId);
        final responsePosotion = await main.position(userId, null, groupId);
        emit(
          MyStatisticState.data(
            data: response ?? data,
            position: responsePosotion ?? ranking,
          ),
        );
      }

      await switch (event) {
        _Started(groupId: final groupId) => strted(groupId),
      };
    });
  }
}
