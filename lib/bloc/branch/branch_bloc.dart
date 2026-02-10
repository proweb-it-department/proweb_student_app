import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/models/branche/branche.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'branch_event.dart';
part 'branch_state.dart';
part 'branch_bloc.freezed.dart';

class BranchBloc extends Bloc<BranchEvent, BranchState> {
  BranchBloc() : super(BranchInitial()) {
    on<BranchEvent>((event, emit) async {
      started() async {
        emit(BranchState.initial());
        final main = sl<GetResponsesMain>();
        final branches = await main.branch();
        if (branches == null) {
          emit(BranchState.error());
          return;
        }
        emit(BranchState.complited(branch: branches));
      }

      await switch (event) {
        _Started() => await started(),
      };
    });
  }
}
