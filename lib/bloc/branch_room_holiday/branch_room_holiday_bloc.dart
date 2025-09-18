import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/models/branche/branche.dart';
import 'package:proweb_student_app/models/holiday/holiday.dart';
import 'package:proweb_student_app/models/room/room.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'branch_room_holiday_event.dart';
part 'branch_room_holiday_state.dart';
part 'branch_room_holiday_bloc.freezed.dart';

class BranchRoomHolidayBloc
    extends Bloc<BranchRoomHolidayEvent, BranchRoomHolidayState> {
  BranchRoomHolidayBloc() : super(_Initial()) {
    on<BranchRoomHolidayEvent>((event, emit) async {
      started() async {
        final branch = state.whenOrNull(
          complited: (branch, room, holiday) => branch,
        );
        final room = state.whenOrNull(
          complited: (branch, room, holiday) => room,
        );
        final holiday = state.whenOrNull(
          complited: (branch, room, holiday) => holiday,
        );
        bool branchBool = branch != null && branch.isNotEmpty;
        bool roomBool = room != null && room.isNotEmpty;
        bool holidayBool = holiday != null && holiday.isNotEmpty;

        if (branchBool && roomBool && holidayBool) {
          return emit(
            BranchRoomHolidayState.complited(
              branch: branch,
              room: room,
              holiday: holiday,
            ),
          );
        }

        emit(BranchRoomHolidayState.load());
        final main = sl<GetResponsesMain>();
        List<Branche> branchesList = [];
        List<Room> roomsList = [];
        List<Holiday> holidaysList = [];
        final branches = await main.branch();
        if (branches != null) {
          branchesList = [...branches];
          for (var element in branchesList) {
            final idBranch = element.id;
            if (idBranch == null) continue;
            final rooms = await main.room(branchId: idBranch);
            if (rooms == null) continue;
            roomsList = [...roomsList, ...rooms];
          }
        }
        final holidays = await main.holidays();
        if (holidays != null) {
          holidaysList = [...holidays];
        }

        return emit(
          BranchRoomHolidayState.complited(
            branch: [...branchesList],
            room: [...roomsList],
            holiday: [...holidaysList],
          ),
        );
      }

      await event.when(started: started);
    });
  }
}
