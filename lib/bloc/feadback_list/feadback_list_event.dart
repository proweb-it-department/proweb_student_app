part of 'feadback_list_bloc.dart';

@freezed
class FeadbackListEvent with _$FeadbackListEvent {
  const factory FeadbackListEvent.started({required int offset}) = _Started;
  const factory FeadbackListEvent.create({required FeadbackType type, required String text}) = _Create;
}
