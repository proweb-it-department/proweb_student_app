import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/models/coworking_list_reserve/coworking_list_reserve.dart';
import 'package:proweb_student_app/models/my_groups_item/my_groups_item.dart';
import 'package:proweb_student_app/models/response_laze_list.dart';
import 'package:proweb_student_app/models/scheduled_lesson_models/scheduled_lesson_models.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/ts_map.dart';
import 'package:talker_logger/talker_logger.dart';

part 'scheduled_student_event.dart';
part 'scheduled_student_state.dart';
part 'scheduled_student_bloc.freezed.dart';

class ScheduledStudentBloc
    extends Bloc<ScheduledStudentEvent, ScheduledStudentState> {
  ScheduledStudentBloc() : super(ScheduledStudentLoad()) {
    on<ScheduledStudentEvent>((event, emit) async {
      started(List<MyGroupsItem> groups) async {
        emit(ScheduledStudentState.load());
        final lessons = TsMap<String, List<ScheduledLessonModels>>();
        final myVisits = TsMap<String, List<CoworkingListReserve>>();

        final main = sl<GetResponsesMain>();
        final List<ScheduledLessonModels> lessonResponse = [];
        for (var element in groups) {
          final groupId = element.group?.id;
          if (groupId == null) continue;
          List<ScheduledLessonModels>? response = await main.myScheduleLesson(
            groupId: groupId,
          );
          if (response == null) continue;
          response = response.map((e) {
            return e.copyWith(myGroup: element);
          }).toList();
          lessonResponse.addAll(response);
        }

        for (var element in lessonResponse) {
          String? datetime = element.datetime;
          if (datetime == null) continue;
          datetime = sl<LocalData>().getDateString(
            date: DateTime.parse(datetime),
            seporator: DateSeporator.dash,
          );
          final date = lessons.getOrSet(datetime, () => []);
          date.add(element);
          lessons.set(datetime, date);
        }
        ResponseLazeList<CoworkingListReserve>? responseCoworking = await main
            .coworkingList(limit: 1000, offset: 0);
        if (responseCoworking != null && responseCoworking.list.isNotEmpty) {
          for (var element in responseCoworking.list) {
            final date = element.date;
            if (date == null) continue;
            final dateVisits = myVisits.getOrSet(date, () => []);
            dateVisits.add(element);
            myVisits.set(date, dateVisits);
          }
        }
        emit(
          ScheduledStudentState.complited(lessons: lessons, myVisits: myVisits),
        );
      }

      await event.when(started: started);
    });
  }
}
