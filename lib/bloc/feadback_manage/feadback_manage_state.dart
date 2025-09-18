part of 'feadback_manage_bloc.dart';

@freezed
class FeadbackManageState with _$FeadbackManageState {
  const factory FeadbackManageState.initial() = _Initial;
  const factory FeadbackManageState.error() = _FeadbackManageError;
  const factory FeadbackManageState.complited({
    required Ticket ticket,
    required List<GlobalComment> comments,
    required bool loadComments,
    required bool loadClosed,
    required bool rejectOffer,
  }) = _FeadbackManageComplited;
}
