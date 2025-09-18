part of 'transactions_student_bloc.dart';

@freezed
abstract class TransactionsStudentEvent with _$TransactionsStudentEvent {
  const factory TransactionsStudentEvent.started({required int offset}) = _Started;
}
