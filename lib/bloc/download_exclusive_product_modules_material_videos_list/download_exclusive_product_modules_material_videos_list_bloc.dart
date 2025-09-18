import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/repositories/video_product_repositiories/video_product_repositiories.dart';
import 'package:proweb_student_app/api/video_repository/video_repository.dart';
import 'package:proweb_student_app/models/db/db.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'download_exclusive_product_modules_material_videos_list_event.dart';
part 'download_exclusive_product_modules_material_videos_list_state.dart';
part 'download_exclusive_product_modules_material_videos_list_bloc.freezed.dart';

class DownloadExclusiveProductModulesMaterialVideosListBloc
    extends
        Bloc<
          DownloadExclusiveProductModulesMaterialVideosListEvent,
          DownloadExclusiveProductModulesMaterialVideosListState
        > {
  DownloadExclusiveProductModulesMaterialVideosListBloc() : super(_Load()) {
    on<DownloadExclusiveProductModulesMaterialVideosListEvent>((
      event,
      emit,
    ) async {
      started(int materialId) async {
        emit(DownloadExclusiveProductModulesMaterialVideosListState.load());
        try {
          final repository = sl<VideoProductRepositiories>();
          final videos = await repository.selectVideo(materialId);
          if (videos.isEmpty) {
            return emit(
              DownloadExclusiveProductModulesMaterialVideosListState.notFound(),
            );
          }
          final List<String> slugs = videos.map((e) => e.slug).toList();
          final videoRepository = sl<VideoRepository>();
          final videosData = await videoRepository.getVideosBySlug(slugs);
          if (videosData.isEmpty) {
            return emit(
              DownloadExclusiveProductModulesMaterialVideosListState.notFound(),
            );
          }
          return emit(
            DownloadExclusiveProductModulesMaterialVideosListState.coplited(
              videos: videosData,
            ),
          );
        } catch (e) {
          emit(DownloadExclusiveProductModulesMaterialVideosListState.error());
        }
      }

      await event.when(started: started);
    });
  }
}
