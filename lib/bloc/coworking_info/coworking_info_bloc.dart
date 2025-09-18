import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/models/coworking_info/coworking_info.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'coworking_info_event.dart';
part 'coworking_info_state.dart';
part 'coworking_info_bloc.freezed.dart';

class CoworkingInfoBloc extends Bloc<CoworkingInfoEvent, CoworkingInfoState> {
  CoworkingInfoBloc() : super(_Initial()) {
    on<CoworkingInfoEvent>((event, emit) async {
      started(String languageCode) async {
        emit(CoworkingInfoState.load());
        final main = sl<GetResponsesMain>();
        final response = await main.coworkingInfo(langaugeCode: languageCode);
        if (response == null) return emit(CoworkingInfoState.error());
        return emit(CoworkingInfoState.complited(info: response));
      }

      await event.when(started: started);
    });
  }
}
