part of 'saved_data_info_bloc.dart';

@freezed
class SavedDataInfoEvent with _$SavedDataInfoEvent {
  const factory SavedDataInfoEvent.started() = _Started;
  const factory SavedDataInfoEvent.delete(String type) = _DeleteEvent;
}
