part of 'current_master_class_bloc.dart';

@freezed
sealed class CurrentMasterClassState with _$CurrentMasterClassState {
  const factory CurrentMasterClassState.initial() = CurrentMasterClassInitial;
  const factory CurrentMasterClassState.load() = CurrentMasterClassLoad;
  const factory CurrentMasterClassState.error() = CurrentMasterClassError;
  const factory CurrentMasterClassState.complited({
    required MasterClass masterClass,
    required MyReservMasterClass? reserv,
    required VideoModel? video,
  }) = CurrentMasterClassComplited;
}
