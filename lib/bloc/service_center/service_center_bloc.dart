import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/models/response_laze_list.dart';
import 'package:proweb_student_app/models/service_center/service_center.dart';

part 'service_center_event.dart';
part 'service_center_state.dart';
part 'service_center_bloc.freezed.dart';

class ServiceCenterBloc extends Bloc<ServiceCenterEvent, ServiceCenterState> {
  ServiceCenterBloc() : super(ServiceCenterInitial()) {
    on<ServiceCenterEvent>((event, emit) async {
      started(int offset) async {}
      await switch (event) {
        _Started(offset: final int offset) => started(offset),
      };
    });
  }
}
