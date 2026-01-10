enum WsObjectData {
  notification('notification'),
  update('update'),
  event('event');

  final String name;
  const WsObjectData(this.name);
}

enum WsEvent {
  balance('balance'),
  coworkingVisitUpdate('coworking_visit_update'),
  homeworkAssign('homework_assign'),
  homeworkCheck('homework_check'),
  homeworkComment('homework_comment'),
  testingAssign('testing_assign'),
  transaction('transaction'),
  ticketResponsible('ticket_responsible'),
  ticketComment('ticket_comment'),
  ticketStatus('ticket_status'),
  ticketClosingOfferProposed('ticket_closing_offer_proposed'),
  testingComment('testing_comment'),
  telegramLinked('telegram_linked');

  final String name;
  const WsEvent(this.name);
}
