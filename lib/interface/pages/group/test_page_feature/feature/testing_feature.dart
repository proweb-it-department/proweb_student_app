import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lottie/lottie.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/bloc/test_relation/test_relation_bloc.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/models/test_student_relation/test_student_relation.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/player_widget/video_controlls.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class TestingGroupScreen extends StatelessWidget {
  final int relationId;
  final int groupId;
  const TestingGroupScreen({
    super.key,
    @PathParam.inherit('relationId') required this.relationId,
    @PathParam.inherit('id') required this.groupId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TestRelationBloc, TestRelationState>(
      builder: (context, state) {
        return state.when(
          initial: () {
            return Center(child: Md3CirculeIndicator());
          },
          load: () {
            return Center(child: Md3CirculeIndicator());
          },
          error: () {
            return Center(
              child: ErrorLoad(
                action: FilledButton(
                  onPressed: () {
                    final bloc = context.read<TestRelationBloc>();
                    bloc.add(TestRelationEvent.started(relationId: relationId));
                  },
                  child: Text('global_data.try_again'.tr()),
                ),
              ),
            );
          },
          complite: (relation, comments, isLoadComment, isLoadAnswers) {
            return TestingFeature(
              relation: relation,
              isLoadAnswers: isLoadAnswers,
              relationId: relationId,
            );
          },
        );
      },
    );
  }
}

class TestingFeature extends StatelessWidget {
  final TestStudentRelation relation;
  final bool isLoadAnswers;
  final int relationId;
  const TestingFeature({
    super.key,
    required this.relation,
    required this.isLoadAnswers,
    required this.relationId,
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final bottomPadding = MediaQuery.of(context).viewPadding.bottom;
    final questions = relation.testing?.question;
    final jsonAnswer = relation.jsonAnswer;
    final score = double.parse(relation.totalScore ?? '0.00').round();
    final solved = jsonAnswer != null && score > 0;
    int scoreStudent = (score / 20).ceil();
    return ListView(
      padding: EdgeInsets.only(bottom: bottomPadding + 10, top: 10),
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: customColors?.containerColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: customColors?.borderColor ?? Colors.black,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'group_homework.testing_about_max'.tr(),
                style: TextStyle(
                  color: customColors?.primaryTextColor.withAlpha(150),
                ),
              ),
              SizedBox(height: 20),
              Text(
                relation.testing?.name ?? '',
                style: TextStyle(fontSize: 22),
              ),
              SizedBox(height: 10),
              if (relation.testing?.description != null)
                Text(
                  sl<LocalData>().removeHtmlTags(
                    relation.testing!.description!,
                  ),
                  style: TextStyle(
                    color: customColors?.primaryTextColor.withAlpha(150),
                  ),
                ),
              SizedBox(height: 10),
              Text(
                sl<LocalData>().getDateString(
                  date: DateTime.parse(relation.createdAt!),
                ),
              ),
              if (solved) SizedBox(height: 15),
              if (solved)
                Row(
                  spacing: 10,
                  children: [
                    Expanded(
                      child: FilledButton.icon(
                        style: FilledButton.styleFrom(
                          backgroundColor: customColors?.additionalTwo,
                          textStyle: TextStyle(
                            color: customColors?.primaryTextColor,
                          ),
                        ),
                        iconAlignment: IconAlignment.start,
                        icon: Icon(
                          Icons.comment,
                          color: customColors?.primaryTextColor,
                        ),
                        onPressed: () {
                          final tabsRouter = AutoTabsRouter.of(context);
                          tabsRouter.setActiveIndex(1);
                        },
                        label: Text(
                          'group_homework.homework_student_comment'.tr(),
                          style: TextStyle(
                            color: customColors?.primaryTextColor,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        final tabsRouter = AutoTabsRouter.of(context);
                        tabsRouter.setActiveIndex(1);
                      },
                      icon: Icon(Icons.comment),
                    ),
                  ],
                ),
              if (solved) SizedBox(height: 15),
              if (solved)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 10,
                  children: [
                    if (scoreStudent <= 3)
                      Lottie.asset(
                        'assets/lottie/Angry.json',
                        width: 30,
                        height: 30,
                      )
                    else if (scoreStudent == 4)
                      Lottie.asset(
                        'assets/lottie/Slightly-frowning.json',
                        width: 30,
                        height: 30,
                      )
                    else
                      Lottie.asset(
                        'assets/lottie/Slightly-happy.json',
                        width: 30,
                        height: 30,
                      ),
                    Text(
                      'group_homework.scrore_relation'.tr(
                        namedArgs: {'score': scoreStudent.toString()},
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
        SizedBox(height: 15),
        if (questions != null && isLoadAnswers == false)
          Questions(
            questions: questions,
            jsonAnswer: jsonAnswer,
            totalScore: double.parse(relation.totalScore ?? '0.00').round(),
            isLoadAnswers: isLoadAnswers,
            relationId: relationId,
          ),
        if (isLoadAnswers == true) Center(child: Md3CirculeIndicator()),
        if (questions == null)
          NoData(
            text: 'group_homework.questions_test_not_found'.tr(),
            icon: Icons.question_mark,
          ),
      ],
    );
  }
}

class Questions extends StatefulWidget {
  final List<Question> questions;
  final List<JsonAnswer>? jsonAnswer;
  final int totalScore;
  final int relationId;
  final bool isLoadAnswers;
  const Questions({
    super.key,
    required this.questions,
    this.jsonAnswer,
    required this.totalScore,
    required this.isLoadAnswers,
    required this.relationId,
  });

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  Map<int, dynamic> answers = {};
  Map<int, Map<int, bool>> answersCheckbox = {};

  bool isValid = false;
  bool isSended = false;
  bool isError = false;

  @override
  void initState() {
    super.initState();
    _startData();
  }

  _startData() {
    final myAnswers = widget.jsonAnswer;
    for (var element in widget.questions) {
      final id = element.id;
      if (id == null) continue;
      if (element.multiselect == false) {
        if (myAnswers == null) {
          answers[id] = null;
          continue;
        }
        final findQuestion = myAnswers.firstWhere(
          (element) => element.questionId == id,
          orElse: () {
            return JsonAnswer();
          },
        );
        final myAnswersQuestion = findQuestion.answers;
        if (myAnswersQuestion == null) continue;
        if (myAnswersQuestion.firstOrNull == null) continue;
        answers[id] = myAnswersQuestion.first.answerId;
      } else if (element.multiselect == true) {
        answersCheckbox[id] = {};
        final answers = element.answer;
        if (answers == null) continue;
        for (var answer in answers) {
          final idAnswer = answer.id;
          if (idAnswer == null) continue;
          answersCheckbox[id]![idAnswer] = false;
        }
        if (myAnswers == null) continue;
        final findQuestion = myAnswers.firstWhere(
          (element) => element.questionId == id,
          orElse: () {
            return JsonAnswer();
          },
        );
        final myAnswersQuestion = findQuestion.answers;
        if (myAnswersQuestion == null) continue;
        if (myAnswersQuestion.isEmpty) continue;

        for (var ans in myAnswersQuestion) {
          final ansId = ans.answerId;
          if (ansId == null) continue;
          for (var answer in answers) {
            final idAnswer = answer.id;
            if (idAnswer == null) continue;
            if (ansId == idAnswer) {
              answersCheckbox[id]![idAnswer] = true;
            }
          }
        }
      }
    }
    setState(() {
      answers = answers;
    });
    setState(() {
      isSended = false;
    });
    setState(() {
      answersCheckbox = answersCheckbox;
    });
    _hasValidate();
  }

  _hasValidate() {
    if (!isError) {
      bool validRadio = true;
      bool validCheckbox = true;
      var values = answers.values.toList();
      var valuesCheck = answersCheckbox.values.toList();
      int count = valuesCheck.length + values.length;
      if (count == widget.questions.length) {
        for (var element in widget.questions) {
          final id = element.id;
          if (id == null) continue;
          if (element.multiselect == true) continue;
          if (answers[id] == null) {
            validRadio = false;
          }
        }
        if (validRadio) {
          validRadio = true;
        }
        for (var element in widget.questions) {
          final id = element.id;
          if (id == null) continue;
          if (element.multiselect == false) continue;
          final boolCheckbox = answersCheckbox[id]?.values.toList();
          if (boolCheckbox == null) {
            validCheckbox = false;
            continue;
          }
          if (!boolCheckbox.contains(true)) {
            validCheckbox = false;
          }
        }
        if (validRadio) {
          validRadio = true;
        }
        setState(() {
          isValid = validRadio && validCheckbox;
        });
      } else {
        setState(() {
          isError = true;
        });
      }
    }
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (isError)
          ErrorLoad()
        else if (!widget.isLoadAnswers)
          ...List.generate(widget.questions.length, (index) {
            final question = widget.questions[index];
            String? image = question.image;
            String? video = question.video;
            if (image != null) {
              if (!image.contains('http')) {
                image = '${GlobalPath.main}$image';
              }
            }
            if (video != null) {
              if (!video.contains('http')) {
                video = '${GlobalPath.main}$video';
              }
            }
            return Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: customColors?.containerColor,
                border: Border(
                  top: BorderSide(
                    color: customColors?.borderColor ?? Colors.transparent,
                  ),
                  bottom: (widget.questions.length - 1) == index
                      ? BorderSide(
                          color:
                              customColors?.borderColor ?? Colors.transparent,
                        )
                      : BorderSide.none,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      '${'group_homework.count_question'.tr(namedArgs: {'index': (index + 1).toString()})}${image != null || video != null ? ' | ' : ''}${image != null ? 'global_data.photo_text_small'.tr() : ''}${video != null ? 'global_data.video_text_small'.tr() : ''}'
                          .trim(),
                      style: TextStyle(color: customColors?.additionalTwo),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(question.text ?? ''),
                  ),
                  SizedBox(height: 10),
                  if (image != null)
                    CachedNetworkImage(imageUrl: image, width: double.infinity),
                  if (video != null) VideoPlayerTesting(path: video),
                  if (video != null || image != null) SizedBox(height: 10),
                  if (question.multiselect == true)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'group_homework.multiselect_description'.tr(),
                        style: TextStyle(color: customColors?.additionalTwo),
                      ),
                    ),
                  if (question.multiselect == true) SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        decoration: BoxDecoration(
                          color: customColors?.primaryBg,
                          // borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            ...List.generate(question.answer?.length ?? 0, (
                              index,
                            ) {
                              final item = question.answer?[index];
                              final int? answer = answers[question.id ?? 0];
                              String? image = item?.image;
                              String? video = item?.video;
                              final myAnswer = widget.jsonAnswer;
                              bool? correct = item?.correct;
                              bool myAns = widget.jsonAnswer != null;
                              Widget title = Text(
                                item?.text ?? '',
                                style: TextStyle(
                                  color: customColors?.primaryTextColor,
                                ),
                              );

                              if (image != null) {
                                if (!image.contains('http')) {
                                  image = '${GlobalPath.main}$image';
                                }
                              }
                              if (video != null) {
                                if (!video.contains('http')) {
                                  video = '${GlobalPath.main}$video';
                                }
                              }

                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  if (index > 0) Divider(height: 1),
                                  if (image != null)
                                    CachedNetworkImage(
                                      imageUrl: image,
                                      width: double.infinity,
                                    ),
                                  if (video != null)
                                    VideoPlayerTesting(path: video),
                                  if (question.multiselect == false && !myAns)
                                    RadioListTile(
                                      contentPadding: EdgeInsets.only(
                                        right: 10,
                                      ),
                                      groupValue: answer,
                                      onChanged: (value) {
                                        answers[question.id ?? 0] = value;
                                        setState(() {
                                          answers = answers;
                                          _hasValidate();
                                        });
                                      },
                                      value: item?.id ?? 0,
                                      title: title,
                                    )
                                  else if (question.multiselect == false &&
                                      myAns)
                                    Material(
                                      color:
                                          (correct == true &&
                                                      answer == (item?.id ?? 0)
                                                  ? customColors?.successFillOp
                                                  : correct == false &&
                                                        answer ==
                                                            (item?.id ?? 0)
                                                  ? customColors?.errorFillOp
                                                  : correct == true &&
                                                        answer !=
                                                            (item?.id ?? 0)
                                                  ? customColors?.warningFillOp
                                                  : customColors?.primaryBg)
                                              ?.withAlpha(10),
                                      child: RadioListTile(
                                        contentPadding: EdgeInsets.only(
                                          right: 10,
                                        ),
                                        groupValue: correct == true
                                            ? (item?.id ?? 0)
                                            : answer,
                                        onChanged: null,
                                        value: item?.id ?? 0,
                                        title: title,
                                        subtitle:
                                            correct == true &&
                                                answer == (item?.id ?? 0)
                                            ? Container(
                                                margin: EdgeInsets.only(top: 5),
                                                padding: EdgeInsets.symmetric(
                                                  vertical: 6,
                                                  horizontal: 10,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: customColors
                                                      ?.successFillOp,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: Text(
                                                  'global_data.test_answer_correct'
                                                      .tr(),
                                                  style: TextStyle(
                                                    color: customColors
                                                        ?.primaryTextColor,
                                                  ),
                                                ),
                                              )
                                            : correct == false &&
                                                  answer == (item?.id ?? 0)
                                            ? Container(
                                                margin: EdgeInsets.only(top: 5),
                                                padding: EdgeInsets.symmetric(
                                                  vertical: 6,
                                                  horizontal: 10,
                                                ),
                                                decoration: BoxDecoration(
                                                  color:
                                                      customColors?.errorFillOp,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: Text(
                                                  'global_data.test_answer_error'
                                                      .tr(),
                                                  style: TextStyle(
                                                    color: customColors
                                                        ?.primaryTextColor,
                                                  ),
                                                ),
                                              )
                                            : correct == true &&
                                                  answer != (item?.id ?? 0)
                                            ? Container(
                                                margin: EdgeInsets.only(top: 5),
                                                padding: EdgeInsets.symmetric(
                                                  vertical: 6,
                                                  horizontal: 10,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: customColors
                                                      ?.successFillOp,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: Text(
                                                  'global_data.test_answer_warn'
                                                      .tr(),
                                                  style: TextStyle(
                                                    color: customColors
                                                        ?.primaryTextColor,
                                                  ),
                                                ),
                                              )
                                            : null,
                                      ),
                                    )
                                  else if (question.multiselect == true &&
                                      !myAns)
                                    CheckboxListTile(
                                      contentPadding: EdgeInsets.only(
                                        right: 10,
                                      ),
                                      controlAffinity:
                                          ListTileControlAffinity.leading,
                                      onChanged: myAnswer != null
                                          ? null
                                          : (value) {
                                              answersCheckbox[question.id ??
                                                      0]![item?.id ?? 0] =
                                                  value ?? false;
                                              setState(() {
                                                answersCheckbox =
                                                    answersCheckbox;
                                                _hasValidate();
                                              });
                                            },
                                      value:
                                          answersCheckbox[question.id ??
                                              0]![item?.id],
                                      title: title,
                                    )
                                  else if (question.multiselect == true &&
                                      myAns)
                                    Material(
                                      color:
                                          (correct == true &&
                                                      answersCheckbox[question
                                                                  .id ??
                                                              0]![item?.id] ==
                                                          true
                                                  ? customColors?.successFillOp
                                                  : correct == false &&
                                                        answersCheckbox[question
                                                                    .id ??
                                                                0]![item?.id] ==
                                                            true
                                                  ? customColors?.errorFillOp
                                                  : correct == true &&
                                                        answersCheckbox[question
                                                                    .id ??
                                                                0]![item?.id] ==
                                                            false
                                                  ? customColors?.warningFillOp
                                                  : customColors?.primaryBg)
                                              ?.withAlpha(10),
                                      child: CheckboxListTile(
                                        contentPadding: EdgeInsets.only(
                                          right: 10,
                                        ),
                                        controlAffinity:
                                            ListTileControlAffinity.leading,
                                        onChanged: null,
                                        value:
                                            answersCheckbox[question.id ??
                                                0]![item?.id],
                                        title: title,
                                        subtitle:
                                            correct == true &&
                                                answersCheckbox[question.id ??
                                                        0]![item?.id] ==
                                                    true
                                            ? Container(
                                                margin: EdgeInsets.only(top: 5),
                                                padding: EdgeInsets.symmetric(
                                                  vertical: 6,
                                                  horizontal: 10,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: customColors
                                                      ?.successFillOp,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: Text(
                                                  'global_data.test_answer_correct'
                                                      .tr(),
                                                  style: TextStyle(
                                                    color: customColors
                                                        ?.primaryTextColor,
                                                  ),
                                                ),
                                              )
                                            : correct == false &&
                                                  answersCheckbox[question.id ??
                                                          0]![item?.id] ==
                                                      true
                                            ? Container(
                                                margin: EdgeInsets.only(top: 5),
                                                padding: EdgeInsets.symmetric(
                                                  vertical: 6,
                                                  horizontal: 10,
                                                ),
                                                decoration: BoxDecoration(
                                                  color:
                                                      customColors?.errorFillOp,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: Text(
                                                  'global_data.test_answer_error'
                                                      .tr(),
                                                  style: TextStyle(
                                                    color: customColors
                                                        ?.primaryTextColor,
                                                  ),
                                                ),
                                              )
                                            : correct == true &&
                                                  answersCheckbox[question.id ??
                                                          0]![item?.id] ==
                                                      false
                                            ? Container(
                                                margin: EdgeInsets.only(top: 5),
                                                padding: EdgeInsets.symmetric(
                                                  vertical: 6,
                                                  horizontal: 10,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: customColors
                                                      ?.warningFillOp,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: Text(
                                                  'global_data.test_answer_warn'
                                                      .tr(),
                                                  style: TextStyle(
                                                    color: customColors
                                                        ?.primaryTextColor,
                                                  ),
                                                ),
                                              )
                                            : null,
                                      ),
                                    )
                                  else
                                    SizedBox(),
                                ],
                              );
                            }),
                            if (question.multiselect == true &&
                                widget.jsonAnswer != null)
                              Divider(height: 1),
                            if (question.multiselect == true &&
                                widget.jsonAnswer != null)
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'global_data.test_checkbox_list_info'.tr(),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
        if (!widget.isLoadAnswers && widget.jsonAnswer == null)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              spacing: 5,
              children: [
                IconButton(
                  onPressed: () {
                    _startData();
                    Fluttertoast.showToast(
                      msg: 'group_homework.your_answers_have_been_reset'.tr(),
                    );
                  },
                  icon: Icon(Icons.replay_outlined),
                ),
                Expanded(
                  child: FilledButton(
                    style: FilledButton.styleFrom(
                      disabledBackgroundColor: customColors?.additionalTwo,
                    ),
                    onPressed: isValid
                        ? () async {
                            _sendAnswer(context);
                          }
                        : null,
                    child: Text('group_homework.questions_send_btn'.tr()),
                  ),
                ),
              ],
            ),
          )
        else if (widget.jsonAnswer == null)
          Center(child: Md3CirculeIndicator()),
        if (widget.jsonAnswer != null)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
            child: Text(
              'group_homework.testing_result_complited'.tr(),
              textAlign: TextAlign.center,
            ),
          ),
      ],
    );
  }

  _sendAnswer(BuildContext context) async {
    if (!isSended) {
      final bottomPadding = MediaQuery.of(context).viewPadding.bottom;
      await showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.only(
              bottom: bottomPadding + 10,
              left: 10,
              right: 10,
            ),
            child: NoData(
              text: 'group_homework.questions_answer_check'.tr(),
              icon: Icons.question_mark,
              action: FilledButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('group_homework.questions_check_btn'.tr()),
              ),
            ),
          );
        },
      );
      setState(() {
        isSended = true;
      });
    } else {
      bool isFail = false;
      final List<Map<String, dynamic>> answerStudent = [];
      double totlaScore = 0;
      double totlaTestionScore = 0;
      for (var element in widget.questions) {
        final Map<String, dynamic> currentAnswer = {};
        final id = element.id;
        final score = element.score;
        final answersQuestions = element.answer;
        if (id == null ||
            score == null ||
            answersQuestions == null ||
            element.multiselect == null) {
          isFail = true;
          return;
        }
        totlaTestionScore += element.score ?? 0;
        if (element.multiselect == true) continue;
        currentAnswer['question_id'] = id;
        currentAnswer['answers'] = [];
        for (var answer in answersQuestions) {
          final Map<String, int> ans = {};
          final isAnswer = answer.id;
          final correct = answer.correct;
          if (isAnswer == null || correct == null) {
            isFail = true;
            return;
          }
          if (answers[id] == null) return;
          if (answers[id] == isAnswer) {
            ans['answer_id'] = isAnswer;
            currentAnswer['answers'].add(ans);
            if (correct) {
              totlaScore += score;
            }
          }
        }
        answerStudent.add(currentAnswer);
      }
      for (var element in widget.questions) {
        final Map<String, dynamic> currentAnswer = {};
        final id = element.id;
        final score = element.score;
        final answersQuestions = element.answer;
        if (id == null ||
            score == null ||
            answersQuestions == null ||
            element.multiselect == null) {
          isFail = true;
          return;
        }
        if (element.multiselect == false) continue;
        currentAnswer['question_id'] = id;
        currentAnswer['answers'] = [];
        int correctAll = 0;
        int correctUser = 0;
        for (var answer in answersQuestions) {
          final Map<String, int> ans = {};
          final isAnswer = answer.id;
          final correct = answer.correct;
          if (isAnswer == null || correct == null) {
            isFail = true;
            return;
          }

          if (answersCheckbox[id] == null) return;
          if (correct) {
            correctAll++;
            if (answersCheckbox[id]?[isAnswer] == true) {
              correctUser++;
            }
          }
          if (answersCheckbox[id]?[isAnswer] == true) {
            ans['answer_id'] = isAnswer;
            if (currentAnswer['answers'] is List) {
              currentAnswer['answers'].add(ans);
            }
          }
        }
        if (correctAll == correctUser) {
          totlaScore += score;
        }
        answerStudent.add(currentAnswer);
      }
      if (isFail || answerStudent.isEmpty) return;
      final bloc = context.read<TestRelationBloc>();
      bloc.add(
        TestRelationEvent.sendAnswer(
          totlaScore: (totlaScore / totlaTestionScore * 100),
          answers: answerStudent,
          relationId: widget.relationId,
        ),
      );
    }
  }
}

