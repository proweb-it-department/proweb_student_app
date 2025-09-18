import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_table_view/material_table_view.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/bloc/grade_book/grade_book_bloc.dart';
import 'package:proweb_student_app/interface/components/avatar/avatar.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/models/grade_book_model/grade_book_model.dart';
import 'package:proweb_student_app/models/group_user/group_user.dart';
import 'package:proweb_student_app/models/user/user.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class GradeBookScreen extends StatelessWidget {
  final int groupId;
  const GradeBookScreen({
    super.key,
    @PathParam.inherit('id') required this.groupId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GradeBookBloc>(
      create: (context) =>
          GradeBookBloc()..add(GradeBookEvent.started(groupId: groupId)),
      child: BlocBuilder<GradeBookBloc, GradeBookState>(
        builder: (context, state) {
          return state.when(
            initial: () {
              return Center(child: CircularProgressIndicator());
            },
            error: () {
              return Center(child: ErrorLoad());
            },
            load: () {
              return Center(child: CircularProgressIndicator());
            },
            complited: (groupUsers, works, studentsWork) {
              return TableViewGrade(
                groupUsers: groupUsers,
                works: works,
                studentsWork: studentsWork,
              );
            },
          );
        },
      ),
    );
  }
}

class TableViewGrade extends StatefulWidget {
  final List<GroupUser> groupUsers;
  final List<GradeBookModelWork> works;
  final List<GradeBookModel> studentsWork;
  const TableViewGrade({
    super.key,
    required this.groupUsers,
    required this.works,
    required this.studentsWork,
  });

  @override
  State<TableViewGrade> createState() => _TableViewGradeState();
}

class _TableViewGradeState extends State<TableViewGrade>
    with SingleTickerProviderStateMixin {
  final controller = TableViewController();
  WidthStudetnColumn widthStudent = WidthStudetnColumn.max;

  @override
  void initState() {
    super.initState();
    controller.horizontalScrollController.addListener(() {
      if (controller.horizontalScrollController.offset > 10) {
        setState(() {
          widthStudent = WidthStudetnColumn.min;
        });
      } else {
        setState(() {
          widthStudent = WidthStudetnColumn.max;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return TableView.builder(
      controller: controller,
      columns: [
        TableColumn(
          width: widthStudent.width.toDouble(),
          freezePriority: 201,
          sticky: false,
        ),
        const TableColumn(width: 100),
        for (var i = 0; i < widget.works.length; i++)
          const TableColumn(width: 170),
      ],
      headerBuilder: (context, contentBuilder) {
        return contentBuilder(context, (context, column) {
          String title = 'group_homework.student_title'.tr();
          bool isTest = false;
          if (column > 0) {
            if (column == 1) {
              title = 'group_homework.average_rating'.tr();
            } else {
              final index = column - 2;
              title = widget.works.elementAt(index).name;
              isTest =
                  widget.works.elementAt(index).workType ==
                  GradeBookWorkType.testing;
            }
          }
          return Container(
            height: 40,
            decoration: BoxDecoration(
              color: isTest
                  ? Colors.blue.withAlpha(10)
                  : customColors?.containerColor,
              border: Border(
                right: BorderSide(
                  color: customColors?.borderColor ?? Colors.transparent,
                  width: 1,
                ),
              ),
            ),
            alignment: Alignment.center,
            padding: EdgeInsets.all(8),
            child: Text(
              title,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              softWrap: true,
            ),
          );
        });
      },
      style: TableViewStyle(
        dividers: TableViewDividersStyle(
          horizontal: TableViewHorizontalDividersStyle(
            header: TableViewHorizontalDividerStyle(
              color: customColors?.additionalTwo,
              endIndent: 0,
              indent: 0,
              space: 0,
              thickness: 0,
            ),
          ),
          vertical: TableViewVerticalDividersStyle(
            leading: TableViewVerticalDividerStyle(
              color: customColors?.borderColors,
              wiggleCount: 0,
              wiggleOffset: 0,
            ),
          ),
        ),
        scrollbars: TableViewScrollbarsStyle(
          horizontal: TableViewScrollbarStyle.disabled(),
          vertical: TableViewScrollbarStyle.disabled(),
        ),
      ),
      rowCount: widget.groupUsers.length,
      rowHeight: 80,
      rowBuilder: (context, row, contentBuilder) {
        return Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: customColors?.borderColors ?? Colors.transparent,
              ),
            ),
          ),
          child: contentBuilder(context, (context, column) {
            if (column == 0) {
              final groupUser = widget.groupUsers.elementAt(row);
              return GroupUserGradeBook(
                groupUser: groupUser,
                width: widthStudent,
              );
            } else if (column == 1) {
              final studentWork = widget.studentsWork.elementAt(row);
              return GPA(score: studentWork.score);
            }
            final studentWork = widget.studentsWork.elementAt(row);
            final work = studentWork.works.elementAtOrNull(column - 2);
            if (work == null) {
              final workType = widget.works.elementAt(column - 2).workType;
              return NoRelation(
                color: workType == GradeBookWorkType.testing
                    ? Colors.blue.withAlpha(10)
                    : null,
              );
            } else {
              return ScoreWorkView(work: work);
            }
          }),
        );
      },
    );
  }
}

class NoRelation extends StatelessWidget {
  final Color? color;
  const NoRelation({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(
            color: customColors?.borderColors ?? Colors.transparent,
          ),
        ),
        color: color,
      ),
      child: Icon(Icons.link_off),
    );
  }
}

