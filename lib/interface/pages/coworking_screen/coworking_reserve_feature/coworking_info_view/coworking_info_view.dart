import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/coworking_info/coworking_info_bloc.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/pages/coworking_screen/coworking_reserve_feature/coworking_rules/coworking_rules.dart';

class CoworkingInfoView extends StatelessWidget {
  const CoworkingInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoworkingInfoBloc, CoworkingInfoState>(
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
                    final bloc = context.read<CoworkingInfoBloc>();
                    bloc.add(
                      CoworkingInfoEvent.started(
                        languageCode: context.locale.toString(),
                      ),
                    );
                  },
                  child: Text('global_data.try_again'.tr()),
                ),
              ),
            );
          },
          complited: (info) {
            return CoworkingRules(info: info);
          },
        );
      },
    );
  }
}
