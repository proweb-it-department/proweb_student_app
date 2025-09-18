import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/repositories/video_product_repositiories/video_product_repositiories.dart';
import 'package:proweb_student_app/models/db/db.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'download_exclusive_product_modules_video_event.dart';
part 'download_exclusive_product_modules_video_state.dart';
part 'download_exclusive_product_modules_video_bloc.freezed.dart';

class DownloadExclusiveProductModulesVideoBloc
    extends
        Bloc<
          DownloadExclusiveProductModulesVideoEvent,
          DownloadExclusiveProductModulesVideoState
        > {
  DownloadExclusiveProductModulesVideoBloc() : super(_Load()) {
    on<DownloadExclusiveProductModulesVideoEvent>((event, emit) async {
      started(int productId) async {
        emit(DownloadExclusiveProductModulesVideoState.load());
        try {
          final repository = sl<VideoProductRepositiories>();
          final modules = await repository.selectModulesProduct(productId);
          // modules.sort((a, b) => b.moduleNumber - a.moduleNumber);
          if (modules.isEmpty) {
            return emit(DownloadExclusiveProductModulesVideoState.notFound());
          }
          return emit(
            DownloadExclusiveProductModulesVideoState.complited(
              modules: modules,
            ),
          );
        } catch (e) {
          emit(DownloadExclusiveProductModulesVideoState.error());
        }
      }

      await event.when(started: started);
    });
  }
}
