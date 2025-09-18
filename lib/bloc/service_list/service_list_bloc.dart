import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/api/network/main/post/main.dart';
import 'package:proweb_student_app/models/response_laze_list.dart';
import 'package:proweb_student_app/models/servise_for_sale/servise_for_sale.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'service_list_event.dart';
part 'service_list_state.dart';
part 'service_list_bloc.freezed.dart';

class ServiceListBloc extends Bloc<ServiceListEvent, ServiceListState> {
  ServiceListBloc() : super(_Load()) {
    on<ServiceListEvent>((event, emit) async {
      started(int offset, int limit) async {
        if (offset == 0) {
          emit(ServiceListState.load());
        }
        final main = sl<GetResponsesMain>();
        ResponseLazeList<ServiseForSale> services =
            state.whenOrNull(
              complited: (servicesData, load) {
                return servicesData;
              },
            ) ??
            ResponseLazeList(count: 0, list: []);
        emit(ServiceListState.complited(services: services, load: true));
        final response = await main.forSaleService(offset, limit);

        if (services.list.isEmpty) {
          services = response ?? services;
        } else {
          services.list.addAll((response ?? services).list);
        }

        return emit(
          ServiceListState.complited(services: services, load: false),
        );
      }

      buy(int serviceId, int studentId) async {
        final main = sl<PostResponsesMain>();
        final form = FormData.fromMap({
          "student_id": studentId,
          "service_id": serviceId,
        });
        ResponseLazeList<ServiseForSale> services =
            state.whenOrNull(
              complited: (servicesData, load) {
                return servicesData;
              },
            ) ??
            ResponseLazeList(count: 0, list: []);
        emit(ServiceListState.load());
        await main.buyService(form);

        return emit(
          ServiceListState.complited(services: services, load: false),
        );
      }

      await event.when(started: started, buy: buy);
    });
  }
}
