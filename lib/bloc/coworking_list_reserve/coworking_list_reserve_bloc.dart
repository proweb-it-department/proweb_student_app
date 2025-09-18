import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/api/network/main/post/main.dart';
import 'package:proweb_student_app/models/coworking_list_reserve/coworking_list_reserve.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'coworking_list_reserve_event.dart';
part 'coworking_list_reserve_state.dart';
part 'coworking_list_reserve_bloc.freezed.dart';

class CoworkingListReserveBloc
    extends Bloc<CoworkingListReserveEvent, CoworkingListReserveState> {
  CoworkingListReserveBloc() : super(_Initial()) {
    on<CoworkingListReserveEvent>((event, emit) async {
      started(int offset) async {
        if (offset == 0) {
          emit(CoworkingListReserveState.initial());
        }
        final currentList = state.whenOrNull(
          list: (count, list, reservate) => list,
        );
        final main = sl<GetResponsesMain>();
        final results = await main.coworkingList(limit: 30, offset: offset);
        if (results != null) {
          if (currentList != null && offset > 0) {
            return emit(
              CoworkingListReserveState.list(
                count: results.count,
                list: [...currentList, ...results.list],
                reservate: false,
              ),
            );
          } else {
            return emit(
              CoworkingListReserveState.list(
                count: results.count,
                list: [...results.list],
                reservate: false,
              ),
            );
          }
        }
      }

      reserve(int seatId, String date, String reserveTime, int groupId) async {
        final currentList = state.whenOrNull(
          list: (count, list, reservate) => list,
        );
        final currentCount = state.whenOrNull(
          list: (count, list, reservate) => count,
        );
        if (currentCount == null) return;
        if (currentList == null) return;
        emit(
          CoworkingListReserveState.list(
            count: currentCount,
            list: [...currentList],
            reservate: true,
          ),
        );
        final form = FormData.fromMap({
          "group_id": groupId,
          "seat_id": seatId,
          "date": date.split('.').reversed.join('-'),
          "reserve_time": reserveTime,
        });
        final main = sl<PostResponsesMain>();
        final response = await main.reserveCoworking(form);
        if (response == null) {
          Fluttertoast.showToast(
            msg: 'coworing_mobile.error_coworking_reserve'.tr(),
          );
          return emit(
            CoworkingListReserveState.list(
              count: currentCount,
              list: [...currentList],
              reservate: false,
            ),
          );
        }
        return emit(
          CoworkingListReserveState.list(
            count: currentCount,
            list: [response, ...currentList],
            reservate: false,
          ),
        );
      }

      update(int visitId, int seatId, String reserveTime) async {
        final currentList = state.whenOrNull(
          list: (count, list, reservate) => list,
        );
        final currentCount = state.whenOrNull(
          list: (count, list, reservate) => count,
        );
        if (currentCount == null) return;
        if (currentList == null) return;
        emit(
          CoworkingListReserveState.list(
            count: currentCount,
            list: [...currentList],
            reservate: true,
          ),
        );
        final form = FormData.fromMap({
          "visit_id": visitId,
          "seat_id": seatId,
          "reserve_time": reserveTime,
        });
        final main = sl<PostResponsesMain>();
        final response = await main.updateCoworking(form);
        if (response == null) {
          return emit(
            CoworkingListReserveState.list(
              count: currentCount,
              list: [...currentList],
              reservate: false,
            ),
          );
        }

        final reservations = [...currentList].map((e) {
          if (response.id != null && e.id == response.id) {
            return response;
          }

          return e;
        }).toList();

        return emit(
          CoworkingListReserveState.list(
            count: currentCount,
            list: [...reservations],
            reservate: false,
          ),
        );
      }

      closed(int visitId) async {
        final currentList = state.whenOrNull(
          list: (count, list, reservate) => list,
        );
        final currentCount = state.whenOrNull(
          list: (count, list, reservate) => count,
        );
        if (currentCount == null) return;
        if (currentList == null) return;
        emit(
          CoworkingListReserveState.list(
            count: currentCount,
            list: [...currentList],
            reservate: true,
          ),
        );
        final form = FormData.fromMap({
          "visit_id": visitId,
          "status": 'not_come',
        });
        final main = sl<PostResponsesMain>();
        final response = await main.updateCoworking(form);
        if (response == null) {
          return emit(
            CoworkingListReserveState.list(
              count: currentCount,
              list: [...currentList],
              reservate: false,
            ),
          );
        }

        final reservations = [...currentList].map((e) {
          if (response.id != null && e.id == response.id) {
            return response;
          }

          return e;
        }).toList();

        return emit(
          CoworkingListReserveState.list(
            count: currentCount,
            list: [...reservations],
            reservate: false,
          ),
        );
      }

      updateWs(CoworkingListReserve visite) async {
        final currentList = state.whenOrNull(
          list: (count, list, reservate) => list,
        );
        final currentCount = state.whenOrNull(
          list: (count, list, reservate) => count,
        );
        if (currentCount == null) return;
        if (currentList == null) return;
        final reservations = [...currentList].map((e) {
          if (visite.id != null && e.id == visite.id) {
            return visite;
          }

          return e;
        }).toList();

        return emit(
          CoworkingListReserveState.list(
            count: currentCount,
            list: [...reservations],
            reservate: false,
          ),
        );
      }

      await event.when(
        started: started,
        reserve: reserve,
        update: update,
        closed: closed,
        updateWS: updateWs,
      );
    });
  }
}
