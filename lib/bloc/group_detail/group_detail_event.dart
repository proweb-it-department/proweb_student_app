part of 'group_detail_bloc.dart';

@freezed
class GroupDetailEvent with _$GroupDetailEvent {
  const factory GroupDetailEvent.init() = _StartedInit;
  const factory GroupDetailEvent.started({required int groupId}) = _Started;
}
