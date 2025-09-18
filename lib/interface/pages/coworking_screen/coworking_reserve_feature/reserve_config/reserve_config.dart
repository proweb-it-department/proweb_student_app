import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/bloc/branch_room_holiday/branch_room_holiday_bloc.dart';
import 'package:proweb_student_app/interface/pages/coworking_screen/coworking_reserve_feature/provider/coworking_provider.dart';
import 'package:proweb_student_app/interface/pages/coworking_screen/coworking_reserve_feature/reserve_config/components/branch_room_reserve.dart';
import 'package:proweb_student_app/interface/pages/coworking_screen/coworking_reserve_feature/reserve_config/components/date_reserve.dart';
import 'package:proweb_student_app/interface/pages/coworking_screen/coworking_reserve_feature/reserve_config/components/group_reserve.dart';
import 'package:proweb_student_app/interface/pages/coworking_screen/coworking_reserve_feature/reserve_config/components/seat_reserve.dart';
import 'package:proweb_student_app/interface/pages/coworking_screen/coworking_reserve_feature/reserve_config/components/time_reserve.dart';
import 'package:proweb_student_app/interface/pages/coworking_screen/coworking_reserve_feature/reserve_config/components/title_reserve.dart';
import 'package:proweb_student_app/interface/pages/coworking_screen/coworking_reserve_screen.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

class ReserveConfig extends StatelessWidget {
  const ReserveConfig({super.key});

  @override
  Widget build(BuildContext context) {
    final sized = SizedBox(height: 10);
    final space = [sized, Divider(height: 1), sized];
    final localData = sl<LocalData>();
    return BlocBuilder<BranchRoomHolidayBloc, BranchRoomHolidayState>(
      bloc: context.read<BranchRoomHolidayBloc>()
        ..add(BranchRoomHolidayEvent.started()),
      builder: (context, state) {
        return state.when(
          initial: () {
            return Center(child: CircularProgressIndicator());
          },
          load: () {
            return Center(child: CircularProgressIndicator());
          },
          complited: (branch, room, holiday) {
            final double currentTime = localData.getTime();
            final dateTime = DateTime.fromMillisecondsSinceEpoch(
              currentTime.toInt(),
            );
            final provide = context.watch<CoworkingProvider>();
            List<DayModelCoworking> dates = _generateWeekDates(dateTime).map((
              e,
            ) {
              final String date = e['date'];
              bool current = e['current'];
              for (var element in holiday) {
                final dateHoli = element.date;
                if (dateHoli == null) continue;
                if (element.isActive == false) continue;
                if (element.type == 'fixed') {
                  final dateParse = DateTime.parse(dateHoli);
                  final dateParseDay = DateTime.parse(
                    date.split('.').reversed.join('-'),
                  );
                  if (dateParse.day == dateParseDay.day &&
                      dateParse.month == dateParseDay.month) {
                    current = false;
                  }
                } else if (element.type == 'float') {
                  final dateParse = DateTime.parse(dateHoli);
                  final dateParseDay = DateTime.parse(
                    date.split('.').reversed.join('-'),
                  );
                  if (dateParse.day == dateParseDay.day &&
                      dateParse.month == dateParseDay.month &&
                      dateParse.year == dateParseDay.year) {
                    current = false;
                  }
                }
              }
              return DayModelCoworking(date: date, isActive: current);
            }).toList();
            return ListView(
              children: [
                TitleReserve(title: 'coworing_mobile.Select_a_branch'.tr()),
                BranchRoomReserve(branch: branch, room: room),
                ...space,
                TitleReserve(
                  title: 'coworing_mobile.Arrival_date'.tr(),
                  trail: localData.getDateString(
                    date: DateTime.parse(
                      provide.date.split('.').reversed.join('-'),
                    ),
                  ),
                ),
                sized,
                DateReserve(dates: dates),
                ...space,
                TitleReserve(title: 'coworing_mobile.Select_group'.tr()),
                sized,
                GroupReserve(),
                ...space,
                TitleReserve(title: 'coworing_mobile.Arrival_time'.tr()),
                sized,
                TimeReserve(),
                ...space,
                TitleReserve(title: 'coworing_mobile.seat'.tr()),
                sized,
                SeatReserve(),
              ],
            );
          },
        );
      },
    );
  }

  List<Map<String, dynamic>> _generateWeekDates(DateTime baseDate) {
    return List.generate(7, (index) {
      DateTime date = baseDate.add(Duration(days: index - 2));
      return {
        'date':
            '${date.day.toString().padLeft(2, '0')}.${date.month.toString().padLeft(2, '0')}.${date.year}',
        'current': index >= 2 && index <= 4,
      };
    });
  }
}
