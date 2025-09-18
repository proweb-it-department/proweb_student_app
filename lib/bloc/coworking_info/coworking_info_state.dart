part of 'coworking_info_bloc.dart';

@freezed
class CoworkingInfoState with _$CoworkingInfoState {
  const factory CoworkingInfoState.initial() = _Initial;
  const factory CoworkingInfoState.load() = _CoworkingInfoLoad;
  const factory CoworkingInfoState.error() = _CoworkingInfoError;
  const factory CoworkingInfoState.complited({required CoworkingInfo info}) =
      _CoworkingInfoComplited;
}
