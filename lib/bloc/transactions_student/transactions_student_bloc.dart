import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/models/transactions_student/transactions_student.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'transactions_student_event.dart';
part 'transactions_student_state.dart';
part 'transactions_student_bloc.freezed.dart';

class TransactionsStudentBloc extends Bloc<TransactionsStudentEvent, TransactionsStudentState> {
  TransactionsStudentBloc() : super(_Initial()) {
    on<TransactionsStudentEvent>((event, emit) async {
      started(int offset) async {
        if (offset == 0) {
          emit(TransactionsStudentState.initial());
        }
        final list = state.whenOrNull(lazylist: (list, count) => list);
        final main = sl<GetResponsesMain>();
        final response = await main.transactions(limit: 30, offset: offset);
        if (response != null) {
          final countEmit = response.count;
          var listEmit = response.list;
          if (list != null && offset > 0) {
            listEmit = [...list, ...listEmit];
          }
          return emit(TransactionsStudentState.lazylist(list: listEmit, count: countEmit));
        }
      }

      await event.when(started: started);
    });
  }
}
