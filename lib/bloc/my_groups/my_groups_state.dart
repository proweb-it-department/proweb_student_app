part of 'my_groups_bloc.dart';

@freezed
class MyGroupsState with _$MyGroupsState {
  const factory MyGroupsState.initial() = _Initial;
  const factory MyGroupsState.complited({required List<MyGroupsItem> groups}) = _MyGroupsComplited;
  const factory MyGroupsState.loading() = _MyGroupsLoading;
  const factory MyGroupsState.errorLoad() = _MyGroupsErrorLoad;
  const factory MyGroupsState.notFound() = _MyGroupsNotFound;
}
