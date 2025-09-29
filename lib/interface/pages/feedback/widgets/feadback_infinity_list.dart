import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/feadback_list/feadback_list_bloc.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/components/md3_refresh_indicator/md3_refresh_indicator.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/interface/pages/feedback/widgets/feadback_list_view_item.dart';
import 'package:proweb_student_app/models/feadbacks_page_item/feadbacks_page_item.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';
import 'package:very_good_infinite_list/very_good_infinite_list.dart';

class FeadbackInfinitiList extends StatefulWidget {
  final int count;
  final List<FeadbacksPageItem> feadbacks;
  const FeadbackInfinitiList({
    super.key,
    required this.count,
    required this.feadbacks,
  });

  @override
  State<FeadbackInfinitiList> createState() => _FeadbackInfinitiListState();
}

class _FeadbackInfinitiListState extends State<FeadbackInfinitiList> {
  bool _isLoading = false;

  void _fetchData(BuildContext context) async {
    setState(() {
      _isLoading = true;
    });

    final bloc = context.read<FeadbackListBloc>();
    bloc.add(FeadbackListEvent.started(offset: widget.feadbacks.length));
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
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(22),
        topRight: Radius.circular(22),
      ),
      child: Container(
        padding: EdgeInsets.only(top: 0, right: 7, left: 7),
        color: customColors?.containerColor,
        child: Md3RefreshIndicator(
          onRefresh: () async {
            final bloc = context.read<FeadbackListBloc>();
            bloc.add(FeadbackListEvent.started(offset: 0));
            await bloc.stream.first;
          },
          child: InfiniteList(
            isLoading: _isLoading,
            centerLoading: true,
            emptyBuilder: (context) {
              return NoData(
                text: 'feedback.My_feedback_not_found',
                icon: Icons.file_present,
              );
            },
            hasReachedMax: widget.count == widget.feadbacks.length,
            onFetchData: () => _fetchData(context),
            loadingBuilder: (context) => Center(
              child: Container(
                width: 50,
                height: 50,
                padding: EdgeInsets.all(10),
                child: Md3CirculeIndicator(),
              ),
            ),
            padding: EdgeInsets.only(top: 10, bottom: bottom + 10 + 100),
            itemCount: widget.feadbacks.length,
            itemBuilder: (context, index) {
              final item = widget.feadbacks.elementAt(index);
              return FeadbackListViewItem(
                key: ValueKey(item.id ?? 0),
                item: item,
                index: index,
                length: widget.feadbacks.length - 1,
              );
            },
          ),
        ),
      ),
    );
  }
}
