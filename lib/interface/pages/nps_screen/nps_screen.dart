import 'dart:convert';

import 'package:auto_route/annotations.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:proweb_student_app/bloc/poll_detail/poll_detail_bloc.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/models/poll_answer/poll_answer.dart';
import 'package:proweb_student_app/models/poll_detail/poll_detail.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class NpsScreen extends StatelessWidget {
  final int relationId;
  final int npsId;
  const NpsScreen({
    super.key,
    @PathParam('relation_id') required this.relationId,
    @PathParam('nps_id') required this.npsId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final bloc = PollDetailBloc();
        bloc.add(PollDetailEvent.started(id: npsId));
        return bloc;
      },
      child: AnnotatedRegion(
        value: FlexColorScheme.themedSystemNavigationBar(
          context,
          systemNavBarStyle: FlexSystemNavBarStyle.transparent,
        ),
        child: Scaffold(
          appBar: AppBar(title: Text('Прохождения опроса')),
          body: NpsBody(relationId: relationId),
        ),
      ),
    );
  }
}

class NpsBody extends StatelessWidget {
  final int relationId;
  const NpsBody({super.key, required this.relationId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PollDetailBloc, PollDetailState>(
      builder: (context, state) {
        return switch (state) {
          PollDetailInitial() => Md3CirculeIndicator(),
          PollDetailError() => ErrorLoad(),
          PollDetailComplited(poll: final poll) => PollDetailWidget(
            poll: poll,
            relationId: relationId,
          ),
          PollDetailSender(send: final send) => PollDetailSend(send: send),
        };
      },
    );
  }
}

class PollDetailSend extends StatelessWidget {
  final bool send;
  const PollDetailSend({super.key, required this.send});

