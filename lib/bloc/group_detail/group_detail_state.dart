part of 'group_detail_bloc.dart';

@freezed
class GroupDetailState with _$GroupDetailState {
  const factory GroupDetailState.initial() = _Initial;
  const factory GroupDetailState.loadGroupDetail() = _LoadGroupDetail;
  const factory GroupDetailState.errorGroupDetail() = _ErrorGroupDetail;
  const factory GroupDetailState.complited({
    required GroupDetail group,
    required MyGroupsItem groupUser,
  }) = _GroupDetailCompliyed;
}
