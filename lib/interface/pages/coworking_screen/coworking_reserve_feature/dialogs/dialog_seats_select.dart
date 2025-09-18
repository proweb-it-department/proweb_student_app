import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proweb_student_app/bloc/room_seat/room_seat_bloc.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/models/seat_item/seat_item.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class DialogSeatsSelect extends StatefulWidget {
  final int roomId;
  const DialogSeatsSelect({super.key, required this.roomId});

  @override
  State<DialogSeatsSelect> createState() => _DialogSeatsSelectState();
}

class _DialogSeatsSelectState extends State<DialogSeatsSelect> {
  SeatItem? _seat;

  void setSeat(SeatItem seat) {
    setState(() {
      _seat = seat;
    });
  }

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return BlocProvider(
      create: (context) =>
          RoomSeatBloc()..add(RoomSeatEvent.started(cabinetId: widget.roomId)),
      child: Dialog(
        insetPadding: EdgeInsets.all(12),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 1,
        child: BlocBuilder<RoomSeatBloc, RoomSeatState>(
          builder: (context, state) {
            return SingleChildScrollView(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                spacing: 10,
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
                            'coworing_mobile.Seating'.tr(),
                            style: GoogleFonts.roboto(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ...state.when(
                    initial: () {
                      return [Center(child: CircularProgressIndicator())];
                    },
                    load: () {
                      return [Center(child: CircularProgressIndicator())];
                    },
                    error: () {
                      return [
                        ErrorLoad(
                          action: FilledButton(
                            onPressed: () {
                              final bloc = context.read<RoomSeatBloc>();
                              bloc.add(
                                RoomSeatEvent.started(cabinetId: widget.roomId),
                              );
                            },
                            child: Text('global_data.try_again'.tr()),
                          ),
                        ),
                      ];
                    },
                    complited: (seats) {
                      final newSeat = [...seats];
                      newSeat.sort((a, b) {
                        return (a.number ?? 0) - (b.number ?? 0);
                      });
                      return newSeat.map((seat) {
                        return GestureDetector(
                          onTap: () {
                            setSeat(seat);
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                color: customColors?.containerColor,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color:
                                      customColors?.borderColor ??
                                      Colors.transparent,
                                ),
                              ),
                              child: ListTile(
                                leading: Icon(
                                  seat.type == 'standard' ||
                                          seat.type == 'advanced'
                                      ? Icons.desktop_windows_outlined
                                      : Icons.chair,
                                ),
                                title: Text('#${seat.number}'),
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
                                trailing: Checkbox(
                                  value: _seat?.id == seat.id,
                                  onChanged: null,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList();
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: FilledButton(
                      style: FilledButton.styleFrom(
                        disabledBackgroundColor: customColors?.additionalTwo,
                      ),
                      onPressed: _seat != null
                          ? () {
                              Navigator.of(context).pop(_seat);
                            }
                          : null,
                      child: Text(
                        'global_data.Choose'.tr(),
                        style: TextStyle(
                          color: _seat != null
                              ? customColors?.primaryTextColor
                              : customColors?.additionalThree,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
