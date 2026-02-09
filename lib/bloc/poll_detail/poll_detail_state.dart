part of 'poll_detail_bloc.dart';

@freezed
sealed class PollDetailState with _$PollDetailState {
  const factory PollDetailState.initial() = PollDetailInitial;
  const factory PollDetailState.complited({required PollDetail poll}) =
      PollDetailComplited;
  const factory PollDetailState.error() = PollDetailError;
  const factory PollDetailState.sender({required bool send}) = PollDetailSender;
}
