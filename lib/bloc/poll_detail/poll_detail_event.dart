part of 'poll_detail_bloc.dart';

@freezed
abstract class PollDetailEvent with _$PollDetailEvent {
  const factory PollDetailEvent.started({required int id}) = _Started;
  const factory PollDetailEvent.send({required String form}) = _Send;
}
