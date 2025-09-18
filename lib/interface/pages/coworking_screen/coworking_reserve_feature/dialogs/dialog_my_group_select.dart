import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/bloc/my_groups/my_groups_bloc.dart';
import 'package:proweb_student_app/interface/components/course_avatar/course_avatar.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/interface/components/premium_container/premium_container.dart';
import 'package:proweb_student_app/models/my_groups_item/my_groups_item.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class DialogMyGroupSelect extends StatefulWidget {
  const DialogMyGroupSelect({super.key});

  @override
  State<DialogMyGroupSelect> createState() => _DialogMyGroupSelectState();
}

class _DialogMyGroupSelectState extends State<DialogMyGroupSelect> {
  MyGroupsItem? _myGroup;

  setRoom(MyGroupsItem myGroup) {
    setState(() {
      _myGroup = myGroup;
    });
  }

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final bloc = context.watch<MyGroupsBloc>();
    final isStarted = bloc.state.when(
      initial: () => true,
      complited: (groups) => false,
      loading: () => true,
      errorLoad: () => true,
      notFound: () => true,
    );
    return Dialog(
      insetPadding: EdgeInsets.all(12),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 1,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 50,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.close,
                      color: customColors?.primaryTextColor,
                    ),
                  ),
                  Center(
                    child: Text(
                      'education.my_groups'.tr(),
                      style: GoogleFonts.roboto(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BlocBuilder<MyGroupsBloc, MyGroupsState>(
              bloc: isStarted
                  ? (context.read<MyGroupsBloc>()..add(MyGroupsEvent.started()))
                  : null,
              builder: (context, state) {
                return state.when(
                  initial: () => Padding(
                    padding: EdgeInsets.all(8),
                    child: Center(child: CircularProgressIndicator()),
                  ),
                  loading: () => Padding(
                    padding: EdgeInsets.all(8),
                    child: Center(child: CircularProgressIndicator()),
                  ),
                  notFound: () => Padding(
                    padding: EdgeInsets.all(8),
                    child: Center(
                      child: NoData(
                        text: 'education.no_group'.tr(),
                        icon: Icons.group_off,
                      ),
                    ),
                  ),
                  errorLoad: () => Padding(
                    padding: EdgeInsets.all(8),
                    child: ErrorLoad(
                      action: FilledButton(
                        onPressed: () {
                          final bloc = context.read<MyGroupsBloc>();
                          bloc.add(MyGroupsEvent.started());
                        },
                        child: Text('global_data.try_again'.tr()),
                      ),
                    ),
                  ),
                  complited: (groups) {
                    final myGroups = groups.where((element) {
                      final status = element.status;
                      return status == StudentStatus.active ||
                          status == StudentStatus.graduate;
                    }).toList();
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            spacing: 10,
                            children: myGroups.map((e) {
                              bool closeCoworking = false;
                              final dateCoworking = e.coworkingAccessLastDate;
                              if (dateCoworking != null) {
                                final date = DateTime.parse(
                                  dateCoworking,
                                ).millisecondsSinceEpoch;
                                final dateSystem = sl<LocalData>()
                                    .getTime()
                                    .toInt();
                                closeCoworking = dateSystem < date;
                              }
                              return GestureDetector(
                                onTap: closeCoworking
                                    ? null
                                    : () {
                                        setRoom(e);
                                      },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: customColors?.containerColor,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                      color:
                                          customColors?.borderColors ??
                                          Colors.transparent,
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      ListTile(
                                        leading:
                                            e.group?.course?.icon != null &&
                                                e.group?.course?.color != null
                                            ? CourseAvatar(
                                                icon: e.group!.course!.icon!,
                                                color: HexColor(
                                                  e.group!.course!.color!,
                                                ),
                                              )
                                            : Icon(Icons.group),
                                        title: Text(
                                          e.group?.course?.name ?? '',
                                        ),
                                        subtitle: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          spacing: 10,
                                          children: [
                                            Text('#${e.group?.id ?? ''}'),
                                            if (e.hasPackage == true)
                                              PremiumContainer(
                                                text:
                                                    'transactions_balance.tarif_transaction'
                                                        .tr(),
                                              ),
                                          ],
                                        ),
                                        trailing: Checkbox(
                                          value:
                                              e.groupUserId ==
                                              _myGroup?.groupUserId,
                                          onChanged: null,
                                        ),
                                      ),
                                      if (closeCoworking &&
                                          dateCoworking != null)
                                        Divider(height: 1),
                                      if (closeCoworking &&
                                          dateCoworking != null)
                                        ListTile(
                                          title: Text(
                                            'coworing_mobile.Coworking_space_was_available_until'
                                                .tr(),
                                          ),
                                          subtitle: Text(
                                            sl<LocalData>().removeHtmlTags(
                                              sl<LocalData>().getDateString(
                                                date: DateTime.parse(
                                                  dateCoworking,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        SizedBox(height: 10),
                        if (myGroups.isNotEmpty)
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: FilledButton(
                              style: FilledButton.styleFrom(
                                disabledBackgroundColor:
                                    customColors?.additionalTwo,
                              ),
                              onPressed: _myGroup != null
                                  ? () {
                                      Navigator.of(context).pop(_myGroup);
                                    }
                                  : null,
                              child: Text(
                                'global_data.Choose'.tr(),
                                style: TextStyle(
                                  color: _myGroup != null
                                      ? customColors?.primaryTextColor
                                      : customColors?.additionalThree,
                                ),
                              ),
                            ),
                          ),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
