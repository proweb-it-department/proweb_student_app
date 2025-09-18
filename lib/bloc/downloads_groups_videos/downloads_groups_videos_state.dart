part of 'downloads_groups_videos_bloc.dart';

@freezed
class DownloadsGroupsVideosState with _$DownloadsGroupsVideosState {
  const factory DownloadsGroupsVideosState.load() = _Initial;
  const factory DownloadsGroupsVideosState.error() = _Error;
  const factory DownloadsGroupsVideosState.notFound() = _NotFound;
  const factory DownloadsGroupsVideosState.complited({
    required List<GroupsModelData> groups,
  }) = _Complited;
}
