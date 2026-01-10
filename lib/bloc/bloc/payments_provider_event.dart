part of 'payments_provider_bloc.dart';

@freezed
class PaymentsProviderEvent with _$PaymentsProviderEvent {
  const factory PaymentsProviderEvent.started() = _Started;
}