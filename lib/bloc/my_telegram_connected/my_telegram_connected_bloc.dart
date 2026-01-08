import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/chat/get/chat.dart';
import 'package:proweb_student_app/models/telegram_user/telegram_user.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'my_telegram_connected_event.dart';
part 'my_telegram_connected_state.dart';
part 'my_telegram_connected_bloc.freezed.dart';

class MyTelegramConnectedBloc
    extends Bloc<MyTelegramConnectedEvent, MyTelegramConnectedState> {
  MyTelegramConnectedBloc() : super(MyTelegramConnectedInitial()) {
    on<MyTelegramConnectedEvent>((event, emit) async {
      started() async {
        emit(MyTelegramConnectedState.load());
        final chat = sl<GetResponsesChat>();
        final response = await chat.myTgAccount();
        if (response == null) return emit(MyTelegramConnectedState.initial());
        emit(
          MyTelegramConnectedState.complited(
            tgUserList: response.where((a) {
              return a.status == 'active';
            }).toList(),
          ),
        );
      }

      await event.when(started: started);
    });
  }
}
