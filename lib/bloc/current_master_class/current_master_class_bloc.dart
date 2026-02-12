import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/api/network/video/get/video.dart';
import 'package:proweb_student_app/models/master_class/master_class.dart';
import 'package:proweb_student_app/models/my_reserv_master_class/my_reserv_master_class.dart';
import 'package:proweb_student_app/models/video_model/video_model.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'current_master_class_event.dart';
part 'current_master_class_state.dart';
part 'current_master_class_bloc.freezed.dart';

class CurrentMasterClassBloc
    extends Bloc<CurrentMasterClassEvent, CurrentMasterClassState> {
  CurrentMasterClassBloc() : super(CurrentMasterClassInitial()) {
    on<CurrentMasterClassEvent>((event, emit) async {
      started(int id) async {
        emit(CurrentMasterClassState.initial());
        final main = sl<GetResponsesMain>();
        final masterClass = await main.currentMasterClass(id);
        if (masterClass == null) {
          emit(CurrentMasterClassState.error());
          return;
        }
        final reserv = await main.myRecervMasterClass(id);
        final slug = masterClass.videoKey;
        VideoModel? video;
        if (slug != null) {
          final videoResponse = await sl<GetResponsesVideo>().videos(
            slags: [slug],
          );
          video = videoResponse.firstOrNull;
        }
        emit(
          CurrentMasterClassState.complited(
            masterClass: masterClass,
            reserv: reserv,
            video: video,
          ),
        );
      }

      await switch (event) {
        _Started(id: final id) => started(id),
      };
    });
  }
}
