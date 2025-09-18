import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/models/response_laze_list.dart';
import 'package:proweb_student_app/models/tarif_model/tarif_model.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'tarif_for_sale_event.dart';
part 'tarif_for_sale_state.dart';
part 'tarif_for_sale_bloc.freezed.dart';

class TarifForSaleBloc extends Bloc<TarifForSaleEvent, TarifForSaleState> {
  TarifForSaleBloc() : super(_Load()) {
    on<TarifForSaleEvent>((event, emit) async {
      started(int offset, int limit) async {
        if (offset == 0) {
          emit(TarifForSaleState.load());
        }
        ResponseLazeList<TarifForSale> tarifsState =
            state.whenOrNull(
              complited: (tarifs, load) {
                return tarifs;
              },
            ) ??
            ResponseLazeList(count: 0, list: []);
        emit(TarifForSaleState.complited(tarifs: tarifsState, load: true));
        final main = sl<GetResponsesMain>();
        final response = await main.forSaleTarif(offset, limit);
        if (response == null) {
          return emit(
            TarifForSaleState.complited(tarifs: tarifsState, load: false),
          );
        }
        if (tarifsState.list.isEmpty) {
          tarifsState = response;
        } else {
          tarifsState.list.addAll(response.list);
        }
        return emit(
          TarifForSaleState.complited(tarifs: tarifsState, load: false),
        );
      }

      await event.when(started: started);
    });
  }
}
