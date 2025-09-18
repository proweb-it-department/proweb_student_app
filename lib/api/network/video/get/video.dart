import 'package:proweb_student_app/api/fetch/abstract_fetch.dart';
import 'package:proweb_student_app/api/video_repository/video_repository.dart';
import 'package:proweb_student_app/models/response_model/response_model.dart';
import 'package:proweb_student_app/models/video_model/video_model.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

class GetResponsesVideo {
  Future<List<VideoModel>> videos({required List<String> slags}) async {
    List<VideoModel> videos = [];
    if (slags.isEmpty) {
      return videos;
    }

    final repository = sl<VideoRepository>();
    final List<String> slugsView = [];
    for (var element in slags) {
      final data = await repository.getVideoBySlug(element);
      if (data != null) {
        VideoModel model = VideoModel(
          playlist: data.playlist,
          preview: data.preview,
          size: data.size,
          slug: data.slug,
          title: data.title,
          status: StatusVideoData.download,
        );
        videos.add(model);
      } else {
        slugsView.add(element);
      }
    }
    if (slugsView.isEmpty) {
      return videos;
    }

    String path = '/api/v1/video/?slug=${slugsView.join('&slug=')}';
    final response = await sl<VideoFetch>().get(path: path);
    final list = response.fold<List<VideoModel>?>(
      (l) {
        return null;
      },
      (r) {
        final response = ApiResponse<VideoModel>.fromJson(
          r,
          (data) => VideoModel.fromJson(data as Map<String, dynamic>),
        );
        return response.whenOrNull(
          list: (results) {
            return results;
          },
        );
      },
    );
    if (list != null) {
      videos.addAll(list);
    }

    return videos;
  }
}
