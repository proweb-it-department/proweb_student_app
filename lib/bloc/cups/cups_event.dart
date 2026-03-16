part of 'cups_bloc.dart';

@freezed
sealed class CupsEvent with _$CupsEvent {
  const factory CupsEvent.started({int? userId}) = _Started;
}
