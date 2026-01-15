part of 'payments_provider_bloc.dart';

@freezed
class PaymentsProviderEvent with _$PaymentsProviderEvent {
  const factory PaymentsProviderEvent.started() = _Started;
  const factory PaymentsProviderEvent.generateURL({required FormData form}) =
      _GenerateUrl;
  const factory PaymentsProviderEvent.clearUrl() = _ClearUrl;
}