class VideoPlayerTesting extends StatefulWidget {
  final String path;
  const VideoPlayerTesting({super.key, required this.path});

  @override
  State<VideoPlayerTesting> createState() => _VideoPlayerTestingState();
}

class _VideoPlayerTestingState extends State<VideoPlayerTesting>
    with AutoRouteAware {
  late final Player player = Player();
  late final controller = VideoController(
    player,
    configuration: const VideoControllerConfiguration(
      enableHardwareAcceleration: true,
    ),
  );

  @override
  void initState() {
    super.initState();
    Media media = Media(widget.path);
    player.open(media, play: false);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    sl<AutoRouteObserver>().subscribe(this, context.routeData);
  }

  @override
  void didPushNext() {
    if (player.state.playing) {
      player.pause();
    }
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final maxHeight = MediaQuery.of(context).size.height * 0.5;
    final width = MediaQuery.of(context).size.width;
    final aspectrationHeight = width * (9 / 16);
    return Container(
      color: customColors?.primaryBlack,
      width: double.infinity,
      alignment: Alignment.center,
      constraints: BoxConstraints(
        maxHeight: maxHeight > aspectrationHeight
            ? aspectrationHeight
            : maxHeight,
      ),
      child: IntrinsicHeight(
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Video(
            controller: controller,
            controls: (state) {
              return myMaterialVideoControls(state);
            },
          ),
        ),
      ),
    );
  }
}
