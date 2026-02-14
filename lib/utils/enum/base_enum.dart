import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';

enum FileSizeType { by, mb }

enum ProgressTypeDownloadVideo {
  key,
  generalM3U8,
  innerM3U8,
  segements,
  preview,
  complited,
  error,
  stop,
}

enum StudentStatus {
  @JsonValue('not_confirmed')
  notConfirmed,
  @JsonValue('auto_activate')
  autoActivate,
  @JsonValue('active')
  active,
  @JsonValue('archived')
  archived,
  @JsonValue('leave')
  leave,
  @JsonValue('graduate')
  graduate,
  @JsonValue('reservation')
  reservation,
  @JsonValue('not_confirmed_reservation')
  notConfirmedReservation,
  @JsonValue('leave_reservation')
  leaveReservation,
  @JsonValue('unstarted_leave')
  unstartedLeave,
  @JsonValue('transfer')
  transfer,
  @JsonValue('partially_completed')
  partiallyCompleted,
  @JsonValue('transfer_other_course')
  transferOtherCourse,
  unknown,
}

enum StudentPaymentType {
  @JsonValue('standard')
  standard,
  @JsonValue('payment_after')
  paymentAfter,
}

enum MyGroupStatus {
  @JsonValue('draft')
  draft,
  @JsonValue('active')
  active,
  @JsonValue('archive')
  archive,
  @JsonValue('started')
  started,
  @JsonValue('disbanded')
  disbanded,
  @JsonValue('graduaded')
  graduaded,
}

enum StatusNotificationGroupUser {
  @JsonValue('opened')
  opened,
  @JsonValue('closed')
  closed,
}

enum StatusVideoLoad {
  complete,
  processing,
  queue,
  noAudioStream,
  noVideos,
  generate,
}

enum StatusVideoData {
  @JsonValue('queue')
  queue,
  @JsonValue('processing')
  processing,
  @JsonValue('complete')
  complete,
  @JsonValue('archive')
  archive,
  @JsonValue('no_audio_stream')
  noAudioStream,
  @JsonValue('deleted')
  deleted,
  @JsonValue('in_queue_for_deletion')
  inQueueForDeletion,
  @JsonValue('download')
  download,
}

enum GradeBookWorkType { work, testing }

enum GradeBookWorkStudentType {
  passed,
  examination,
  didntpass,
  noconnection,
  none,
}

enum HomeworkSegements { homework, material, test }

enum GlobalCommentTypeb {
  groupuser,
  studentmaterial,
  studenthomework,
  studenttesting,
  ticket,
  post,
}

enum FeadbackType {
  @JsonValue('praise')
  praise('praise', Icons.volunteer_activism_rounded),
  @JsonValue('offer')
  offer('offer', Icons.lightbulb_outline),
  @JsonValue('complaint')
  complaint('complaint', Icons.mood_bad),
  @JsonValue('software_error')
  softwareError('software_error', Icons.terminal);

  final String name;
  final IconData icon;
  const FeadbackType(this.name, this.icon);
}

enum FeadbackStatus {
  @JsonValue('open')
  open,
  @JsonValue('closed')
  closed,
}

enum FeadbackOfferStatus {
  @JsonValue('proposed')
  proposed,
  @JsonValue('accepted')
  accepted,
  @JsonValue('rejected')
  rejected,
}

enum LoadState { noLoading, loading, errorLoading, complited, notFound }

enum FileMenuSelected {
  openNew('downloads.open_file_in', Icons.open_in_new),
  share('downloads.share_file_to', Icons.share),
  info('downloads.file_information', Icons.info),
  deleted('downloads.delete_file', Icons.delete);

  final String name;
  final IconData icon;

  const FileMenuSelected(this.name, this.icon);
}

enum StatusCoworkingReserve {
  @JsonValue('reserve')
  reserve,
  @JsonValue('came')
  came,
  @JsonValue('gone')
  gone,
  @JsonValue('not_come')
  notCome,
}

enum ProductType {
  @JsonValue('course')
  course,
  @JsonValue('extra')
  extra,
}

enum NpsPollQuestionsType {
  @JsonValue('range')
  range,
  @JsonValue('text')
  text,
}

enum NpsPollStatus {
  @JsonValue('draft')
  draft,
  @JsonValue('active')
  active,
  @JsonValue('archive')
  archive,
}

enum MasterClassStatus {
  @JsonValue('draft')
  draft,
  @JsonValue('active')
  active,
  @JsonValue('archive')
  archive,
  @JsonValue('completed')
  completed,
}

enum ServiceCenterStatus {
  @JsonValue('received')
  received,
  @JsonValue('servicing')
  servicing,
  @JsonValue('ready')
  ready,
  @JsonValue('returned')
  returned,
}

enum ProductSaleType {
  @JsonValue('money')
  money,
  @JsonValue('coin')
  coin,
  @JsonValue('package')
  package,
  @JsonValue('package_money')
  packageMoney,
}

enum ProductsModuleStatus {
  @JsonValue('draft')
  draft,
  @JsonValue('active')
  active,
  @JsonValue('archive')
  archive,
}

enum ModuleMaterialType {
  @JsonValue('text')
  text,
  @JsonValue('video')
  video,
  @JsonValue('test')
  test,
  @JsonValue('practice')
  practice,
}

enum ServiceType {
  @JsonValue('video')
  video,
  @JsonValue('coworking')
  coworking,
  @JsonValue('text')
  text,
}

enum ServiceStatus {
  @JsonValue('draft')
  draft,
  @JsonValue('active')
  active,
  @JsonValue('archive')
  archive,
}
