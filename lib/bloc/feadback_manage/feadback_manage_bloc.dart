import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/api/network/main/post/main.dart';

import 'package:proweb_student_app/models/global_comment/global_comment.dart';
import 'package:proweb_student_app/models/sessions_list_item/sessions_list_item.dart';
import 'package:proweb_student_app/models/ticket/ticket.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'feadback_manage_event.dart';
part 'feadback_manage_state.dart';
part 'feadback_manage_bloc.freezed.dart';

class FeadbackManageBloc
    extends Bloc<FeadbackManageEvent, FeadbackManageState> {
  FeadbackManageBloc() : super(_Initial()) {
    on<FeadbackManageEvent>((event, emit) async {
      started(int id) async {
        emit(FeadbackManageState.initial());
        final main = sl<GetResponsesMain>();
        final ticket = await main.feadbackItem(id: id);
        if (ticket == null) return emit(FeadbackManageState.error());
        final comments = await main.globalComment(
          type: GlobalCommentTypeb.ticket,
          objectId: id,
        );
        List<GlobalComment> commentsView = [
          GlobalComment(
            content: ticket.text,
            createdBy: UserIdDefault(userId: sl<LocalData>().profile?.id),
          ),
          ...(comments ?? []),
        ];
        emit(
          FeadbackManageState.complited(
            ticket: ticket,
            comments: [...commentsView],
            loadComments: false,
            loadClosed: false,
            rejectOffer: false,
          ),
        );
      }

      createComment(List<String> files, String comment) async {
        final Ticket? ticket = state.whenOrNull(
          complited:
              (ticket, comments, isLoadComment, loadClosed, rejectOffer) =>
                  ticket,
        );
        final List<GlobalComment>? comments = state.whenOrNull(
          complited:
              (ticket, comments, isLoadComment, loadClosed, rejectOffer) =>
                  comments,
        );

        if (ticket == null) return;
        final relationId = ticket.id;
        if (relationId == null) return;
        emit(
          FeadbackManageState.complited(
            ticket: ticket,
            comments: comments ?? [],
            loadComments: true,
            loadClosed: false,
            rejectOffer: false,
          ),
        );

        final commentResponse = await sl<PostResponsesMain>().createComment(
          comment: comment,
          relationId: relationId,
          contentType: GlobalCommentTypeb.ticket,
          files: files,
        );

        if (commentResponse == null) {
          emit(
            FeadbackManageState.complited(
              ticket: ticket,
              comments: comments ?? [],
              loadComments: false,
              loadClosed: false,
              rejectOffer: false,
            ),
          );
        } else {
          final newComments = await sl<GetResponsesMain>().globalComment(
            objectId: relationId,
            type: GlobalCommentTypeb.ticket,
          );
          List<GlobalComment> commentsView = [
            GlobalComment(
              content: ticket.text,
              createdBy: UserIdDefault(userId: sl<LocalData>().profile?.id),
            ),
            ...(newComments ?? []),
          ];
          emit(
            FeadbackManageState.complited(
              ticket: ticket,
              comments: [...commentsView],
              loadComments: false,
              loadClosed: false,
              rejectOffer: false,
            ),
          );
        }
      }

      reloadWs(int id) async {
        final Ticket? ticketSave = state.whenOrNull(
          complited:
              (ticket, comments, isLoadComment, loadClosed, rejectOffer) =>
                  ticket,
        );
        final List<GlobalComment>? commentsSave = state.whenOrNull(
          complited:
              (ticket, comments, isLoadComment, loadClosed, rejectOffer) =>
                  comments,
        );
        if (ticketSave == null) return;
        if (commentsSave == null) return;

        final main = sl<GetResponsesMain>();
        final ticket = await main.feadbackItem(id: id);
        if (ticket == null) {
          return emit(
            FeadbackManageState.complited(
              ticket: ticketSave,
              comments: commentsSave,
              loadComments: false,
              loadClosed: false,
              rejectOffer: false,
            ),
          );
        }
        final comments = await main.globalComment(
          type: GlobalCommentTypeb.ticket,
          objectId: id,
        );
        List<GlobalComment> commentsView = [
          GlobalComment(
            content: ticket.text,
            createdBy: UserIdDefault(userId: sl<LocalData>().profile?.id),
          ),
          ...(comments ?? []),
        ];
        emit(
          FeadbackManageState.complited(
            ticket: ticket,
            comments: [...commentsView],
            loadComments: false,
            loadClosed: false,
            rejectOffer: false,
          ),
        );
      }

      closeTicket(int? offerId) async {
        final Ticket? ticketSave = state.whenOrNull(
          complited:
              (ticket, comments, isLoadComment, loadClosed, rejectOffer) =>
                  ticket,
        );
        final List<GlobalComment>? commentsSave = state.whenOrNull(
          complited:
              (ticket, comments, isLoadComment, loadClosed, rejectOffer) =>
                  comments,
        );
        if (ticketSave == null) return;
        final id = ticketSave.id;
        if (id == null) return;
        emit(
          FeadbackManageState.complited(
            ticket: ticketSave,
            comments: commentsSave ?? [],
            loadComments: false,
            loadClosed: true,
            rejectOffer: false,
          ),
        );
        Map<String, dynamic> form = {
          "ticket_id": id,
          "status": FeadbackStatus.closed.name,
        };
        if (offerId != null) {
          form['offer_id'] = offerId;
        }
        final formData = FormData.fromMap(form);
        final fetch = sl<PostResponsesMain>();
        final main = sl<GetResponsesMain>();
        await fetch.updateStatusTicket(formData);
        final ticket = await main.feadbackItem(id: id);
        if (ticket == null) {
          return emit(
            FeadbackManageState.complited(
              ticket: ticketSave,
              comments: commentsSave ?? [],
              loadComments: false,
              loadClosed: false,
              rejectOffer: false,
            ),
          );
        }
        final comments = await main.globalComment(
          type: GlobalCommentTypeb.ticket,
          objectId: id,
        );
        List<GlobalComment> commentsView = [
          GlobalComment(
            content: ticket.text,
            createdBy: UserIdDefault(userId: sl<LocalData>().profile?.id),
          ),
          ...(comments ?? []),
        ];
        emit(
          FeadbackManageState.complited(
            ticket: ticket,
            comments: [...commentsView],
            loadComments: false,
            loadClosed: false,
            rejectOffer: false,
          ),
        );
      }

      rejectOffer(int offerId) async {
        final Ticket? ticketSave = state.whenOrNull(
          complited:
              (ticket, comments, isLoadComment, loadClosed, rejectOffer) =>
                  ticket,
        );
        final List<GlobalComment>? commentsSave = state.whenOrNull(
          complited:
              (ticket, comments, isLoadComment, loadClosed, rejectOffer) =>
                  comments,
        );
        if (ticketSave == null) return;
        final id = ticketSave.id;
        if (id == null) return;
        emit(
          FeadbackManageState.complited(
            ticket: ticketSave,
            comments: commentsSave ?? [],
            loadComments: false,
            loadClosed: false,
            rejectOffer: true,
          ),
        );
        Map<String, dynamic> form = {"offer_id": offerId};

        final formData = FormData.fromMap(form);
        final fetch = sl<PostResponsesMain>();
        final main = sl<GetResponsesMain>();
        await fetch.rejectClosingOffer(formData);
        final ticket = await main.feadbackItem(id: id);
        if (ticket == null) {
          return emit(
            FeadbackManageState.complited(
              ticket: ticketSave,
              comments: commentsSave ?? [],
              loadComments: false,
              loadClosed: false,
              rejectOffer: false,
            ),
          );
        }
        final comments = await main.globalComment(
          type: GlobalCommentTypeb.ticket,
          objectId: id,
        );
        List<GlobalComment> commentsView = [
          GlobalComment(
            content: ticket.text,
            createdBy: UserIdDefault(userId: sl<LocalData>().profile?.id),
          ),
          ...(comments ?? []),
        ];
        emit(
          FeadbackManageState.complited(
            ticket: ticket,
            comments: [...commentsView],
            loadComments: false,
            loadClosed: false,
            rejectOffer: false,
          ),
        );
      }

      score(int scr) async {
        final Ticket? ticketSave = state.whenOrNull(
          complited:
              (ticket, comments, isLoadComment, loadClosed, rejectOffer) =>
                  ticket,
        );
        final List<GlobalComment>? commentsSave = state.whenOrNull(
          complited:
              (ticket, comments, isLoadComment, loadClosed, rejectOffer) =>
                  comments,
        );
        if (ticketSave == null) return;
        final id = ticketSave.id;
        if (id == null) return;
        emit(
          FeadbackManageState.complited(
            ticket: ticketSave.copyWith(score: scr),
            comments: commentsSave ?? [],
            loadComments: false,
            loadClosed: false,
            rejectOffer: true,
          ),
        );
        final fetch = sl<PostResponsesMain>();
        final form = FormData.fromMap({"ticket_id": id, "score": scr});
        await fetch.score(form);
      }

      await event.when(
        started: started,
        createComment: createComment,
        reloadWS: reloadWs,
        closeTicket: closeTicket,
        rejectOffer: rejectOffer,
        score: score,
      );
    });
  }
}
