part of 'cups_bloc.dart';

@freezed
sealed class CupsState with _$CupsState {
  const factory CupsState.load() = CupsStateLoad;
  const factory CupsState.complited({required ResponseLazeList<Cups> cups}) =
      CupsStateComplited;
}
