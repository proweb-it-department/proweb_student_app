import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/models/my_purchases_tarif/my_purchases_tarif.dart';
import 'package:proweb_student_app/models/response_laze_list.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'my_purchases_tarif_event.dart';
part 'my_purchases_tarif_state.dart';
part 'my_purchases_tarif_bloc.freezed.dart';

class MyPurchasesTarifBloc
    extends Bloc<MyPurchasesTarifEvent, MyPurchasesTarifState> {
  MyPurchasesTarifBloc() : super(_Initial()) {
    on<MyPurchasesTarifEvent>((event, emit) async {
      started(int offset, int limit) async {
        if (offset == 0) {
          emit(MyPurchasesTarifState.load());
        }

        ResponseLazeList<MyPurchasesTarif> tarifs =
            state.whenOrNull(
              complited: (purchases, load) {
                return purchases;
              },
            ) ??
            ResponseLazeList<MyPurchasesTarif>(count: 0, list: []);
        emit(MyPurchasesTarifState.complited(purchases: tarifs, load: true));
        final main = sl<GetResponsesMain>();
        final tarifsData = await main.myPurchasesTarif(offset, limit);
        if (tarifsData == null) {
          return emit(
            MyPurchasesTarifState.complited(purchases: tarifs, load: false),
          );
        }

        if (offset == 0) {
          return emit(
            MyPurchasesTarifState.complited(purchases: tarifsData, load: false),
          );
        }
        tarifs.list.addAll(tarifsData.list);
        return emit(
          MyPurchasesTarifState.complited(
            purchases: ResponseLazeList(
              count: tarifsData.count,
              list: tarifs.list,
            ),
            load: false,
          ),
        );
      }

      await event.when(started: started);
    });
  }
}
