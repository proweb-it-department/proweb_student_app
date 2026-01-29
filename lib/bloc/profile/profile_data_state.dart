part of 'profile_data_bloc.dart';

@freezed
class ProfileDataState with _$ProfileDataState {
  const factory ProfileDataState.initial() = _ProfileDataInitial;
  const factory ProfileDataState.view({
    required MyProfile profile,
    required bool load,
  }) = _ProfileDataView;
}
