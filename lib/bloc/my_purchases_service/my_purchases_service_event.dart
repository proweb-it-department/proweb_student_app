part of 'my_purchases_service_bloc.dart';

@freezed
abstract class MyPurchasesServiceEvent with _$MyPurchasesServiceEvent {
  const factory MyPurchasesServiceEvent.started({
    required int offset,
    required int limit,
  }) = _Started;
}
