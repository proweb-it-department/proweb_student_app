import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proweb_student_app/bloc/feadback_list/feadback_list_bloc.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class CreatedFeadbackScreen extends StatelessWidget {
  final FeadbackListBloc bloc;
  const CreatedFeadbackScreen({super.key, required this.bloc});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return BlocProvider.value(
      value: bloc,
      child: AnnotatedRegion(
        value: FlexColorScheme.themedSystemNavigationBar(
          context,
          systemNavBarStyle: FlexSystemNavBarStyle.transparent,
        ),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: customColors?.primaryBg.withAlpha(200),
            title: AutoSizeText(
              'feedback.create_a_request'.tr(),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              minFontSize: 16,
              maxFontSize: 22,
              style: GoogleFonts.roboto(),
            ),
            elevation: 0,
            shape: Border(
              bottom: BorderSide(
                color: customColors?.primaryBgBorder ?? Colors.black,
                width: 1,
              ),
            ),
          ),
          body: BodyCreatedFeadback(),
        ),
      ),
    );
  }
}

class BodyCreatedFeadback extends StatefulWidget {
  const BodyCreatedFeadback({super.key});

  @override
  State<BodyCreatedFeadback> createState() => _BodyCreatedFeadbackState();
}

class _BodyCreatedFeadbackState extends State<BodyCreatedFeadback> {
  FeadbackType selectType = FeadbackType.values.first;
  String text = '';
  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 5,
            children: [
              ListTile(
                leading: Icon(
                  Icons.merge_type,
                  color: customColors?.additionalTwo,
                ),
                title: Text('feedback.Type_of_appeal'.tr()),
              ),
              Wrap(
                spacing: 10,
                children: List.generate(FeadbackType.values.length, (index) {
                  final item = FeadbackType.values.elementAt(index);
                  return ChoiceChip(
                    label: Text('feedback.Feedback_type_${item.name}'.tr()),
                    selected: selectType == item,
                    avatar: selectType == item ? null : Icon(item.icon),
                    surfaceTintColor: customColors?.primaryBg,
                    shadowColor: Colors.transparent,
                    showCheckmark: true,
                    backgroundColor: customColors?.primaryBg,
                    selectedColor: customColors?.containerColor,
                    labelStyle: TextStyle(
                      color: customColors?.primaryTextColor,
                    ),
                    iconTheme: IconThemeData(
                      color: customColors?.primaryTextColor,
                    ),
                    checkmarkColor: customColors?.primaryTextColor,
                    onSelected: (value) {
                      if (value) {
                        setState(() {
                          selectType = item;
                        });
                      }
                    },
                  );
                }),
              ),
            ],
          ),
          SizedBox(height: 25),
          TextField(
            minLines: 1,
            maxLines: 10,
            onChanged: (value) {
              setState(() {
                text = value.trim();
              });
            },
            textCapitalization: TextCapitalization.sentences,
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
              labelText: 'feedback.Text_of_the_appeal'.tr(),
            ),
          ),
          SizedBox(height: 20),
          FilledButton.icon(
            style: FilledButton.styleFrom(
              disabledBackgroundColor: customColors?.disabledColor,
            ),
            onPressed: text.isEmpty
                ? null
                : () {
                    final bloc = context.read<FeadbackListBloc>();
                    bloc.add(
                      FeadbackListEvent.create(type: selectType, text: text),
                    );
                    context.router.navigate(FeedbackRoute());
                  },
            icon: Icon(Icons.add),
            label: Text(
              'global_data.Create_data'.tr(),
              style: TextStyle(color: customColors?.primaryTextColor),
            ),
          ),
        ],
      ),
    );
  }
}
