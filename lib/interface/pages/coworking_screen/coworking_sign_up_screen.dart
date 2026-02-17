import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/bloc/coworking_list_reserve/coworking_list_reserve_bloc.dart';
import 'package:proweb_student_app/interface/components/app_bar/app_bar.dart';
import 'package:proweb_student_app/interface/components/app_bar/go_page.dart';
import 'package:proweb_student_app/interface/components/course_avatar/course_avatar.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/components/premium_container/premium_container.dart';
import 'package:proweb_student_app/interface/components/pro_bottom_sheet/pro_bottom_sheet.dart';
import 'package:proweb_student_app/interface/pages/coworking_screen/coworking_reserve_feature/dialogs/dialog_seats_select.dart';
import 'package:proweb_student_app/models/coworking_list_reserve/coworking_list_reserve.dart';
import 'package:proweb_student_app/models/seat_item/seat_item.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class CoworkingSignUpScreen extends StatelessWidget {
  final int visitId;
  final CoworkingListReserveBloc bloc;
  const CoworkingSignUpScreen({
    super.key,
    required this.visitId,
    required this.bloc,
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final bottom = MediaQuery.of(context).viewPadding.bottom;
    return BlocProvider.value(
      value: bloc,
      child: AnnotatedRegion(
        value: FlexColorScheme.themedSystemNavigationBar(
          context,
          systemNavBarStyle: FlexSystemNavBarStyle.transparent,
        ),
        child: Scaffold(
          appBar: MainAppBar(),
          body: Padding(
            padding: EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
              bottom: 10 + bottom,
            ),
            child: Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: customColors?.containerColor,
              ),
              child: BlocCoworkingBody(visitId: visitId),
            ),
          ),
        ),
      ),
    );
  }
}

