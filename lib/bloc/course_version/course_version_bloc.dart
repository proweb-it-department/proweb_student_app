import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/models/course_version_modal/course_version_model.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'course_version_event.dart';
part 'course_version_state.dart';
part 'course_version_bloc.freezed.dart';

class CourseVersionBloc extends Bloc<CourseVersionEvent, CourseVersionState> {
  CourseVersionBloc() : super(_Initial()) {
    on<CourseVersionEvent>((event, emit) async {
      started(int versionId) async {
        if (state is _CourseVersionComplited) {
          return;
        }
        emit(CourseVersionState.load());
        final List<CourseVersionModel>? response = await sl<GetResponsesMain>()
            .groupVersion(versionId: versionId);
        if (response == null) {
          emit(CourseVersionState.error());
          return;
        } else {
          emit(CourseVersionState.complite(modules: response));
        }
        return;
      }

      await event.when(started: started);
    });
  }
}
