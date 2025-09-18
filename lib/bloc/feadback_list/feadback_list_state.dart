part of 'feadback_list_bloc.dart';

@freezed
class FeadbackListState with _$FeadbackListState {
  const factory FeadbackListState.initial() = _Initial;
  const factory FeadbackListState.complited({
    required int count,
    required List<FeadbacksPageItem> feadbacks,
    required bool created,
  }) = _FeadbackListComplited;
}
