part of 'service_center_bloc.dart';

@freezed
sealed class ServiceCenterState with _$ServiceCenterState {
  const factory ServiceCenterState.initial() = ServiceCenterInitial;
  const factory ServiceCenterState.error() = ServiceCenterError;
  const factory ServiceCenterState.notFound() = ServiceCenterNotFound;
  const factory ServiceCenterState.complited({
    required List<ServiceCenter> list,
  }) = ServiceCenterComplited;
}
