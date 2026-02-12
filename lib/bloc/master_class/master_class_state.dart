part of 'master_class_bloc.dart';

@freezed
sealed class MasterClassState with _$MasterClassState {
  const factory MasterClassState.initial() = MasterClassInitial;
  const factory MasterClassState.lazylist({
    required List<MasterClass> list,
    required int count,
  }) = MasterClassLazylist;
}
