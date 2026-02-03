import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/api/network/main/post/main.dart';
import 'package:proweb_student_app/models/payments_provider/payments_provider.dart';
import 'package:proweb_student_app/models/telegram_connect_url/telegram_connect_url.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'payments_provider_event.dart';
part 'payments_provider_state.dart';
part 'payments_provider_bloc.freezed.dart';

class PaymentsProviderBloc
    extends Bloc<PaymentsProviderEvent, PaymentsProviderState> {
  PaymentsProviderBloc() : super(PaymentsProviderInitial()) {
    on<PaymentsProviderEvent>((event, emit) async {
      started() async {
        final providers = state.whenOrNull(
          complited: (providers, url) => providers,
        );
        if (providers != null) {
          emit(PaymentsProviderState.complited(providers: providers));
          return;
        }
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

      generateURL(FormData form) async {
        final providers = state.when(
          initial: () => null,
          load: () => null,
          complited: (providers, _) => providers,
        );
        if (providers == null) return;
        final main = sl<PostResponsesMain>();
        final response = await main.generateUrl(form);
        if (response == null) {
          emit(PaymentsProviderState.complited(providers: providers));
          return;
        }
        emit(
          PaymentsProviderState.complited(providers: providers, url: response),
        );
      }

      clearUrl() {
        final providers = state.when(
          initial: () => null,
          load: () => null,
          complited: (providers, _) => providers,
        );
        if (providers == null) return;
        emit(PaymentsProviderState.complited(providers: providers));
      }

      await event.when(
        started: started,
        generateURL: generateURL,
        clearUrl: clearUrl,
      );
    });
  }
}
