import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/api/ws/ws_connection_state.dart';
import 'package:proweb_student_app/bloc/feadback_manage/feadback_manage_bloc.dart';
import 'package:proweb_student_app/interface/components/app_bar/app_bar.dart';
import 'package:proweb_student_app/interface/components/avatar/avatar.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/homework_page_feature/features/homework_about_feature/components/comment_body.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/homework_page_feature/features/homework_about_feature/components/comment_footer.dart';
import 'package:proweb_student_app/models/global_comment/global_comment.dart';
import 'package:proweb_student_app/models/ticket/ticket.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';
import 'package:proweb_student_app/utils/ws_connect/ws_connect.dart';
import 'package:proweb_student_app/utils/ws_connect/ws_enums.dart';

@RoutePage()
class ViewItemFeadbackScreen extends StatelessWidget {
  final int id;
  const ViewItemFeadbackScreen({super.key, @PathParam('id') required this.id});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          FeadbackManageBloc()..add(FeadbackManageEvent.started(id: id)),
      child: AnnotatedRegion(
        value: FlexColorScheme.themedSystemNavigationBar(
          context,
          systemNavBarStyle: FlexSystemNavBarStyle.transparent,
        ),
        child: Scaffold(
          appBar: MainAppBar(),
          body: ViewItemFeadbackBody(id: id),
        ),
      ),
    );
  }
}

class ViewItemFeadbackBody extends StatelessWidget {
  final int id;
  const ViewItemFeadbackBody({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeadbackManageBloc, FeadbackManageState>(
      builder: (context, state) {
        return state.when(
          initial: () {
            return Center(child: Md3CirculeIndicator());
          },
          error: () {
            return Center(child: ErrorLoad());
          },
          complited: (ticket, comments, loadComments, loadClosed, rejectOffer) {
            return TicketContent(
              ticket: ticket,
              comments: comments,
              loadComments: loadComments,
              loadClosed: loadClosed,
              rejectOffer: rejectOffer,
            );
          },
        );
      },
    );
  }
}

class TicketContent extends StatefulWidget {
  final Ticket ticket;
  final List<GlobalComment> comments;
  final bool loadComments;
  final bool loadClosed;
  final bool rejectOffer;
  const TicketContent({
    super.key,
    required this.ticket,
    required this.comments,
    required this.loadComments,
    required this.loadClosed,
    required this.rejectOffer,
  });

  @override
  State<TicketContent> createState() => _TicketContentState();
}

class _TicketContentState extends State<TicketContent> {
  List<String> wsEvents = [];

