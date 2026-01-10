part of 'profile_data_bloc.dart';

@freezed
class ProfileDataEvent with _$ProfileDataEvent {
  const factory ProfileDataEvent.started() = _Started;
  const factory ProfileDataEvent.uploadImage({required Uint8List image}) =
      _UploadImage;
  const factory ProfileDataEvent.updateBirth({required String date}) =
      _UpdateBirth;
}