class BlocCoworkingBody extends StatelessWidget {
  final int visitId;
  const BlocCoworkingBody({super.key, required this.visitId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoworkingListReserveBloc, CoworkingListReserveState>(
      builder: (context, state) {
        return state.when(
          initial: () {
            return Center(child: ErrorLoad());
          },
          list: (count, list, reservate) {
            final data = list.firstWhere(
              (element) => element.id == visitId,
              orElse: () {
                return CoworkingListReserve();
              },
            );
            if (data.id == null) {
              return Center(child: ErrorLoad());
            }
            return CoworkingSignUpBody(data: data);
          },
        );
      },
    );
  }
}

class CoworkingSignUpBody extends StatelessWidget {
  final CoworkingListReserve data;
  const CoworkingSignUpBody({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final date = data.date;
    final time = data.reserveTime;
    final arrivalTime = data.arrivalTime;
    final leavingTime = data.leavingTime;
    final divider = Divider(height: 1);

    final statusColor = data.status == StatusCoworkingReserve.came
        ? customColors?.warningFillOp
        : data.status == StatusCoworkingReserve.gone
        ? customColors?.successFillOp
        : data.status == StatusCoworkingReserve.notCome
        ? customColors?.errorFillOp
        : customColors?.primaryTextColorOp.withAlpha(50);
    final statusColorReserv = data.noSeatReservation == true
        ? customColors?.errorFill.withAlpha(30)
        : customColors?.successFill.withAlpha(30);
    String statusTitle = 'coworing_mobile.You_are_registered'.tr();
    String statusTitleReserve = 'coworing_mobile.Record_on_time'.tr();
    if (data.noSeatReservation == true) {
      statusTitleReserve = 'coworing_mobile.No_appointment'.tr();
    }
    if (data.status == StatusCoworkingReserve.came) {
      statusTitle = 'coworing_mobile.you_have_arrived'.tr();
    } else if (data.status == StatusCoworkingReserve.gone) {
      statusTitle = 'coworing_mobile.Youre_gone'.tr();
    } else if (data.status == StatusCoworkingReserve.notCome) {
      statusTitle = 'coworing_mobile.You_didnt_come'.tr();
    }

    return ListView(
      children: [
        if (data.status == StatusCoworkingReserve.reserve)
          Padding(
            key: ValueKey(110),
            padding: EdgeInsets.all(12),
            child:
                !context.watch<CoworkingListReserveBloc>().state.when(
                  initial: () => false,
                  list: (count, list, reservate) => reservate,
                )
                ? Row(
                    spacing: 8,
                    children: [
                      Expanded(
                        child: FilledButton.icon(
                          style: FilledButton.styleFrom(
                            backgroundColor: customColors?.additionalTwo,
                            textStyle: TextStyle(
                              color: customColors?.primaryTextColor,
                            ),
                          ),
                          onPressed: () async {
                            showDialog(
                              context: context,
                              builder: (_) {
                                return BlocProvider.value(
                                  value: context
                                      .read<CoworkingListReserveBloc>(),
                                  child: EditedReserveCoworkingDialog(
                                    data: data,
                                  ),
                                );
                              },
                            );
                          },
                          icon: Icon(
                            Icons.edit,
                            color: customColors?.primaryTextColor,
                          ),
                          label: Text(
                            'global_data.editeble'.tr(),
                            style: TextStyle(
                              color: customColors?.primaryTextColor,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: FilledButton.icon(
                          style: FilledButton.styleFrom(
                            backgroundColor: customColors?.additionalTwo,
                            textStyle: TextStyle(
                              color: customColors?.primaryTextColor,
                            ),
                          ),
                          onPressed: () async {
                            final dataDeleted = await showDialog<bool>(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text(
                                    'coworing_mobile.Cancel_entry'.tr(),
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  content: Text(
                                    'coworing_mobile.delete_info_text'.tr(),
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text(
                                        'global_data.closed_text'.tr(),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop(true);
                                      },
                                      child: Text('global_data.Cancel'.tr()),
                                    ),
                                  ],
                                );
                              },
                            );
                            final id = data.id;
                            if (dataDeleted == true &&
                                context.mounted &&
                                id != null) {
                              context.read<CoworkingListReserveBloc>().add(
                                CoworkingListReserveEvent.closed(visitId: id),
                              );
                            }
                          },
                          icon: Icon(
                            Icons.delete,
                            color: customColors?.primaryTextColor,
                          ),
                          label: Text(
                            'global_data.Cancel'.tr(),
                            style: TextStyle(
                              color: customColors?.primaryTextColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                : Center(child: Md3CirculeIndicator()),
          ),
        if (data.status == StatusCoworkingReserve.reserve) divider,
        if (data.id != null)
          ListTile(
            key: ValueKey(100),
            leading: Icon(Icons.numbers),
            title: Text('coworing_mobile.Record_number'.tr()),
            subtitle: Text(
              '#${NumberFormat('#,##0', 'ru_RU').format(data.id!.toDouble())}',
            ),
          ),
        if (data.id != null) divider,
        if (data.student?.group != null &&
            data.student?.group?.course?.icon != null &&
            data.student?.group?.course?.color != null)
          ListTile(
            key: ValueKey(1),
            leading: CourseAvatar(
              icon: data.student!.group!.course!.icon!,
              color: HexColor(data.student!.group!.course!.color!),
              size: 24,
              borderRadius: 5,
              padding: 4,
            ),
            title: Text(data.student?.group?.course?.name ?? '- - -'),
            subtitle: Text('#${data.student!.group!.id}'),
            trailing: data.student?.hasPackage == true
                ? Material(
                    color: Colors.transparent,
                    child: PremiumContainer(
                      text: 'transactions_balance.tarif_transaction'.tr(),
                    ),
                  )
                : null,
          ),
        if (data.student?.group != null &&
            data.student?.group?.course?.icon != null &&
            data.student?.group?.course?.color != null)
          divider,
        if (data.currentLessonNumber != null &&
            data.student?.group?.version?.blockLessonCount != null &&
            data.student?.group?.version?.lessonCount != null)
          ListTile(
            key: ValueKey(2),
            leading: Icon(Icons.play_lesson_rounded),
            title: Text('coworing_mobile.In_class'.tr()),
            subtitle: Text(
              sl<LocalData>().blockLesson(
                lesson: data.currentLessonNumber!.toDouble(),
                blockLessonCount: data
                    .student!
                    .group!
                    .version!
                    .blockLessonCount!
                    .toDouble(),
                lessonCount: data.student!.group!.version!.lessonCount!
                    .toDouble(),
              ),
            ),
          ),
        if (data.currentLessonNumber != null &&
            data.student?.group?.version?.blockLessonCount != null &&
            data.student?.group?.version?.lessonCount != null)
          divider,
        if (data.createdAt != null)
          ListTile(
            key: ValueKey(3),
            leading: Icon(Icons.timer_rounded),
            title: Text('coworing_mobile.You_have_signed_up'.tr()),
            subtitle: Text(
              '${sl<LocalData>().getDateString(date: DateTime.parse(data.createdAt!))} | ${DateTime.parse(data.createdAt!).hour.toString().padLeft(2, '0')}:${DateTime.parse(data.createdAt!).minute.toString().padLeft(2, '0')}',
            ),
          ),
        if (data.seat?.cabinet?.branch != null) divider,
        if (data.seat?.cabinet?.branch != null)
          ListTile(
            key: ValueKey(4),
            leading: Icon(Icons.business_rounded),
            title: Text('coworing_mobile.Branch'.tr()),
            subtitle: Text('${data.seat?.cabinet?.branch?.name}'),
            trailing:
                data.seat?.cabinet?.branch?.latitude != null &&
                    data.seat?.cabinet?.branch?.longitude != null
                ? IconButton(
                    onPressed: () async {
                      showBottomSheetMapApps(
                        context,
                        title: data.seat?.cabinet?.branch?.name ?? '- - -',
                        latitude: double.parse(
                          data.seat!.cabinet!.branch!.latitude!,
                        ),
                        longitude: double.parse(
                          data.seat!.cabinet!.branch!.longitude!,
                        ),
                      );
                    },
                    icon: Icon(Icons.location_on),
                  )
                : null,
          ),
        if (data.seat?.cabinet?.branch != null) divider,
        if (data.seat?.cabinet != null)
          ListTile(
            key: ValueKey(5),
            leading: Icon(Icons.meeting_room_rounded),
            title: Text('coworing_mobile.Room'.tr()),
            subtitle: Text('#${data.seat?.cabinet?.name}'),
          ),
        if (data.seat?.cabinet != null) divider,
        if (data.seat?.cabinet?.description != null)
          ListTile(
            key: ValueKey(6),
            leading: Icon(Icons.info_rounded),
            title: Text('coworing_mobile.About_room'.tr()),
            subtitle: Text(data.seat?.cabinet?.description ?? '- - -'),
          ),
        if (data.seat?.cabinet?.description != null) divider,
        if (data.seat != null)
          ListTile(
            key: ValueKey(7),
            leading: Icon(Icons.chair_rounded),
            title: Text('coworing_mobile.seat'),
            subtitle: Text('#${data.seat?.number}'),
          ),
        if (data.seat != null) divider,
        if (data.seat?.type != null)
          ListTile(
            key: ValueKey(8),
            leading: Icon(
              data.seat?.type == 'standard' || data.seat?.type == 'advanced'
                  ? Icons.desktop_windows_outlined
                  : Icons.chair_rounded,
            ),
            title: Text('coworing_mobile.Seat_type'.tr()),
            subtitle: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 2),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  decoration: BoxDecoration(
                    color: customColors?.primaryBg,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    '• ${data.seat?.type == 'standard'
                        ? 'coworing_mobile.Standard_PC'.tr()
                        : data.seat?.type == 'advanced'
                        ? 'coworing_mobile.Advanced_PC'.tr()
                        : 'coworing_mobile.Place_for_laptop'.tr()}',
                  ),
                ),
              ],
            ),
          ),
        if (data.seat != null) divider,
        if (date != null)
          ListTile(
            key: ValueKey(8),
            leading: Icon(Icons.event_rounded),
            title: Text('coworing_mobile.Recording_date'.tr()),
            subtitle: Text(
              sl<LocalData>().getDateString(date: DateTime.parse(date)),
            ),
          ),
        if (date != null) divider,
        if (time != null)
          ListTile(
            key: ValueKey(10),
            leading: Icon(Icons.timelapse_rounded),
            title: Text('coworing_mobile.Recording_time'.tr()),
            subtitle: Text(time),
          ),
        if (time != null) divider,
        ListTile(
          key: ValueKey(11),
          leading: Icon(
            Icons.signal_wifi_statusbar_connected_no_internet_4_rounded,
          ),
          title: Text('coworing_mobile.Record_status'.tr()),
          subtitle: Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                decoration: BoxDecoration(
                  color: statusColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  '• $statusTitle',
                  style: TextStyle(
                    fontSize: 14,
                    color: statusColor?.withAlpha(255),
                  ),
                ),
              ),
            ],
          ),
        ),
        divider,
        ListTile(
          key: ValueKey(12),
          leading: data.noSeatReservation == false
              ? Icon(Icons.check_rounded)
              : Icon(Icons.close_rounded),
          title: Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                decoration: BoxDecoration(
                  color: statusColorReserv,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  '• $statusTitleReserve',
                  style: TextStyle(
                    fontSize: 14,
                    color: statusColorReserv?.withAlpha(255),
                  ),
                ),
              ),
            ],
          ),
        ),
        divider,
        if (arrivalTime != null)
          ListTile(
            key: ValueKey(13),
            leading: Icon(Icons.directions_run_rounded),
            title: Text('coworing_mobile.What_time_did_you_arrive'.tr()),
            subtitle: Text(
              '${DateTime.parse('$date $arrivalTime').hour.toString().padLeft(2, '0')}:${DateTime.parse('$date $arrivalTime').minute.toString().padLeft(2, '0')}:${DateTime.parse('$date $arrivalTime').second.toString().padLeft(2, '0')}',
            ),
          ),
        if (arrivalTime != null) divider,
        if (leavingTime != null)
          ListTile(
            key: ValueKey(14),
            leading: Icon(Icons.directions_walk_rounded),
            title: Text('coworing_mobile.What_time_did_you_leave'.tr()),
            subtitle: Text(
              '${DateTime.parse('$date $leavingTime').hour.toString().padLeft(2, '0')}:${DateTime.parse('$date $leavingTime').minute.toString().padLeft(2, '0')}:${DateTime.parse('$date $leavingTime').second.toString().padLeft(2, '0')}',
            ),
          ),
        if (leavingTime != null) divider,
      ],
    );
  }
}

