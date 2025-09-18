import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/models/grade_book_model/grade_book_model.dart';
import 'package:proweb_student_app/models/group_user/group_user.dart';
import 'package:proweb_student_app/models/homework_student_relation_group/homework_student_relation_group.dart';
import 'package:proweb_student_app/models/test_student_relation/test_student_relation.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'grade_book_event.dart';
part 'grade_book_state.dart';
part 'grade_book_bloc.freezed.dart';

class GradeBookBloc extends Bloc<GradeBookEvent, GradeBookState> {
  GradeBookBloc() : super(_Initial()) {
    on<GradeBookEvent>((event, emit) async {
      started(int groupId) async {
        emit(GradeBookState.load());
        final main = sl<GetResponsesMain>();
        final groupUser = await main.groupUsers(groupId: groupId);
        if (groupUser == null) return emit(GradeBookState.error());
        final work = await main.homeworksStudents(groupId: groupId);
        if (work == null) return emit(GradeBookState.error());
        final testing = await main.testingsStudents(groupId: groupId);
        if (testing == null) return emit(GradeBookState.error());
        final length = work.length + testing.length;
        if (length > 0) {
          final List<GradeBookModelWork> works = [];
          for (var element in work) {
            final id = element.homework?.id;
            final name = element.homework?.name;
            final createdate = element.homework?.assignedDate;
            if (id != null && name != null && createdate != null) {
              final find = work.firstWhere(
                (element2) {
                  return element2.homework?.id == id;
                },
                orElse: () {
                  return HomeworkStudentRelationGroup(id: 0);
                },
              );
              if (find.id == 0) continue;
              final findDooble = works.firstWhere(
                (element3) {
                  return element3.workId == find.homework?.id &&
                      element3.workType == GradeBookWorkType.work;
                },
                orElse: () => GradeBookModelWork(
                  workId: 0,
                  name: '',
                  createdate: '',
                  workType: GradeBookWorkType.work,
                  studentType: GradeBookWorkStudentType.didntpass,
                ),
              );
              if (findDooble.workId > 0) continue;
              works.add(
                GradeBookModelWork(
                  workId: id,
                  name: name,
                  workType: GradeBookWorkType.work,
                  studentType: GradeBookWorkStudentType.none,
                  createdate: createdate,
                ),
              );
            }
          }
          for (var element in testing) {
            final id = element.testing?.id;
            final name = element.testing?.name;
            final createdate = element.testing?.assignedDate;
            if (id != null && name != null && createdate != null) {
              final find = testing.firstWhere(
                (element2) {
                  return element2.testing?.id == id;
                },
                orElse: () {
                  return TestStudentRelation(id: 0);
                },
              );
              if (find.id == 0) continue;
              final findDooble = works.firstWhere(
                (element3) {
                  return element3.workId == find.testing?.id &&
                      element3.workType == GradeBookWorkType.testing;
                },
                orElse: () => GradeBookModelWork(
                  workId: 0,
                  name: '',
                  createdate: '',
                  workType: GradeBookWorkType.work,
                  studentType: GradeBookWorkStudentType.didntpass,
                ),
              );
              if (findDooble.workId > 0) continue;
              works.add(
                GradeBookModelWork(
                  workId: id,
                  name: name,
                  workType: GradeBookWorkType.testing,
                  studentType: GradeBookWorkStudentType.none,
                  createdate: createdate,
                ),
              );
            }
          }
          works.sort((a, b) {
            final aDate = DateTime.parse(a.createdate).millisecondsSinceEpoch;
            final bDate = DateTime.parse(b.createdate).millisecondsSinceEpoch;
            return bDate - aDate;
          });
          List<GradeBookModel> studentsWork = [];
          for (var element in groupUser) {
            final groupUserId = element.groupUserId;
            final role = element.groupRole;
            if (groupUserId == null) continue;
            if (role != 'student') continue;
            GradeBookModel modelUserWork = GradeBookModel(
              score: 0,
              studentid: groupUserId,
              works: [],
            );
            for (var elementWork in works) {
              if (elementWork.workType == GradeBookWorkType.work) {
                final find = work.firstWhere((elementW) {
                  return elementW.student?.groupUserId == groupUserId &&
                      elementW.homework?.id == elementWork.workId;
                }, orElse: () => HomeworkStudentRelationGroup(id: 0));
                final id = find.id;
                if (id != null && id > 0) {
                  GradeBookWorkStudentType type =
                      GradeBookWorkStudentType.noconnection;
                  if (find.score != null && find.score! > 0) {
                    type = GradeBookWorkStudentType.passed;
                  } else if (find.score != null &&
                      find.homeworkMaterials?.isNotEmpty == true) {
                    type = GradeBookWorkStudentType.examination;
                  } else {
                    type = GradeBookWorkStudentType.didntpass;
                  }
                  final workModel = GradeBookModelWork(
                    createdate: '',
                    name: '${find.score ?? 0}',
                    workId: elementWork.workId,
                    studentType: type,
                    workType: elementWork.workType,
                  );

                  modelUserWork = modelUserWork.copyWith(
                    works: [...modelUserWork.works, workModel],
                  );
                  continue;
                }
              }
              if (elementWork.workType == GradeBookWorkType.testing) {
                final find = testing.firstWhere((elementW) {
                  return elementW.studentId == groupUserId &&
                      elementW.testing?.id == elementWork.workId;
                }, orElse: () => TestStudentRelation(id: 0));
                final id = find.id;
                if (id != null && id > 0) {
                  GradeBookWorkStudentType type =
                      GradeBookWorkStudentType.noconnection;
                  if (find.totalScore != null &&
                      double.parse(find.totalScore!) > 0) {
                    type = GradeBookWorkStudentType.passed;
                  } else if (find.totalScore != null &&
                      find.jsonAnswer?.isEmpty == true) {
                    type = GradeBookWorkStudentType.examination;
                  } else {
                    type = GradeBookWorkStudentType.didntpass;
                  }

                  final workModel = GradeBookModelWork(
                    createdate: '',
                    name:
                        '${(double.parse(find.totalScore ?? '0') / 20).ceil()}',
                    workId: elementWork.workId,
                    studentType: type,
                    workType: elementWork.workType,
                  );
                  modelUserWork = modelUserWork.copyWith(
                    works: [...modelUserWork.works, workModel],
                  );
                  continue;
                }
                final workModel = GradeBookModelWork(
                  createdate: '',
                  name: '0',
                  workId: elementWork.workId,
                  studentType: GradeBookWorkStudentType.noconnection,
                  workType: elementWork.workType,
                );
                modelUserWork = modelUserWork.copyWith(
                  works: [...modelUserWork.works, workModel],
                );
              }
            }
            double allScore = 0;
            int count = 0;
            List<double> scores = [];
            for (var workStudent in modelUserWork.works) {
              if (workStudent.studentType != GradeBookWorkStudentType.none &&
                  workStudent.studentType !=
                      GradeBookWorkStudentType.noconnection) {
                double score = double.parse(workStudent.name);

                allScore += score;
                scores.add(score);

                count++;
              }
            }
            allScore = allScore / count;
            modelUserWork = modelUserWork.copyWith(score: allScore);
            studentsWork.add(modelUserWork);
          }

          final groupUsers = [
            ...groupUser,
          ].where((element) => element.groupRole == 'student').toList();

          return emit(
            GradeBookState.complited(
              groupUsers: groupUsers,
              works: works,
              studentsWork: studentsWork,
            ),
          );
        } else {
          return emit(
            GradeBookState.complited(
              groupUsers: [],
              works: [],
              studentsWork: [],
            ),
          );
        }
      }

      await event.when(started: started);
    });
  }
}
