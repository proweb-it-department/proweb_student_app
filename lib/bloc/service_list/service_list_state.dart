part of 'service_list_bloc.dart';

@freezed
class ServiceListState with _$ServiceListState {
  const factory ServiceListState.load() = _Load;
  const factory ServiceListState.complited({
    required ResponseLazeList<ServiseForSale> services,
    required bool load,
  }) = _Complited;
}