class EditedReserveCoworkingDialog extends StatefulWidget {
  final CoworkingListReserve data;
  const EditedReserveCoworkingDialog({super.key, required this.data});

  @override
  State<EditedReserveCoworkingDialog> createState() =>
      _EditedReserveCoworkingDialogState();
}

class _EditedReserveCoworkingDialogState
    extends State<EditedReserveCoworkingDialog> {
  late String time;
  late SeatItem seat;

  @override
  void initState() {
    super.initState();
    time = widget.data.reserveTime ?? '';
    seat = SeatItem(
      id: widget.data.seat?.id,
      type: widget.data.seat?.type,
      cabinetId: widget.data.seat?.cabinetId,
      number: widget.data.seat?.number,
      status: widget.data.seat?.status,
    );
  }

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return Dialog(
      insetPadding: EdgeInsets.all(12),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 1,
      child: SingleChildScrollView(
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
                      'global_data.editeble'.tr(),
                      style: GoogleFonts.roboto(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'coworing_mobile.coworking_info_editeble'.tr(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: customColors?.primaryTextColor.withAlpha(200),
                ),
              ),
            ),
            GestureDetector(
              onTap: () async {
                final timeReserve = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                if (timeReserve != null && context.mounted) {
                  if (timeReserve.hour > 9 && timeReserve.hour < 21) {
                    final hour = timeReserve.hour.toString().padLeft(2, '0');
                    final minute = timeReserve.minute.toString().padLeft(
                      2,
                      '0',
                    );
                    setState(() {
                      time = '$hour:$minute:00';
                    });
                  } else {
                    Fluttertoast.showToast(
                      msg:
                          'coworing_mobile.Every_day_wiCoworking_hours_are_from_09:00_to_21:00_Every_day_without_days_offthout_days_off'
                              .tr(),
                    );
                  }
                }
              },
              child: Container(
                color: customColors?.containerColor,
                padding: EdgeInsets.all(10),
                child: ListTile(
                  leading: Icon(Icons.timer_sharp),
                  title: Text('coworing_mobile.Arrival_time'.tr()),
                  subtitle: Text(time),
                ),
              ),
            ),
            Divider(),
            GestureDetector(
              onTap: () async {
                final newSeat = await showDialog<SeatItem>(
                  context: context,
                  builder: (context) {
                    return DialogSeatsSelect(roomId: seat.cabinetId!);
                  },
                );
                if (newSeat != null) {
                  setState(() {
                    seat = newSeat;
                  });
                }
              },
              child: Container(
                color: customColors?.containerColor,
                padding: EdgeInsets.all(10),
                child: ListTile(
                  leading: Icon(
                    seat.type == 'standard' || seat.type == 'advanced'
                        ? Icons.desktop_windows_outlined
                        : Icons.chair,
                  ),
                  title: Text('#${seat.number ?? ''}'),
                  subtitle: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: customColors?.primaryBg,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          '• ${seat.type == 'standard'
                              ? 'coworing_mobile.Standard_PC'.tr()
                              : seat.type == 'advanced'
                              ? 'coworing_mobile.Advanced_PC'.tr()
                              : 'coworing_mobile.Place_for_laptop'.tr()}',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: FilledButton(
                onPressed: () {
                  final id = widget.data.id;
                  final seatId = seat.id;
                  if (id != null && seatId != null) {
                    context.read<CoworkingListReserveBloc>().add(
                      CoworkingListReserveEvent.update(
                        visitId: id,
                        seatId: seatId,
                        reserveTime: time,
                      ),
                    );
                    Navigator.of(context).pop();
                  }
                },
                child: Text('global_data.Save'.tr()),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

Future<void> showBottomSheetMapApps(
  BuildContext context, {
  required String title,
  required double latitude,
  required double longitude,
}) async {
  try {
    final customColors = Theme.of(context).extension<CustomColors>();
    final chosen = await showProBottomSheet<AvailableMap>(
      context: context,
      useSafeArea: false,
      fullScreenMax: 1,

      title: 'global_data.Open_in_the_map'.tr(),
      body: FutureBuilder(
        future: (() => MapLauncher.installedMaps)(),
        builder: (context, asyncSnapshot) {
          if (asyncSnapshot.connectionState != ConnectionState.done) {
            return Row(children: [Md3CirculeIndicator(center: false)]);
          }
          final maps = asyncSnapshot.data;
          if (maps == null) {
            return ErrorLoad();
          }

          return Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsGeometry.only(left: 10),
                  child: Text(
                    'global_data.Open_in_the_map'.tr(),
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                SizedBox(height: 15),
                ...maps.map((m) {
                  final index = maps.indexWhere(
                    (element) => element.mapName == m.mapName,
                  );
                  return ListTileBuilder(
                    isStart: index == 0,
                    isEnd: index == (maps.length - 1),
                    builder: (shape, contentPadding, isThreeLine) {
                      return Padding(
                        padding: EdgeInsetsGeometry.only(bottom: 2),
                        child: ListTile(
                          shape: shape,
                          contentPadding: contentPadding,
                          tileColor: customColors?.containerColor,
                          leading: ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(30),
                            child: SvgPicture.asset(
                              m.icon,
                              height: 28,
                              width: 28,
                            ),
                          ),
                          title: Text(m.mapName),
                          trailing: GoPage(
                            color: customColors?.primaryBg,
                            padding: EdgeInsets.all(8),
                            child: Icon(Icons.open_in_new, size: 16),
                          ),
                          onTap: () => Navigator.of(context).pop(m),
                        ),
                      );
                    },
                  );
                }),
                const SizedBox(height: 8),
              ],
            ),
          );
        },
      ),
    );

    if (chosen == null) return;

    await chosen.showMarker(coords: Coords(latitude, longitude), title: title);
  } catch (_) {}
}