  @override
  void initState() {
    super.initState();
    wsEvents =
        [
          WsEvent.ticketComment,
          WsEvent.ticketClosingOfferProposed,
          WsEvent.ticketResponsible,
          WsEvent.ticketStatus,
        ].map<String>((element) {
          final uuid = sl<Channel>().connect.subscribe(
            channel: element.name,
            connection: ConnectionData(
              callback: (data) {
                final relationId = widget.ticket.id;
                if (data is Map && context.mounted && relationId != null) {
                  final bloc = context.read<FeadbackManageBloc>();
                  bloc.add(FeadbackManageEvent.reloadWS(id: relationId));
                }
              },
              objectId: widget.ticket.id,
            ),
          );
          return uuid;
        }).toList();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    for (var uuid in wsEvents) {
      sl<Channel>().connect.unsubscribe(uuid: uuid);
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final bottomPadding = MediaQuery.of(context).viewPadding.bottom;
    final offer = widget.ticket.closingOffers
        ?.where((element) {
          return element.status == FeadbackOfferStatus.proposed;
        })
        .toList()
        .firstOrNull;

    return Column(
      children: [
        Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height * 0.5,
          ),
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
          decoration: BoxDecoration(
            color: customColors?.containerColor,
            border: Border(
              top: BorderSide(
                color: customColors?.borderColor ?? Colors.transparent,
              ),
              bottom: BorderSide(
                color: customColors?.borderColor ?? Colors.transparent,
              ),
            ),
          ),
          child: ListTile(
            horizontalTitleGap: 8,
            tileColor: customColors?.primaryBg,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            minVerticalPadding: 8,
            isThreeLine: false,
            leading: widget.ticket.responsibleUser?.user != null
                ? Avatar(user: widget.ticket.responsibleUser!.user)
                : CircleAvatar(
                    backgroundColor: customColors?.primaryBg,
                    child: Icon(
                      Icons.person,
                      color: customColors?.primaryTextColor,
                    ),
                  ),
            title: Text(
              widget.ticket.responsibleUser?.user != null
                  ? sl<LocalData>().nameUser(
                      widget.ticket.responsibleUser!.user,
                    )
                  : 'feedback.no_responsible_user'.tr(),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Opacity(
              opacity: 0.7,
              child: Text('feedback.responsible_user_feedback'.tr()),
            ),
            trailing:
                offer == null && widget.ticket.status == FeadbackStatus.open
                ? widget.loadClosed
                      ? Md3CirculeIndicator()
                      : FilledButton.icon(
                          onPressed: () {
                            final bloc = context.read<FeadbackManageBloc>();
                            bloc.add(FeadbackManageEvent.closeTicket());
                          },
                          icon: Icon(Icons.lock),
                          label: Text('global_data.closed_text'.tr()),
                        )
                : null,
          ),
        ),
        Expanded(child: HomeworkCommentsBody(comments: widget.comments)),
        if (widget.ticket.status == FeadbackStatus.open && offer == null)
          HomeworkCommentFooter(
            isLoadComment: widget.loadComments,
            onSend: (comment, files, context) {
              final bloc = context.read<FeadbackManageBloc>();
              bloc.add(
                FeadbackManageEvent.createComment(
                  comment: comment.trim(),
                  files: files,
                ),
              );
            },
          )
        else if (widget.ticket.status == FeadbackStatus.open && offer != null)
          Container(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height * 0.5,
            ),
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
              bottom: bottomPadding + 10,
              top: 5,
            ),
            decoration: BoxDecoration(
              color: customColors?.containerColor,
              border: Border(
                top: BorderSide(
                  color: customColors?.borderColor ?? Colors.transparent,
                ),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                spacing: 10,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'feedback.You_have_been_offered_to_close_the_request'.tr(),
                    textAlign: TextAlign.center,
                  ),
                  if (!widget.loadClosed && !widget.rejectOffer)
                    Row(
                      spacing: 10,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FilledButton(
                          onPressed: () {
                            final id = offer.id;
                            if (id != null) {
                              final bloc = context.read<FeadbackManageBloc>();
                              bloc.add(
                                FeadbackManageEvent.closeTicket(offerId: id),
                              );
                            }
                          },
                          child: Text('global_data.Accept'.tr()),
                        ),
                        FilledButton(
                          style: FilledButton.styleFrom(
                            backgroundColor:
                                customColors?.filledButtonDisableBg,
                            textStyle: TextStyle(
                              color: customColors?.primaryTextColor,
                            ),
                          ),
                          onPressed: () {
                            final id = offer.id;
                            if (id != null) {
                              final bloc = context.read<FeadbackManageBloc>();
                              bloc.add(
                                FeadbackManageEvent.rejectOffer(offerId: id),
                              );
                            }
                          },
                          child: Text('global_data.Reject'.tr()),
                        ),
                      ],
                    )
                  else
                    Center(child: Md3CirculeIndicator()),
                ],
              ),
            ),
          )
        else
          Container(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height * 0.5,
            ),
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
              bottom: bottomPadding + 10,
              top: 5,
            ),
            decoration: BoxDecoration(
              color: customColors?.containerColor,
              border: Border(
                top: BorderSide(
                  color: customColors?.borderColor ?? Colors.transparent,
                ),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                spacing: 10,
                children: [
                  Text(
                    'global_data.The_request_has_been_closed_and_you_can_no_longer_send_new_messages'
                        .tr(),
                    textAlign: TextAlign.center,
                  ),
                  if ((widget.ticket.score ?? 0) == 0) Divider(),
                  if ((widget.ticket.score ?? 0) == 0)
                    Text(
                      'global_data.Rate_the_quality_of_the_responsible_person'
                          .tr(),
                      textAlign: TextAlign.center,
                    ),
                  Row(
                    spacing: 10,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(5, (index) {
                      if ((index + 1) <= (widget.ticket.score ?? 0)) {
                        return IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.star,
                            color: customColors?.warningFill,
                            size: 30,
                          ),
                        );
                      }
                      return IconButton(
                        onPressed: (widget.ticket.score ?? 0) == 0
                            ? () {
                                final bloc = context.read<FeadbackManageBloc>();
                                bloc.add(
                                  FeadbackManageEvent.score(score: index + 1),
                                );
                                Fluttertoast.showToast(
                                  msg: 'global_data.Thanks_for_your_feedback'
                                      .tr(),
                                );
                              }
                            : null,
                        icon: Icon(
                          Icons.star_border,
                          size: 30,
                          color: customColors?.primaryTextColor,
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
