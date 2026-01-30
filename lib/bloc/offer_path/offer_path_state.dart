part of 'offer_path_bloc.dart';

@freezed
sealed class OfferPathState with _$OfferPathState {
  const factory OfferPathState.initial() = OfferPathInitial;
  const factory OfferPathState.load() = OfferPathLoad;
  const factory OfferPathState.complited({required OfferPathData offer}) =
      OfferPathComplited;
}
