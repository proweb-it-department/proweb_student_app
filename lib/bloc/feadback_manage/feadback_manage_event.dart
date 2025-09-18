part of 'feadback_manage_bloc.dart';

@freezed
class FeadbackManageEvent with _$FeadbackManageEvent {
  const factory FeadbackManageEvent.started({required int id}) = _Started;
  const factory FeadbackManageEvent.reloadWS({required int id}) = _ReloadWS;
  const factory FeadbackManageEvent.createComment({
    required List<String> files,
    required String comment,
  }) = _FeadbackManageComment;
  const factory FeadbackManageEvent.closeTicket({
    int? offerId,
  }) = _FeadbackManageCloseTicket;
  const factory FeadbackManageEvent.rejectOffer({
    required int offerId,
  }) = _FeadbackManageRejectOffer;
  const factory FeadbackManageEvent.score({
    required int score,
  }) = _FeadbackManageScore;
}
