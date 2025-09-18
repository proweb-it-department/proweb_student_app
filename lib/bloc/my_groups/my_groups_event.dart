part of 'my_groups_bloc.dart';

@freezed
class MyGroupsEvent with _$MyGroupsEvent {
  const factory MyGroupsEvent.started() = _Started;
}
