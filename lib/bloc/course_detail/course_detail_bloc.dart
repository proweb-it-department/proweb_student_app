import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/models/course_model/course_model.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'course_detail_event.dart';
part 'course_detail_state.dart';
part 'course_detail_bloc.freezed.dart';

class CourseDetailBloc extends Bloc<CourseDetailEvent, CourseDetailState> {
  CourseDetailBloc() : super(CourseDetailInitial()) {
    on<CourseDetailEvent>((event, emit) async {
      started(int id) async {
        emit(CourseDetailState.initial());
        final main = sl<GetResponsesMain>();
        final response = await main.courseDetail(courseId: id);
        if (response == null) {
          emit(CourseDetailState.error());
          return;
        }
        emit(CourseDetailState.complited(course: response));
      }

      await event.when(started: started);
    });
  }
}
