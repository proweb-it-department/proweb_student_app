part of 'coworking_info_bloc.dart';

@freezed
abstract class CoworkingInfoEvent with _$CoworkingInfoEvent {
  const factory CoworkingInfoEvent.started({required String languageCode}) =
      _Started;
}
