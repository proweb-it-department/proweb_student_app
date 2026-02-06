part of 'scheduled_student_bloc.dart';

@freezed
sealed class ScheduledStudentState with _$ScheduledStudentState {
  const factory ScheduledStudentState.load() = ScheduledStudentLoad;
  const factory ScheduledStudentState.complited({
    required TsMap<String, List<ScheduledLessonModels>> lessons,
    required TsMap<String, List<CoworkingListReserve>> myVisits,
    required TsMap<String, List<HomeworkListGroup>> homework,
  }) = ScheduledStudentComplited;
}
