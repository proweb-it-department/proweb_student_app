part of 'nps_poll_bloc.dart';

@freezed
sealed class NpsPollState with _$NpsPollState {
  const factory NpsPollState.initial() = NpsPollInitial;
  const factory NpsPollState.complited({
    required ResponseLazeList<NpsPoll> nps,
  }) = NpsPollComplited;
}
