import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/feadback_list/feadback_list_bloc.dart';
import 'package:proweb_student_app/interface/pages/feedback/widgets/feadback_infinity_list.dart';

class FeadbackListViewState extends StatelessWidget {
  const FeadbackListViewState({super.key});

  @override
  Widget build(BuildContext context) {
    return FeadbackListView();
  }
}

class FeadbackListView extends StatelessWidget {
  const FeadbackListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeadbackListBloc, FeadbackListState>(
      builder: (context, state) {
        return state.when(
          initial: () {
            return Center(child: CircularProgressIndicator());
          },
          complited: (count, feadbacks, created) {
            return FeadbackInfinitiList(count: count, feadbacks: feadbacks);
          },
        );
      },
    );
  }
}
