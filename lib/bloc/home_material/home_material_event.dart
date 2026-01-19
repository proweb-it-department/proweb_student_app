part of 'home_material_bloc.dart';

@freezed
abstract class HomeMaterialEvent with _$HomeMaterialEvent {
  const factory HomeMaterialEvent.started({
    required int groupId,
    required int limit,
    required int offset,
  }) = _Started;
}
