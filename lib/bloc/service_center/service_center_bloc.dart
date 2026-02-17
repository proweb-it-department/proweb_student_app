import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/models/service_center/service_center.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'service_center_event.dart';
part 'service_center_state.dart';
part 'service_center_bloc.freezed.dart';

class ServiceCenterBloc extends Bloc<ServiceCenterEvent, ServiceCenterState> {
  ServiceCenterBloc() : super(ServiceCenterInitial()) {
    on<ServiceCenterEvent>((event, emit) async {
      started(int offset) async {
        emit(ServiceCenterState.initial());
        final main = sl<GetResponsesMain>();
        final response = await main.serviceCenter(0);
        if (response == null) {
          emit(ServiceCenterState.error());
          return;
        }
        if (response.count == 0 || response.list.isEmpty) {
          emit(ServiceCenterState.notFound());
          return;
        }

        final listServiceCenter = [...response.list];

        emit(ServiceCenterState.complited(list: listServiceCenter));
        return;
      }

      await switch (event) {
        _Started(offset: final int offset) => started(offset),
      };
    });
  }
}
