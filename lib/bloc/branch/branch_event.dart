part of 'branch_bloc.dart';

@freezed
sealed class BranchEvent with _$BranchEvent {
  const factory BranchEvent.started() = _Started;
}
