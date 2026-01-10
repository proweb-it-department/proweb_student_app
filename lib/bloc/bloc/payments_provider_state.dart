part of 'payments_provider_bloc.dart';

@freezed
sealed class PaymentsProviderState with _$PaymentsProviderState {
  const factory PaymentsProviderState.initial() = PaymentsProviderInitial;
  const factory PaymentsProviderState.load() = PaymentsProviderLoad;
  const factory PaymentsProviderState.complited({
    required List<PaymentsProviderModel> providers,
  }) = PaymentsProviderComplited;
}
