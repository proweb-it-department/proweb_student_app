import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/repositories/video_product_repositiories/video_product_repositiories.dart';
import 'package:proweb_student_app/models/db/db.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'download_exclusive_product_modules_material_video_event.dart';
part 'download_exclusive_product_modules_material_video_state.dart';
part 'download_exclusive_product_modules_material_video_bloc.freezed.dart';

class DownloadExclusiveProductModulesMaterialVideoBloc
    extends
        Bloc<
          DownloadExclusiveProductModulesMaterialVideoEvent,
          DownloadExclusiveProductModulesMaterialVideoState
        > {
  DownloadExclusiveProductModulesMaterialVideoBloc() : super(_Load()) {
    on<DownloadExclusiveProductModulesMaterialVideoEvent>((event, emit) async {
      started(int moduleId) async {
        emit(DownloadExclusiveProductModulesMaterialVideoState.load());
        try {
          final repository = sl<VideoProductRepositiories>();
          final materials = await repository.selectMaterialsProduct(moduleId);
          if (materials.isEmpty) {
            return emit(
              DownloadExclusiveProductModulesMaterialVideoState.notFound(),
            );
          }
          return emit(
            DownloadExclusiveProductModulesMaterialVideoState.complited(
              materials: materials,
            ),
          );
        } catch (e) {
          emit(DownloadExclusiveProductModulesMaterialVideoState.error());
        }
      }

      await event.when(started: started);
    });
  }
}
