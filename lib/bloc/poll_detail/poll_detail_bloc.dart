import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/api/network/main/post/main.dart';
import 'package:proweb_student_app/models/poll_detail/poll_detail.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'poll_detail_event.dart';
part 'poll_detail_state.dart';
part 'poll_detail_bloc.freezed.dart';

class PollDetailBloc extends Bloc<PollDetailEvent, PollDetailState> {
  PollDetailBloc() : super(PollDetailInitial()) {
    on<PollDetailEvent>((event, emit) async {
      started(int id) async {
        emit(PollDetailState.initial());
        final main = sl<GetResponsesMain>();
        final response = await main.pollDetail(pollId: id);
        if (response == null) {
          return emit(PollDetailState.error());
        }
        final List<Questions> questions =
            [...(response.questions ?? const <Questions>[])].map((e) {
              final List<Answers> answers = [
                ...(e.answers ?? const <Answers>[]),
              ];
              answers.sort((a, b) {
                return (a.start ?? 0) - (b.start ?? 0);
              });
              final question = e.copyWith(answers: answers);
              return question;
            }).toList();
        questions.sort((a, b) {
          final aPosition = (a.position ?? 0);
          final bPosition = (b.position ?? 0);
          return aPosition - bPosition;
        });
        final poll = response.copyWith(questions: questions);
        emit(PollDetailState.complited(poll: poll));
      }

      send(String form) async {
        emit(PollDetailState.sender(send: false));
        final main = sl<PostResponsesMain>();
        await main.sendPollAnswer(form);
        emit(PollDetailState.sender(send: true));
      }

      await event.when(started: started, send: send);
    });
  }
}
