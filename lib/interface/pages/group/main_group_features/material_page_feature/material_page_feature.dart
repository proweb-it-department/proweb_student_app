import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/material_relation/material_relation_bloc.dart';
import 'package:proweb_student_app/interface/components/app_bar/app_bar.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/material_page_feature/features/material_about_feature.dart';

@RoutePage()
class MaterialViewScreen extends StatelessWidget {
  final int relationId;
  final int groupId;
  const MaterialViewScreen({
    super.key,
    @PathParam('relationId') required this.relationId,
    @PathParam('id') required this.groupId,
  });

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: FlexColorScheme.themedSystemNavigationBar(
        context,
        systemNavBarStyle: FlexSystemNavBarStyle.transparent,
      ),
      child: BlocProvider<MaterialRelationBloc>(
        create: (context) =>
            MaterialRelationBloc()
              ..add(MaterialRelationEvent.started(id: relationId)),
        child: Scaffold(
          appBar: MainAppBar(),
          body: MaterialPageFeature(relationId: relationId, groupId: groupId),
        ),
      ),
    );
  }
}

class MaterialPageFeature extends StatelessWidget {
  final int relationId;
  final int groupId;
  const MaterialPageFeature({
    super.key,
    required this.relationId,
    required this.groupId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MaterialRelationBloc, MaterialRelationState>(
      builder: (context, state) {
        return state.when(
          initial: () {
            return Center(child: Md3CirculeIndicator());
          },
          load: () {
            return Center(child: Md3CirculeIndicator());
          },
          error: () {
            return Center(
              child: ErrorLoad(
                action: FilledButton(
                  onPressed: () {
                    final bloc = context.read<MaterialRelationBloc>();
                    bloc.add(MaterialRelationEvent.started(id: relationId));
                  },
                  child: Text('global_data.try_again'.tr()),
                ),
              ),
            );
          },
          complite: (relation) {
            return MaterialAboutFeature(relation: relation);
          },
        );
      },
    );
  }
}
