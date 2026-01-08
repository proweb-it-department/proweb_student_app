part of 'saved_data_info_bloc.dart';

@freezed
sealed class SavedDataInfoState with _$SavedDataInfoState {
  const factory SavedDataInfoState.initial() = SavedDataInfoInition;
  const factory SavedDataInfoState.complited({
    required SavedDataInfoModel data,
  }) = SavedDataInfoComplited;
}
