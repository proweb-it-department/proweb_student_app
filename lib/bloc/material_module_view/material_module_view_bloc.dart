import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/api/network/video/get/video.dart';
import 'package:proweb_student_app/models/material_module_item/material_module_item.dart';
import 'package:proweb_student_app/models/video_model/video_model.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'material_module_view_event.dart';
part 'material_module_view_state.dart';
part 'material_module_view_bloc.freezed.dart';

class MaterialModuleViewBloc
    extends Bloc<MaterialModuleViewEvent, MaterialModuleViewState> {
  MaterialModuleViewBloc() : super(_Initial()) {
    on<MaterialModuleViewEvent>((event, emit) async {
      started(int materialId) async {
        emit(MaterialModuleViewState.load());
        final main = sl<GetResponsesMain>();
        final video = sl<GetResponsesVideo>();
        MaterialModuleItem? response = await main.productMaterialItem(
          materialId,
        );
        if (response == null) return emit(MaterialModuleViewState.error());
        final videos = response.videos;
        if (videos != null && videos.isNotEmpty) {
          List<String> slugs = videos
              .map((e) {
                return e.slug ?? '';
              })
              .where((element) => element.isNotEmpty)
              .toList();
          if (slugs.isNotEmpty) {
            final videosResponse = await video.videos(slags: slugs);
            if (videosResponse.isNotEmpty) {
              if (response.videos != null) {
                final videoData = List.of(
                  response.videos!.map((e) {
                    final videoKey = e.slug;
                    if (videoKey == null) return e;
                    final findVideo = videosResponse.firstWhere(
                      (element) => element.slug == videoKey,
                      orElse: () => VideoModel(),
                    );
                    if (findVideo.slug == null) return e;
                    return e.copyWith(video: findVideo);
                  }).toList(),
                )..sort((a, b) => (a.position ?? 0) - (b.position ?? 0));
                response = response.copyWith(videos: videoData);
              }
            }
          }
        }
        return emit(MaterialModuleViewState.complited(meterial: response));
      }

      await event.when(started: started);
    });
  }
}
