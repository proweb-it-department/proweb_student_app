import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/models/master_class/master_class.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'master_class_event.dart';
part 'master_class_state.dart';
part 'master_class_bloc.freezed.dart';

class MasterClassBloc extends Bloc<MasterClassEvent, MasterClassState> {
  MasterClassBloc() : super(MasterClassInitial()) {
    on<MasterClassEvent>((event, emit) async {
      started(MasterClassStatus status, int offset) async {
        if (offset == 0) {
          emit(MasterClassState.initial());
        }
        final list = state.whenOrNull(lazylist: (list, _) => list) ?? [];
        final count = state.whenOrNull(lazylist: (_, count) => count) ?? 0;
        final main = sl<GetResponsesMain>();
        final response = await main.masterClass(status, offset);
        if (response == null) {
          emit(MasterClassState.lazylist(list: list, count: count));
          return;
        }
        final listRespose = [...list, ...response.list];
        emit(MasterClassState.lazylist(list: listRespose, count: count));
        return;
      }

      await switch (event) {
        _Started(status: final status, offset: final offset) => started(
          status,
          offset,
        ),
      };
    });
  }
}
