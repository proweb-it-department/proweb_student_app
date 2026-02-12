part of 'current_master_class_bloc.dart';

@freezed
sealed class CurrentMasterClassEvent with _$CurrentMasterClassEvent {
  const factory CurrentMasterClassEvent.started({required int id}) = _Started;
}
