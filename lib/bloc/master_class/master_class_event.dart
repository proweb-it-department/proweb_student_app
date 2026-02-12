part of 'master_class_bloc.dart';

@freezed
sealed class MasterClassEvent with _$MasterClassEvent {
  const factory MasterClassEvent.started({
    required MasterClassStatus status,
    required int offset,
  }) = _Started;
}
