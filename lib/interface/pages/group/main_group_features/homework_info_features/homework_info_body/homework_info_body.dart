import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/homework_group/homework_group_bloc.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/components/md3_refresh_indicator/md3_refresh_indicator.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/homework_info_features/homework_info_item/homework_info_item.dart';

import 'package:proweb_student_app/models/group_detail/group_detail.dart';
import 'package:proweb_student_app/models/homework_list_group/homework_list_group.dart';
import 'package:proweb_student_app/models/response_laze_list.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';
import 'package:very_good_infinite_list/very_good_infinite_list.dart';

class HomeworkInfoBody extends StatefulWidget {
  final ResponseLazeList<HomeworkListGroup> data;
  final GroupDetail group;
  const HomeworkInfoBody({super.key, required this.data, required this.group});

  @override
  State<HomeworkInfoBody> createState() => _HomeworkInfoBodyState();
}

class _HomeworkInfoBodyState extends State<HomeworkInfoBody> {
  bool _isLoading = false;

  void _fetchData(BuildContext context) async {
    setState(() {
      _isLoading = true;
    });

    final bloc = context.read<HomeworkGroupBloc>();
    bloc.add(
      HomeworkGroupEvent.started(
        groupId: widget.group.id!,
        limit: LimitRequest.homework,
        offset: widget.data.list.length,
      ),
    );
    await bloc.stream.first;
    if (!mounted) {
      return;
    }
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final bottom = MediaQuery.of(context).viewPadding.bottom;
    return Md3RefreshIndicator(
      onRefresh: () async {
        final groupId = widget.group.id;
        if (groupId != null) {
          final bloc = context.read<HomeworkGroupBloc>();
          bloc.add(
            HomeworkGroupEvent.started(
              groupId: groupId,
              limit: LimitRequest.homework,
              offset: 0,
            ),
          );
          await bloc.stream.first;
        }
      },
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.only(
          topLeft: Radius.circular(22),
          topRight: Radius.circular(22),
        ),
        child: Container(
          decoration: BoxDecoration(color: customColors?.containerColor),
          child: InfiniteList(
            isLoading: _isLoading,
            centerLoading: true,
            emptyBuilder: (context) {
              return NoData(
                text: 'group_homework.not_found_homework'.tr(),
                icon: Icons.file_present,
              );
            },
            hasReachedMax: widget.data.count == widget.data.list.length,
            onFetchData: () => _fetchData(context),
            loadingBuilder: (context) => Center(
              child: Container(
                width: 50,
                height: 50,
                padding: EdgeInsets.all(10),
                child: Md3CirculeIndicator(),
              ),
            ),
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
              bottom: bottom + 10,
              top: 10,
            ),
            itemCount: widget.data.list.length,
            itemBuilder: (context, index) {
              final item = widget.data.list[index];
              return HomeworkInfoItem(
                item: item,
                group: widget.group,
                isStart: index == 0,
                isEnd: index == (widget.data.list.length) - 1,
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(height: 2);
            },
          ),
        ),
      ),
    );
  }
}
