import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/models/course_version_modal/course_version_model.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'course_version_module_event.dart';
part 'course_version_module_state.dart';
part 'course_version_module_bloc.freezed.dart';

class CourseVersionModuleBloc
    extends Bloc<CourseVersionModuleEvent, CourseVersionModuleState> {
  CourseVersionModuleBloc() : super(CourseVersionModuleInitail()) {
    on<CourseVersionModuleEvent>((event, emit) async {
      started(int id) async {
        if (id == 0) {
          emit(CourseVersionModuleState.error());
          return;
        }
        emit(CourseVersionModuleState.initial());
        final main = sl<GetResponsesMain>();
        final response = await main.groupVersion(versionId: id);
        if (response == null) {
          emit(CourseVersionModuleState.error());
          return;
        }
        final mosules = [...response];
        mosules.sort((a, b) => (a.sort ?? 0) - (b.sort ?? 0));
        emit(CourseVersionModuleState.complited(modules: mosules));
      }

      await switch (event) {
        _Started(versionId: final id) => started(id),
      };
    });
  }
}
