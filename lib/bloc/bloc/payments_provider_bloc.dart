import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/models/payments_provider/payments_provider.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'payments_provider_event.dart';
part 'payments_provider_state.dart';
part 'payments_provider_bloc.freezed.dart';

class PaymentsProviderBloc
    extends Bloc<PaymentsProviderEvent, PaymentsProviderState> {
  PaymentsProviderBloc() : super(PaymentsProviderInitial()) {
    on<PaymentsProviderEvent>((event, emit) async {
      started() async {
        emit(PaymentsProviderState.load());
        final main = sl<GetResponsesMain>();
        final response = await main.paymentsProvider();
        if (response == null) {
          emit(PaymentsProviderState.complited(providers: []));
          return;
        }
        emit(PaymentsProviderState.complited(providers: response));
        return;
      }

      await event.when(started: started);
    });
  }
}
