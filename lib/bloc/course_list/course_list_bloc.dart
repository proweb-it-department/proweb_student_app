import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/models/course_model/course_model.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'course_list_event.dart';
part 'course_list_state.dart';
part 'course_list_bloc.freezed.dart';

class CourseListBloc extends Bloc<CourseListEvent, CourseListState> {
  CourseListBloc() : super(_Initial()) {
    on<CourseListEvent>((event, emit) async {
      started(String language) async {
        emit(CourseListState.loading());
        final main = sl<GetResponsesMain>();
        final response = await main.courses(language: language);
        if (response == null) return emit(CourseListState.error());
        return emit(
          CourseListState.complited(
            courses: response.list
                .where((element) => element.adsBanner != null)
                .toList(),
          ),
        );
      }

      await event.when(started: started);
    });
  }
}
