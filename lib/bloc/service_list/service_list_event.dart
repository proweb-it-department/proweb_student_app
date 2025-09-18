part of 'service_list_bloc.dart';

@freezed
abstract class ServiceListEvent with _$ServiceListEvent {
  const factory ServiceListEvent.started({
    required int offset,
    required int limit,
  }) = _Started;
  const factory ServiceListEvent.buy({
    required int serviceId,
    required int studentId,
  }) = _Buy;
}
