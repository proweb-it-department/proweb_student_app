part of 'branch_bloc.dart';

@freezed
sealed class BranchState with _$BranchState {
  const factory BranchState.initial() = BranchInitial;
  const factory BranchState.error() = BranchError;
  const factory BranchState.complited({required List<Branche> branch}) =
      BranchComplited;
}
