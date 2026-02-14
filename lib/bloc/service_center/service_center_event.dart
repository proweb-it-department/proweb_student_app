part of 'service_center_bloc.dart';

@freezed
sealed class ServiceCenterEvent with _$ServiceCenterEvent {
  const factory ServiceCenterEvent.started({required int offset}) = _Started;
}
