part of 'all_poll_nps_bloc.dart';

@freezed
class AllPollNpsState with _$AllPollNpsState {
  const factory AllPollNpsState.load() = _Initial;
  const factory AllPollNpsState.complited({final AllPollNps? nps}) = _Complited;
}
