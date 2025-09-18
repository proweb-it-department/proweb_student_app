part of 'transactions_student_bloc.dart';

@freezed
class TransactionsStudentState with _$TransactionsStudentState {
  const factory TransactionsStudentState.initial() = _Initial;
  const factory TransactionsStudentState.lazylist({required List<TransactionsStudent> list, required int count}) = _TransactionsStudentLazyList;
}
