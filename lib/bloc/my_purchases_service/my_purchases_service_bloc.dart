import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/models/my_purchases_service/my_purchases_service.dart';
import 'package:proweb_student_app/models/response_laze_list.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'my_purchases_service_event.dart';
part 'my_purchases_service_state.dart';
part 'my_purchases_service_bloc.freezed.dart';

class MyPurchasesServiceBloc
    extends Bloc<MyPurchasesServiceEvent, MyPurchasesServiceState> {
  MyPurchasesServiceBloc() : super(_Initial()) {
    on<MyPurchasesServiceEvent>((event, emit) async {
      started(int offset, int limit) async {
        if (offset == 0) {
          emit(MyPurchasesServiceState.load());
        }
        ResponseLazeList<MyPurchasesService> services =
            state.whenOrNull(
              complited: (services, load) {
                return services;
              },
            ) ??
            ResponseLazeList<MyPurchasesService>(count: 0, list: []);
        if (offset != 0) {
          emit(
            MyPurchasesServiceState.complited(services: services, load: true),
          );
        }
        final main = sl<GetResponsesMain>();
        final servicesData = await main.myPurchasesService(offset, limit);
        if (servicesData == null) {
          return emit(
            MyPurchasesServiceState.complited(services: services, load: true),
          );
        }

        if (offset == 0) {
          return emit(
            MyPurchasesServiceState.complited(
              services: servicesData,
              load: false,
            ),
          );
        }

        return emit(
          MyPurchasesServiceState.complited(
            services: ResponseLazeList(
              count: servicesData.count,
              list: [...services.list, ...servicesData.list],
            ),
            load: false,
          ),
        );
      }

      await event.when(started: started);
    });
  }
}
