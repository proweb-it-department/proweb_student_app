import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/repositories/video_product_repositiories/video_product_repositiories.dart';
import 'package:proweb_student_app/models/db/db.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:talker_logger/talker_logger.dart';

part 'downloads_exclusive_product_video_event.dart';
part 'downloads_exclusive_product_video_state.dart';
part 'downloads_exclusive_product_video_bloc.freezed.dart';

class DownloadsExclusiveProductVideoBloc
    extends
        Bloc<
          DownloadsExclusiveProductVideoEvent,
          DownloadsExclusiveProductVideoState
        > {
  DownloadsExclusiveProductVideoBloc() : super(_Load()) {
    on<DownloadsExclusiveProductVideoEvent>((event, emit) async {
      started() async {
        emit(DownloadsExclusiveProductVideoState.load());
        try {
          final repository = sl<VideoProductRepositiories>();
          final products = await repository.selectAllproducts();
          if (products.isEmpty) {
            return emit(DownloadsExclusiveProductVideoState.notFound());
          }
          return emit(
            DownloadsExclusiveProductVideoState.complited(products: products),
          );
        } catch (e) {
          TalkerLogger().error(e);
          return emit(DownloadsExclusiveProductVideoState.error());
        }
      }

      await event.when(started: started);
    });
  }
}
