import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/repositories/video_group_repositiories/video_group_repositiories.dart';
import 'package:proweb_student_app/models/db/db.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'downloads_groups_videos_event.dart';
part 'downloads_groups_videos_state.dart';
part 'downloads_groups_videos_bloc.freezed.dart';

class DownloadsGroupsVideosBloc
    extends Bloc<DownloadsGroupsVideosEvent, DownloadsGroupsVideosState> {
  DownloadsGroupsVideosBloc() : super(_Initial()) {
    on<DownloadsGroupsVideosEvent>((event, emit) async {
      started() async {
        emit(DownloadsGroupsVideosState.load());
        try {
          final repository = sl<VideoGroupRepositiories>();
          final groups = await repository.selectAllGroups();
          if (groups.isEmpty) {
            return emit(DownloadsGroupsVideosState.notFound());
          }
          return emit(DownloadsGroupsVideosState.complited(groups: groups));
        } catch (_) {
          emit(DownloadsGroupsVideosState.error());
        }
      }

      await event.when(started: started);
    });
  }
}