  @override
  Widget build(BuildContext context) {
    return switch (send) {
      true => Center(
        child: NoData(
          text: 'Спасибо что прошли опрос.',
          icon: Icons.celebration,
        ),
      ),
      false => Md3CirculeIndicator(),
    };
  }
}

class PollDetailWidget extends StatelessWidget {
  final PollDetail poll;
  final int relationId;
  const PollDetailWidget({
    super.key,
    required this.poll,
    required this.relationId,
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final bottom = MediaQuery.of(context).viewPadding.bottom;
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.only(
        topLeft: Radius.circular(22),
        topRight: Radius.circular(22),
      ),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: customColors?.containerColor,
          borderRadius: BorderRadiusGeometry.only(
            topLeft: Radius.circular(22),
            topRight: Radius.circular(22),
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
            top: 10,
            right: 10,
            left: 10,
            bottom: bottom + 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Lottie.asset(
                  'assets/lottie/poll2.json',
                  width: 150,
                  height: 150,
                  animate: true,
                  repeat: true,
                ),
              ),
              SizedBox(height: 10),
              Text(
                poll.name ?? '',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: customColors?.primaryTextColor,
                ),
              ),

              if (poll.shortDescription != null) ...{
                SizedBox(height: 10),
                Text(
                  poll.shortDescription!,
                  style: TextStyle(
                    fontSize: 18,
                    color: customColors?.primaryTextColor,
                  ),
                ),
              },
              SizedBox(height: 10),
              PollDetailQuestions(
                questions: poll.questions ?? [],
                relationId: relationId,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PollDetailQuestions extends StatefulWidget {
  final List<Questions> questions;
  final int relationId;
  const PollDetailQuestions({
    super.key,
    required this.questions,
    required this.relationId,
  });

  @override
  State<PollDetailQuestions> createState() => _PollDetailQuestionsState();
}

class _PollDetailQuestionsState extends State<PollDetailQuestions> {
  late PollAnswer pollAnswer;
  bool isDisabled = true;

  @override
  void initState() {
    super.initState();
    final List<QuestionAnswers> questions = [];
    for (var element in widget.questions) {
      final id = element.id;
      if (id == null) continue;
      questions.add(QuestionAnswers(pollQuestionId: id));
    }
    setState(() {
      pollAnswer = PollAnswer(
        studentPollId: widget.relationId,
        answers: questions,
      );
    });
  }

  void hasDisbledState() {
    for (var element in pollAnswer.answers) {
      final range = element.answerRange;
      final text = element.answerText;
      if (range == null && text == null) {
        setState(() {
          isDisabled = true;
        });
        return;
      } else {
        if (range == null && text != null) {
          if (text.isEmpty) {
            setState(() {
              isDisabled = true;
            });
            return;
          }
        }
      }
    }
    setState(() {
      isDisabled = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return Column(
      spacing: 2,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ...(pollAnswer.answers.map((QuestionAnswers e) {
          final question = widget.questions.firstWhere(
            (element) => element.id == e.pollQuestionId,
          );
          final length = pollAnswer.answers.length - 1;
          final index = pollAnswer.answers.indexWhere((element) {
            return element.pollQuestionId == e.pollQuestionId;
          });
          final isStart = index == 0;
          final isEnd = index == length;
          if (question.type == NpsPollQuestionsType.range) {
            return PollQuestionRange(
              questionState: e,
              question: question,
              onSet: (answer) {
                setState(() {
                  pollAnswer = pollAnswer.copyWith(
                    answers: pollAnswer.answers.map((e) {
                      if (e.pollQuestionId != answer.pollQuestionId) return e;
                      return answer;
                    }).toList(),
                  );
                });
                hasDisbledState();
              },
              isStart: isStart,
              isEnd: isEnd,
            );
          }

          return PollQuestionText(
            questionState: e,
            question: question,
            onSet: (answer) {
              setState(() {
                pollAnswer = pollAnswer.copyWith(
                  answers: pollAnswer.answers.map((e) {
                    if (e.pollQuestionId != answer.pollQuestionId) return e;
                    return answer;
                  }).toList(),
                );
              });
              hasDisbledState();
            },
            isStart: isStart,
            isEnd: isEnd,
          );
        }).toList()),
        SizedBox(height: 5),
        FilledButton.icon(
          onPressed: isDisabled
              ? null
              : () {
                  final json = jsonEncode(pollAnswer.toJson());
                  final bloc = context.read<PollDetailBloc>();
                  bloc.add(PollDetailEvent.send(form: json));
                },
          style: FilledButton.styleFrom(
            backgroundColor: customColors?.primaryBg,
            disabledBackgroundColor: customColors?.primaryBg.withAlpha(100),
            textStyle: TextStyle(
              color: customColors?.primaryTextColor.withAlpha(
                isDisabled ? 150 : 255,
              ),
            ),
          ),
          iconAlignment: IconAlignment.end,
          icon: Icon(
            Icons.send,
            color: customColors?.primaryTextColor.withAlpha(
              isDisabled ? 150 : 255,
            ),
          ),
          label: Text(
            'Отправить ответы',
            style: TextStyle(
              color: customColors?.primaryTextColor.withAlpha(
                isDisabled ? 150 : 255,
              ),
            ),
          ),
        ),
        if (isDisabled == false) ...{
          SizedBox(height: 10),
          Text(
            'Спасибо за участие! Ваши ответы помогают нам улучшать качество услуг. Пожалуйста, проверьте ответы перед отправкой.',
            style: TextStyle(
              fontSize: 14,
              color: customColors?.primaryTextColor.withAlpha(180),
              fontStyle: FontStyle.italic,
            ),
            textAlign: TextAlign.center,
          ),
        },
      ],
    );
  }
}

class PollQuestionRange extends StatelessWidget {
  final QuestionAnswers questionState;
  final Questions question;
  final Function(QuestionAnswers answer) onSet;
  final bool isStart;
  final bool isEnd;
  const PollQuestionRange({
    super.key,
    required this.questionState,
    required this.question,
    required this.onSet,
    required this.isStart,
    required this.isEnd,
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final answers = (question.answers ?? []);
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: customColors?.primaryBg,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(isStart ? 22 : 0),
          topRight: Radius.circular(isStart ? 22 : 0),
          bottomLeft: Radius.circular(isEnd ? 22 : 0),
          bottomRight: Radius.circular(isEnd ? 22 : 0),
        ),
      ),
      child: RadioGroup(
        groupValue: questionState.answerRange,
        onChanged: (value) {
          onSet(questionState.copyWith(answerRange: value));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsGeometry.only(left: 10, right: 10, top: 10),
              child: Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.linear_scale),
                  Expanded(
                    child: Text(
                      question.text ?? '- - -',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsetsGeometry.only(left: 10),
              child: Opacity(
                opacity: 0.6,
                child: Text(
                  'Выберете один из вариантов ниже что подходит именно для Вас.',
                ),
              ),
            ),
            SizedBox(height: 15),
            Column(
              spacing: 2,
              children: answers.map((e) {
                final index = answers.indexWhere((el) => el.id == e.id);
                final isStart = index == 0;
                final isEnd = index == (answers.length - 1);
                final start = (e.start ?? 0);
                final range = (e.end ?? 0) - start + 1;
                return Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: customColors?.containerColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(isStart ? 22 : 0),
                      topRight: Radius.circular(isStart ? 22 : 0),
                      bottomLeft: Radius.circular(isEnd ? 22 : 0),
                      bottomRight: Radius.circular(isEnd ? 22 : 0),
                    ),
                  ),
                  child: Row(
                    spacing: 20,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: List.generate(range, (index) {
                          return Row(
                            spacing: 0,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Radio(value: start + index),
                              Text('${start + index}'),
                            ],
                          );
                        }),
                      ),
                      Expanded(
                        child: Text(
                          e.text ?? '- - -',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class PollQuestionText extends StatelessWidget {
  final QuestionAnswers questionState;
  final Questions question;
  final Function(QuestionAnswers answer) onSet;
  final bool isStart;
  final bool isEnd;
  const PollQuestionText({
    super.key,
    required this.questionState,
    required this.question,
    required this.onSet,
    required this.isStart,
    required this.isEnd,
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: customColors?.primaryBg,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(isStart ? 22 : 0),
          topRight: Radius.circular(isStart ? 22 : 0),
          bottomLeft: Radius.circular(isEnd ? 22 : 0),
          bottomRight: Radius.circular(isEnd ? 22 : 0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsGeometry.only(left: 10, right: 10, top: 10),
            child: Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.title),
                Expanded(
                  child: Text(
                    question.text ?? '- - -',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: EdgeInsetsGeometry.only(left: 10),
            child: Opacity(
              opacity: 0.6,
              child: Text('Введите ваш ответ в поле ниже.'),
            ),
          ),
          SizedBox(height: 15),
          TextField(
            onChanged: (value) {
              onSet(questionState.copyWith(answerText: value));
            },
            minLines: 1,
            maxLines: 10,
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
              hintText: 'Введите ответ',
              hintStyle: TextStyle(
                color: customColors?.primaryTextColor.withAlpha(100),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
