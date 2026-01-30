import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/models/offer_path_data/offer_path_data.dart';
import 'package:proweb_student_app/models/response_model/response_model.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'offer_path_event.dart';
part 'offer_path_state.dart';
part 'offer_path_bloc.freezed.dart';

class OfferPathBloc extends Bloc<OfferPathEvent, OfferPathState> {
  OfferPathBloc() : super(OfferPathInitial()) {
    on<OfferPathEvent>((event, emit) async {
      started() async {
        emit(OfferPathState.load());
        final dio = sl<Dio>();
        final response = await dio.get('https://proweb.uz/api/offerpath/');
        Map<String, dynamic>? dataResponse = response.data;
        if (dataResponse == null) return null;
        if (dataResponse['data'] == null) return null;
        dataResponse = {'data': dataResponse['data']};
        final responseD = ApiResponse.fromJson(
          dataResponse,
          (p0) => OfferPathData.fromJson(p0 as Map<String, dynamic>),
        );
        final data = responseD.whenOrNull(results: (results) => results);
        if (data == null) return;
        emit(OfferPathState.complited(offer: data));
      }

      await event.when(started: started);
    });
  }
}