class ScoreWorkView extends StatelessWidget {
  final GradeBookModelWork work;
  const ScoreWorkView({super.key, required this.work});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    if (work.studentType == GradeBookWorkStudentType.noconnection) {
      return NoRelation(
        color: work.workType == GradeBookWorkType.testing
            ? Colors.blue.withAlpha(10)
            : null,
      );
    } else if (work.studentType == GradeBookWorkStudentType.didntpass) {
      return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border(
            right: BorderSide(
              color: customColors?.borderColors ?? Colors.transparent,
            ),
          ),
          color: work.workType == GradeBookWorkType.testing
              ? Colors.blue.withAlpha(10)
              : Colors.transparent,
        ),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: customColors?.errorFillOp,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 7,
            children: [
              Icon(
                Icons.warning_amber,
                color: customColors?.errorFill,
                size: 16,
              ),
              Text(
                'group_homework.not_passed_work'.tr(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: customColors?.errorFill),
              ),
            ],
          ),
        ),
      );
    } else if (work.studentType == GradeBookWorkStudentType.examination) {
      return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border(
            right: BorderSide(
              color: customColors?.borderColors ?? Colors.transparent,
            ),
          ),
          color: work.workType == GradeBookWorkType.testing
              ? Colors.blue.withAlpha(10)
              : Colors.transparent,
        ),
        padding: EdgeInsets.all(5),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: customColors?.warningFillOp,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 7,
            children: [
              CircularProgressIndicator(
                constraints: BoxConstraints(
                  maxHeight: 16,
                  maxWidth: 16,
                  minHeight: 16,
                  minWidth: 16,
                ),
                strokeWidth: 1,
                color: customColors?.warningFill,
              ),
              Text(
                'group_homework.under_inspection_work'.tr(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: customColors?.warningFill),
              ),
            ],
          ),
        ),
      );
    } else if (work.studentType == GradeBookWorkStudentType.passed) {
      return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border(
            right: BorderSide(
              color: customColors?.borderColors ?? Colors.transparent,
            ),
          ),
          color: work.workType == GradeBookWorkType.testing
              ? Colors.blue.withAlpha(10)
              : Colors.transparent,
        ),
        padding: EdgeInsets.all(5),
        child: Column(
          spacing: 7,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: customColors?.containerColor,
              ),
              child: Text('${double.parse(work.name).toInt()}'),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: customColors?.successFillOp,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 7,
                children: [
                  Icon(Icons.check, color: customColors?.successFill, size: 16),
                  Text(
                    'group_homework.verified_work'.tr(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: customColors?.successFill),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
    return const SizedBox();
  }
}

class GPA extends StatelessWidget {
  final double score;
  const GPA({super.key, required this.score});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    Color color = Colors.transparent;
    if (score >= 4) {
      color = customColors?.successFillOp ?? Colors.transparent;
    } else if (score >= 3) {
      color = customColors?.warningFillOp ?? Colors.transparent;
    } else {
      color = customColors?.errorFillOp ?? Colors.transparent;
    }
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        border: Border(
          right: BorderSide(
            color: customColors?.borderColors ?? Colors.transparent,
          ),
          left: BorderSide(
            color: customColors?.borderColors ?? Colors.transparent,
          ),
        ),
      ),
      child: Text(
        score.toStringAsFixed(1),
        style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
      ),
    );
  }
}

class GroupUserGradeBook extends StatelessWidget {
  final GroupUser groupUser;
  final WidthStudetnColumn width;
  const GroupUserGradeBook({
    super.key,
    required this.groupUser,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    if (width == WidthStudetnColumn.max) {
      return Center(
        child: ListTile(
          leading: Avatar(
            user:
                groupUser.user?.user ??
                User(id: 0, firstName: 'Student Proweb'),
          ),
          title: Text(
            sl<LocalData>().nameUser(
              groupUser.user?.user ?? User(id: 0, firstName: 'Student Proweb'),
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      );
    } else {
      return Center(
        child: Avatar(
          size: 40,
          user:
              groupUser.user?.user ?? User(id: 0, firstName: 'Student Proweb'),
        ),
      );
    }
  }
}

enum WidthStudetnColumn {
  max(250),
  min(70);

  final double width;
  const WidthStudetnColumn(this.width);
}

/*

[
  {
    work: ,
    type: ,
    students: [
      {
        user_id: ,
        score: ,
        type: ,
      }
    ]
  }
]

*/
