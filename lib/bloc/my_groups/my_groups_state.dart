part of 'my_groups_bloc.dart';

@freezed
sealed class MyGroupsState with _$MyGroupsState {
  const factory MyGroupsState.initial() = MyGroupsInitial;
  const factory MyGroupsState.complited({required List<MyGroupsItem> groups}) =
      MyGroupsComplited;
  const factory MyGroupsState.loading() = MyGroupsLoading;
  const factory MyGroupsState.errorLoad() = MyGroupsErrorLoad;
  const factory MyGroupsState.notFound() = MyGroupsNotFound;
}
