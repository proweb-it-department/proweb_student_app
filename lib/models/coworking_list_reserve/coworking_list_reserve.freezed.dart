// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coworking_list_reserve.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CoworkingListReserve implements DiagnosticableTreeMixin {

@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'created_by_id') int? get createdById;@JsonKey(name: 'updated_by_id') int? get updatedById;@JsonKey(name: 'student') Student? get student;@JsonKey(name: 'seat') Seat? get seat;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'coworker_user_id') int? get coworkerUserId;@JsonKey(name: 'coworker') User? get coworker;@JsonKey(name: 'teacher_user_id') int? get teacherUserId;@JsonKey(name: 'teacher') User? get teacher;@JsonKey(name: 'date') String? get date;@JsonKey(name: 'reserve_time') String? get reserveTime;@JsonKey(name: 'arrival_time') String? get arrivalTime;@JsonKey(name: 'leaving_time') String? get leavingTime;@JsonKey(name: 'current_lesson_number') int? get currentLessonNumber;@JsonKey(name: 'status') StatusCoworkingReserve? get status;@JsonKey(name: 'no_seat_reservation') bool? get noSeatReservation;@JsonKey(name: 'note') String? get note;
/// Create a copy of CoworkingListReserve
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoworkingListReserveCopyWith<CoworkingListReserve> get copyWith => _$CoworkingListReserveCopyWithImpl<CoworkingListReserve>(this as CoworkingListReserve, _$identity);

  /// Serializes this CoworkingListReserve to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CoworkingListReserve'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdById', createdById))..add(DiagnosticsProperty('updatedById', updatedById))..add(DiagnosticsProperty('student', student))..add(DiagnosticsProperty('seat', seat))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('coworkerUserId', coworkerUserId))..add(DiagnosticsProperty('coworker', coworker))..add(DiagnosticsProperty('teacherUserId', teacherUserId))..add(DiagnosticsProperty('teacher', teacher))..add(DiagnosticsProperty('date', date))..add(DiagnosticsProperty('reserveTime', reserveTime))..add(DiagnosticsProperty('arrivalTime', arrivalTime))..add(DiagnosticsProperty('leavingTime', leavingTime))..add(DiagnosticsProperty('currentLessonNumber', currentLessonNumber))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('noSeatReservation', noSeatReservation))..add(DiagnosticsProperty('note', note));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoworkingListReserve&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.updatedById, updatedById) || other.updatedById == updatedById)&&(identical(other.student, student) || other.student == student)&&(identical(other.seat, seat) || other.seat == seat)&&(identical(other.id, id) || other.id == id)&&(identical(other.coworkerUserId, coworkerUserId) || other.coworkerUserId == coworkerUserId)&&(identical(other.coworker, coworker) || other.coworker == coworker)&&(identical(other.teacherUserId, teacherUserId) || other.teacherUserId == teacherUserId)&&(identical(other.teacher, teacher) || other.teacher == teacher)&&(identical(other.date, date) || other.date == date)&&(identical(other.reserveTime, reserveTime) || other.reserveTime == reserveTime)&&(identical(other.arrivalTime, arrivalTime) || other.arrivalTime == arrivalTime)&&(identical(other.leavingTime, leavingTime) || other.leavingTime == leavingTime)&&(identical(other.currentLessonNumber, currentLessonNumber) || other.currentLessonNumber == currentLessonNumber)&&(identical(other.status, status) || other.status == status)&&(identical(other.noSeatReservation, noSeatReservation) || other.noSeatReservation == noSeatReservation)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,createdAt,updatedAt,createdById,updatedById,student,seat,id,coworkerUserId,coworker,teacherUserId,teacher,date,reserveTime,arrivalTime,leavingTime,currentLessonNumber,status,noSeatReservation,note]);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CoworkingListReserve(createdAt: $createdAt, updatedAt: $updatedAt, createdById: $createdById, updatedById: $updatedById, student: $student, seat: $seat, id: $id, coworkerUserId: $coworkerUserId, coworker: $coworker, teacherUserId: $teacherUserId, teacher: $teacher, date: $date, reserveTime: $reserveTime, arrivalTime: $arrivalTime, leavingTime: $leavingTime, currentLessonNumber: $currentLessonNumber, status: $status, noSeatReservation: $noSeatReservation, note: $note)';
}


}

/// @nodoc
abstract mixin class $CoworkingListReserveCopyWith<$Res>  {
  factory $CoworkingListReserveCopyWith(CoworkingListReserve value, $Res Function(CoworkingListReserve) _then) = _$CoworkingListReserveCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by_id') int? createdById,@JsonKey(name: 'updated_by_id') int? updatedById,@JsonKey(name: 'student') Student? student,@JsonKey(name: 'seat') Seat? seat,@JsonKey(name: 'id') int? id,@JsonKey(name: 'coworker_user_id') int? coworkerUserId,@JsonKey(name: 'coworker') User? coworker,@JsonKey(name: 'teacher_user_id') int? teacherUserId,@JsonKey(name: 'teacher') User? teacher,@JsonKey(name: 'date') String? date,@JsonKey(name: 'reserve_time') String? reserveTime,@JsonKey(name: 'arrival_time') String? arrivalTime,@JsonKey(name: 'leaving_time') String? leavingTime,@JsonKey(name: 'current_lesson_number') int? currentLessonNumber,@JsonKey(name: 'status') StatusCoworkingReserve? status,@JsonKey(name: 'no_seat_reservation') bool? noSeatReservation,@JsonKey(name: 'note') String? note
});


$StudentCopyWith<$Res>? get student;$SeatCopyWith<$Res>? get seat;$UserCopyWith<$Res>? get coworker;$UserCopyWith<$Res>? get teacher;

}
/// @nodoc
class _$CoworkingListReserveCopyWithImpl<$Res>
    implements $CoworkingListReserveCopyWith<$Res> {
  _$CoworkingListReserveCopyWithImpl(this._self, this._then);

  final CoworkingListReserve _self;
  final $Res Function(CoworkingListReserve) _then;

/// Create a copy of CoworkingListReserve
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdById = freezed,Object? updatedById = freezed,Object? student = freezed,Object? seat = freezed,Object? id = freezed,Object? coworkerUserId = freezed,Object? coworker = freezed,Object? teacherUserId = freezed,Object? teacher = freezed,Object? date = freezed,Object? reserveTime = freezed,Object? arrivalTime = freezed,Object? leavingTime = freezed,Object? currentLessonNumber = freezed,Object? status = freezed,Object? noSeatReservation = freezed,Object? note = freezed,}) {
  return _then(_self.copyWith(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdById: freezed == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as int?,updatedById: freezed == updatedById ? _self.updatedById : updatedById // ignore: cast_nullable_to_non_nullable
as int?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as Student?,seat: freezed == seat ? _self.seat : seat // ignore: cast_nullable_to_non_nullable
as Seat?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,coworkerUserId: freezed == coworkerUserId ? _self.coworkerUserId : coworkerUserId // ignore: cast_nullable_to_non_nullable
as int?,coworker: freezed == coworker ? _self.coworker : coworker // ignore: cast_nullable_to_non_nullable
as User?,teacherUserId: freezed == teacherUserId ? _self.teacherUserId : teacherUserId // ignore: cast_nullable_to_non_nullable
as int?,teacher: freezed == teacher ? _self.teacher : teacher // ignore: cast_nullable_to_non_nullable
as User?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,reserveTime: freezed == reserveTime ? _self.reserveTime : reserveTime // ignore: cast_nullable_to_non_nullable
as String?,arrivalTime: freezed == arrivalTime ? _self.arrivalTime : arrivalTime // ignore: cast_nullable_to_non_nullable
as String?,leavingTime: freezed == leavingTime ? _self.leavingTime : leavingTime // ignore: cast_nullable_to_non_nullable
as String?,currentLessonNumber: freezed == currentLessonNumber ? _self.currentLessonNumber : currentLessonNumber // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusCoworkingReserve?,noSeatReservation: freezed == noSeatReservation ? _self.noSeatReservation : noSeatReservation // ignore: cast_nullable_to_non_nullable
as bool?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of CoworkingListReserve
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudentCopyWith<$Res>? get student {
    if (_self.student == null) {
    return null;
  }

  return $StudentCopyWith<$Res>(_self.student!, (value) {
    return _then(_self.copyWith(student: value));
  });
}/// Create a copy of CoworkingListReserve
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SeatCopyWith<$Res>? get seat {
    if (_self.seat == null) {
    return null;
  }

  return $SeatCopyWith<$Res>(_self.seat!, (value) {
    return _then(_self.copyWith(seat: value));
  });
}/// Create a copy of CoworkingListReserve
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get coworker {
    if (_self.coworker == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.coworker!, (value) {
    return _then(_self.copyWith(coworker: value));
  });
}/// Create a copy of CoworkingListReserve
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get teacher {
    if (_self.teacher == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.teacher!, (value) {
    return _then(_self.copyWith(teacher: value));
  });
}
}


/// Adds pattern-matching-related methods to [CoworkingListReserve].
extension CoworkingListReservePatterns on CoworkingListReserve {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CoworkingListReserve value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CoworkingListReserve() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CoworkingListReserve value)  $default,){
final _that = this;
switch (_that) {
case _CoworkingListReserve():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CoworkingListReserve value)?  $default,){
final _that = this;
switch (_that) {
case _CoworkingListReserve() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'student')  Student? student, @JsonKey(name: 'seat')  Seat? seat, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'coworker_user_id')  int? coworkerUserId, @JsonKey(name: 'coworker')  User? coworker, @JsonKey(name: 'teacher_user_id')  int? teacherUserId, @JsonKey(name: 'teacher')  User? teacher, @JsonKey(name: 'date')  String? date, @JsonKey(name: 'reserve_time')  String? reserveTime, @JsonKey(name: 'arrival_time')  String? arrivalTime, @JsonKey(name: 'leaving_time')  String? leavingTime, @JsonKey(name: 'current_lesson_number')  int? currentLessonNumber, @JsonKey(name: 'status')  StatusCoworkingReserve? status, @JsonKey(name: 'no_seat_reservation')  bool? noSeatReservation, @JsonKey(name: 'note')  String? note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CoworkingListReserve() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.student,_that.seat,_that.id,_that.coworkerUserId,_that.coworker,_that.teacherUserId,_that.teacher,_that.date,_that.reserveTime,_that.arrivalTime,_that.leavingTime,_that.currentLessonNumber,_that.status,_that.noSeatReservation,_that.note);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'student')  Student? student, @JsonKey(name: 'seat')  Seat? seat, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'coworker_user_id')  int? coworkerUserId, @JsonKey(name: 'coworker')  User? coworker, @JsonKey(name: 'teacher_user_id')  int? teacherUserId, @JsonKey(name: 'teacher')  User? teacher, @JsonKey(name: 'date')  String? date, @JsonKey(name: 'reserve_time')  String? reserveTime, @JsonKey(name: 'arrival_time')  String? arrivalTime, @JsonKey(name: 'leaving_time')  String? leavingTime, @JsonKey(name: 'current_lesson_number')  int? currentLessonNumber, @JsonKey(name: 'status')  StatusCoworkingReserve? status, @JsonKey(name: 'no_seat_reservation')  bool? noSeatReservation, @JsonKey(name: 'note')  String? note)  $default,) {final _that = this;
switch (_that) {
case _CoworkingListReserve():
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.student,_that.seat,_that.id,_that.coworkerUserId,_that.coworker,_that.teacherUserId,_that.teacher,_that.date,_that.reserveTime,_that.arrivalTime,_that.leavingTime,_that.currentLessonNumber,_that.status,_that.noSeatReservation,_that.note);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'student')  Student? student, @JsonKey(name: 'seat')  Seat? seat, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'coworker_user_id')  int? coworkerUserId, @JsonKey(name: 'coworker')  User? coworker, @JsonKey(name: 'teacher_user_id')  int? teacherUserId, @JsonKey(name: 'teacher')  User? teacher, @JsonKey(name: 'date')  String? date, @JsonKey(name: 'reserve_time')  String? reserveTime, @JsonKey(name: 'arrival_time')  String? arrivalTime, @JsonKey(name: 'leaving_time')  String? leavingTime, @JsonKey(name: 'current_lesson_number')  int? currentLessonNumber, @JsonKey(name: 'status')  StatusCoworkingReserve? status, @JsonKey(name: 'no_seat_reservation')  bool? noSeatReservation, @JsonKey(name: 'note')  String? note)?  $default,) {final _that = this;
switch (_that) {
case _CoworkingListReserve() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.student,_that.seat,_that.id,_that.coworkerUserId,_that.coworker,_that.teacherUserId,_that.teacher,_that.date,_that.reserveTime,_that.arrivalTime,_that.leavingTime,_that.currentLessonNumber,_that.status,_that.noSeatReservation,_that.note);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CoworkingListReserve with DiagnosticableTreeMixin implements CoworkingListReserve {
  const _CoworkingListReserve({@JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'created_by_id') this.createdById, @JsonKey(name: 'updated_by_id') this.updatedById, @JsonKey(name: 'student') this.student, @JsonKey(name: 'seat') this.seat, @JsonKey(name: 'id') this.id, @JsonKey(name: 'coworker_user_id') this.coworkerUserId, @JsonKey(name: 'coworker') this.coworker, @JsonKey(name: 'teacher_user_id') this.teacherUserId, @JsonKey(name: 'teacher') this.teacher, @JsonKey(name: 'date') this.date, @JsonKey(name: 'reserve_time') this.reserveTime, @JsonKey(name: 'arrival_time') this.arrivalTime, @JsonKey(name: 'leaving_time') this.leavingTime, @JsonKey(name: 'current_lesson_number') this.currentLessonNumber, @JsonKey(name: 'status') this.status, @JsonKey(name: 'no_seat_reservation') this.noSeatReservation, @JsonKey(name: 'note') this.note});
  factory _CoworkingListReserve.fromJson(Map<String, dynamic> json) => _$CoworkingListReserveFromJson(json);

@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'created_by_id') final  int? createdById;
@override@JsonKey(name: 'updated_by_id') final  int? updatedById;
@override@JsonKey(name: 'student') final  Student? student;
@override@JsonKey(name: 'seat') final  Seat? seat;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'coworker_user_id') final  int? coworkerUserId;
@override@JsonKey(name: 'coworker') final  User? coworker;
@override@JsonKey(name: 'teacher_user_id') final  int? teacherUserId;
@override@JsonKey(name: 'teacher') final  User? teacher;
@override@JsonKey(name: 'date') final  String? date;
@override@JsonKey(name: 'reserve_time') final  String? reserveTime;
@override@JsonKey(name: 'arrival_time') final  String? arrivalTime;
@override@JsonKey(name: 'leaving_time') final  String? leavingTime;
@override@JsonKey(name: 'current_lesson_number') final  int? currentLessonNumber;
@override@JsonKey(name: 'status') final  StatusCoworkingReserve? status;
@override@JsonKey(name: 'no_seat_reservation') final  bool? noSeatReservation;
@override@JsonKey(name: 'note') final  String? note;

/// Create a copy of CoworkingListReserve
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoworkingListReserveCopyWith<_CoworkingListReserve> get copyWith => __$CoworkingListReserveCopyWithImpl<_CoworkingListReserve>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CoworkingListReserveToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CoworkingListReserve'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdById', createdById))..add(DiagnosticsProperty('updatedById', updatedById))..add(DiagnosticsProperty('student', student))..add(DiagnosticsProperty('seat', seat))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('coworkerUserId', coworkerUserId))..add(DiagnosticsProperty('coworker', coworker))..add(DiagnosticsProperty('teacherUserId', teacherUserId))..add(DiagnosticsProperty('teacher', teacher))..add(DiagnosticsProperty('date', date))..add(DiagnosticsProperty('reserveTime', reserveTime))..add(DiagnosticsProperty('arrivalTime', arrivalTime))..add(DiagnosticsProperty('leavingTime', leavingTime))..add(DiagnosticsProperty('currentLessonNumber', currentLessonNumber))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('noSeatReservation', noSeatReservation))..add(DiagnosticsProperty('note', note));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CoworkingListReserve&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.updatedById, updatedById) || other.updatedById == updatedById)&&(identical(other.student, student) || other.student == student)&&(identical(other.seat, seat) || other.seat == seat)&&(identical(other.id, id) || other.id == id)&&(identical(other.coworkerUserId, coworkerUserId) || other.coworkerUserId == coworkerUserId)&&(identical(other.coworker, coworker) || other.coworker == coworker)&&(identical(other.teacherUserId, teacherUserId) || other.teacherUserId == teacherUserId)&&(identical(other.teacher, teacher) || other.teacher == teacher)&&(identical(other.date, date) || other.date == date)&&(identical(other.reserveTime, reserveTime) || other.reserveTime == reserveTime)&&(identical(other.arrivalTime, arrivalTime) || other.arrivalTime == arrivalTime)&&(identical(other.leavingTime, leavingTime) || other.leavingTime == leavingTime)&&(identical(other.currentLessonNumber, currentLessonNumber) || other.currentLessonNumber == currentLessonNumber)&&(identical(other.status, status) || other.status == status)&&(identical(other.noSeatReservation, noSeatReservation) || other.noSeatReservation == noSeatReservation)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,createdAt,updatedAt,createdById,updatedById,student,seat,id,coworkerUserId,coworker,teacherUserId,teacher,date,reserveTime,arrivalTime,leavingTime,currentLessonNumber,status,noSeatReservation,note]);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CoworkingListReserve(createdAt: $createdAt, updatedAt: $updatedAt, createdById: $createdById, updatedById: $updatedById, student: $student, seat: $seat, id: $id, coworkerUserId: $coworkerUserId, coworker: $coworker, teacherUserId: $teacherUserId, teacher: $teacher, date: $date, reserveTime: $reserveTime, arrivalTime: $arrivalTime, leavingTime: $leavingTime, currentLessonNumber: $currentLessonNumber, status: $status, noSeatReservation: $noSeatReservation, note: $note)';
}


}

/// @nodoc
abstract mixin class _$CoworkingListReserveCopyWith<$Res> implements $CoworkingListReserveCopyWith<$Res> {
  factory _$CoworkingListReserveCopyWith(_CoworkingListReserve value, $Res Function(_CoworkingListReserve) _then) = __$CoworkingListReserveCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by_id') int? createdById,@JsonKey(name: 'updated_by_id') int? updatedById,@JsonKey(name: 'student') Student? student,@JsonKey(name: 'seat') Seat? seat,@JsonKey(name: 'id') int? id,@JsonKey(name: 'coworker_user_id') int? coworkerUserId,@JsonKey(name: 'coworker') User? coworker,@JsonKey(name: 'teacher_user_id') int? teacherUserId,@JsonKey(name: 'teacher') User? teacher,@JsonKey(name: 'date') String? date,@JsonKey(name: 'reserve_time') String? reserveTime,@JsonKey(name: 'arrival_time') String? arrivalTime,@JsonKey(name: 'leaving_time') String? leavingTime,@JsonKey(name: 'current_lesson_number') int? currentLessonNumber,@JsonKey(name: 'status') StatusCoworkingReserve? status,@JsonKey(name: 'no_seat_reservation') bool? noSeatReservation,@JsonKey(name: 'note') String? note
});


@override $StudentCopyWith<$Res>? get student;@override $SeatCopyWith<$Res>? get seat;@override $UserCopyWith<$Res>? get coworker;@override $UserCopyWith<$Res>? get teacher;

}
/// @nodoc
class __$CoworkingListReserveCopyWithImpl<$Res>
    implements _$CoworkingListReserveCopyWith<$Res> {
  __$CoworkingListReserveCopyWithImpl(this._self, this._then);

  final _CoworkingListReserve _self;
  final $Res Function(_CoworkingListReserve) _then;

/// Create a copy of CoworkingListReserve
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdById = freezed,Object? updatedById = freezed,Object? student = freezed,Object? seat = freezed,Object? id = freezed,Object? coworkerUserId = freezed,Object? coworker = freezed,Object? teacherUserId = freezed,Object? teacher = freezed,Object? date = freezed,Object? reserveTime = freezed,Object? arrivalTime = freezed,Object? leavingTime = freezed,Object? currentLessonNumber = freezed,Object? status = freezed,Object? noSeatReservation = freezed,Object? note = freezed,}) {
  return _then(_CoworkingListReserve(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdById: freezed == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as int?,updatedById: freezed == updatedById ? _self.updatedById : updatedById // ignore: cast_nullable_to_non_nullable
as int?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as Student?,seat: freezed == seat ? _self.seat : seat // ignore: cast_nullable_to_non_nullable
as Seat?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,coworkerUserId: freezed == coworkerUserId ? _self.coworkerUserId : coworkerUserId // ignore: cast_nullable_to_non_nullable
as int?,coworker: freezed == coworker ? _self.coworker : coworker // ignore: cast_nullable_to_non_nullable
as User?,teacherUserId: freezed == teacherUserId ? _self.teacherUserId : teacherUserId // ignore: cast_nullable_to_non_nullable
as int?,teacher: freezed == teacher ? _self.teacher : teacher // ignore: cast_nullable_to_non_nullable
as User?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,reserveTime: freezed == reserveTime ? _self.reserveTime : reserveTime // ignore: cast_nullable_to_non_nullable
as String?,arrivalTime: freezed == arrivalTime ? _self.arrivalTime : arrivalTime // ignore: cast_nullable_to_non_nullable
as String?,leavingTime: freezed == leavingTime ? _self.leavingTime : leavingTime // ignore: cast_nullable_to_non_nullable
as String?,currentLessonNumber: freezed == currentLessonNumber ? _self.currentLessonNumber : currentLessonNumber // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusCoworkingReserve?,noSeatReservation: freezed == noSeatReservation ? _self.noSeatReservation : noSeatReservation // ignore: cast_nullable_to_non_nullable
as bool?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of CoworkingListReserve
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudentCopyWith<$Res>? get student {
    if (_self.student == null) {
    return null;
  }

  return $StudentCopyWith<$Res>(_self.student!, (value) {
    return _then(_self.copyWith(student: value));
  });
}/// Create a copy of CoworkingListReserve
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SeatCopyWith<$Res>? get seat {
    if (_self.seat == null) {
    return null;
  }

  return $SeatCopyWith<$Res>(_self.seat!, (value) {
    return _then(_self.copyWith(seat: value));
  });
}/// Create a copy of CoworkingListReserve
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get coworker {
    if (_self.coworker == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.coworker!, (value) {
    return _then(_self.copyWith(coworker: value));
  });
}/// Create a copy of CoworkingListReserve
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get teacher {
    if (_self.teacher == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.teacher!, (value) {
    return _then(_self.copyWith(teacher: value));
  });
}
}


/// @nodoc
mixin _$Student implements DiagnosticableTreeMixin {

@JsonKey(name: 'has_package') bool? get hasPackage;@JsonKey(name: 'group') Group? get group;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'user_id') int? get userId;
/// Create a copy of Student
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentCopyWith<Student> get copyWith => _$StudentCopyWithImpl<Student>(this as Student, _$identity);

  /// Serializes this Student to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Student'))
    ..add(DiagnosticsProperty('hasPackage', hasPackage))..add(DiagnosticsProperty('group', group))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('userId', userId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Student&&(identical(other.hasPackage, hasPackage) || other.hasPackage == hasPackage)&&(identical(other.group, group) || other.group == group)&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hasPackage,group,id,userId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Student(hasPackage: $hasPackage, group: $group, id: $id, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $StudentCopyWith<$Res>  {
  factory $StudentCopyWith(Student value, $Res Function(Student) _then) = _$StudentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'has_package') bool? hasPackage,@JsonKey(name: 'group') Group? group,@JsonKey(name: 'id') int? id,@JsonKey(name: 'user_id') int? userId
});


$GroupCopyWith<$Res>? get group;

}
/// @nodoc
class _$StudentCopyWithImpl<$Res>
    implements $StudentCopyWith<$Res> {
  _$StudentCopyWithImpl(this._self, this._then);

  final Student _self;
  final $Res Function(Student) _then;

/// Create a copy of Student
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hasPackage = freezed,Object? group = freezed,Object? id = freezed,Object? userId = freezed,}) {
  return _then(_self.copyWith(
hasPackage: freezed == hasPackage ? _self.hasPackage : hasPackage // ignore: cast_nullable_to_non_nullable
as bool?,group: freezed == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as Group?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of Student
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupCopyWith<$Res>? get group {
    if (_self.group == null) {
    return null;
  }

  return $GroupCopyWith<$Res>(_self.group!, (value) {
    return _then(_self.copyWith(group: value));
  });
}
}


/// Adds pattern-matching-related methods to [Student].
extension StudentPatterns on Student {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Student value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Student() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Student value)  $default,){
final _that = this;
switch (_that) {
case _Student():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Student value)?  $default,){
final _that = this;
switch (_that) {
case _Student() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'has_package')  bool? hasPackage, @JsonKey(name: 'group')  Group? group, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'user_id')  int? userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Student() when $default != null:
return $default(_that.hasPackage,_that.group,_that.id,_that.userId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'has_package')  bool? hasPackage, @JsonKey(name: 'group')  Group? group, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'user_id')  int? userId)  $default,) {final _that = this;
switch (_that) {
case _Student():
return $default(_that.hasPackage,_that.group,_that.id,_that.userId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'has_package')  bool? hasPackage, @JsonKey(name: 'group')  Group? group, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'user_id')  int? userId)?  $default,) {final _that = this;
switch (_that) {
case _Student() when $default != null:
return $default(_that.hasPackage,_that.group,_that.id,_that.userId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Student with DiagnosticableTreeMixin implements Student {
  const _Student({@JsonKey(name: 'has_package') this.hasPackage, @JsonKey(name: 'group') this.group, @JsonKey(name: 'id') this.id, @JsonKey(name: 'user_id') this.userId});
  factory _Student.fromJson(Map<String, dynamic> json) => _$StudentFromJson(json);

@override@JsonKey(name: 'has_package') final  bool? hasPackage;
@override@JsonKey(name: 'group') final  Group? group;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'user_id') final  int? userId;

/// Create a copy of Student
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentCopyWith<_Student> get copyWith => __$StudentCopyWithImpl<_Student>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Student'))
    ..add(DiagnosticsProperty('hasPackage', hasPackage))..add(DiagnosticsProperty('group', group))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('userId', userId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Student&&(identical(other.hasPackage, hasPackage) || other.hasPackage == hasPackage)&&(identical(other.group, group) || other.group == group)&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hasPackage,group,id,userId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Student(hasPackage: $hasPackage, group: $group, id: $id, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$StudentCopyWith<$Res> implements $StudentCopyWith<$Res> {
  factory _$StudentCopyWith(_Student value, $Res Function(_Student) _then) = __$StudentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'has_package') bool? hasPackage,@JsonKey(name: 'group') Group? group,@JsonKey(name: 'id') int? id,@JsonKey(name: 'user_id') int? userId
});


@override $GroupCopyWith<$Res>? get group;

}
/// @nodoc
class __$StudentCopyWithImpl<$Res>
    implements _$StudentCopyWith<$Res> {
  __$StudentCopyWithImpl(this._self, this._then);

  final _Student _self;
  final $Res Function(_Student) _then;

/// Create a copy of Student
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hasPackage = freezed,Object? group = freezed,Object? id = freezed,Object? userId = freezed,}) {
  return _then(_Student(
hasPackage: freezed == hasPackage ? _self.hasPackage : hasPackage // ignore: cast_nullable_to_non_nullable
as bool?,group: freezed == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as Group?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of Student
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupCopyWith<$Res>? get group {
    if (_self.group == null) {
    return null;
  }

  return $GroupCopyWith<$Res>(_self.group!, (value) {
    return _then(_self.copyWith(group: value));
  });
}
}


/// @nodoc
mixin _$Group implements DiagnosticableTreeMixin {

@JsonKey(name: 'course') Course? get course;@JsonKey(name: 'version') Version? get version;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'days') List<int>? get days;
/// Create a copy of Group
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupCopyWith<Group> get copyWith => _$GroupCopyWithImpl<Group>(this as Group, _$identity);

  /// Serializes this Group to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Group'))
    ..add(DiagnosticsProperty('course', course))..add(DiagnosticsProperty('version', version))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('days', days));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Group&&(identical(other.course, course) || other.course == course)&&(identical(other.version, version) || other.version == version)&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.days, days));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,course,version,id,const DeepCollectionEquality().hash(days));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Group(course: $course, version: $version, id: $id, days: $days)';
}


}

/// @nodoc
abstract mixin class $GroupCopyWith<$Res>  {
  factory $GroupCopyWith(Group value, $Res Function(Group) _then) = _$GroupCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'course') Course? course,@JsonKey(name: 'version') Version? version,@JsonKey(name: 'id') int? id,@JsonKey(name: 'days') List<int>? days
});


$CourseCopyWith<$Res>? get course;$VersionCopyWith<$Res>? get version;

}
/// @nodoc
class _$GroupCopyWithImpl<$Res>
    implements $GroupCopyWith<$Res> {
  _$GroupCopyWithImpl(this._self, this._then);

  final Group _self;
  final $Res Function(Group) _then;

/// Create a copy of Group
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? course = freezed,Object? version = freezed,Object? id = freezed,Object? days = freezed,}) {
  return _then(_self.copyWith(
course: freezed == course ? _self.course : course // ignore: cast_nullable_to_non_nullable
as Course?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as Version?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,days: freezed == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as List<int>?,
  ));
}
/// Create a copy of Group
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CourseCopyWith<$Res>? get course {
    if (_self.course == null) {
    return null;
  }

  return $CourseCopyWith<$Res>(_self.course!, (value) {
    return _then(_self.copyWith(course: value));
  });
}/// Create a copy of Group
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VersionCopyWith<$Res>? get version {
    if (_self.version == null) {
    return null;
  }

  return $VersionCopyWith<$Res>(_self.version!, (value) {
    return _then(_self.copyWith(version: value));
  });
}
}


/// Adds pattern-matching-related methods to [Group].
extension GroupPatterns on Group {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Group value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Group() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Group value)  $default,){
final _that = this;
switch (_that) {
case _Group():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Group value)?  $default,){
final _that = this;
switch (_that) {
case _Group() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'course')  Course? course, @JsonKey(name: 'version')  Version? version, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'days')  List<int>? days)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Group() when $default != null:
return $default(_that.course,_that.version,_that.id,_that.days);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'course')  Course? course, @JsonKey(name: 'version')  Version? version, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'days')  List<int>? days)  $default,) {final _that = this;
switch (_that) {
case _Group():
return $default(_that.course,_that.version,_that.id,_that.days);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'course')  Course? course, @JsonKey(name: 'version')  Version? version, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'days')  List<int>? days)?  $default,) {final _that = this;
switch (_that) {
case _Group() when $default != null:
return $default(_that.course,_that.version,_that.id,_that.days);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Group with DiagnosticableTreeMixin implements Group {
  const _Group({@JsonKey(name: 'course') this.course, @JsonKey(name: 'version') this.version, @JsonKey(name: 'id') this.id, @JsonKey(name: 'days') final  List<int>? days}): _days = days;
  factory _Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);

@override@JsonKey(name: 'course') final  Course? course;
@override@JsonKey(name: 'version') final  Version? version;
@override@JsonKey(name: 'id') final  int? id;
 final  List<int>? _days;
@override@JsonKey(name: 'days') List<int>? get days {
  final value = _days;
  if (value == null) return null;
  if (_days is EqualUnmodifiableListView) return _days;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Group
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroupCopyWith<_Group> get copyWith => __$GroupCopyWithImpl<_Group>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GroupToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Group'))
    ..add(DiagnosticsProperty('course', course))..add(DiagnosticsProperty('version', version))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('days', days));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Group&&(identical(other.course, course) || other.course == course)&&(identical(other.version, version) || other.version == version)&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._days, _days));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,course,version,id,const DeepCollectionEquality().hash(_days));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Group(course: $course, version: $version, id: $id, days: $days)';
}


}

/// @nodoc
abstract mixin class _$GroupCopyWith<$Res> implements $GroupCopyWith<$Res> {
  factory _$GroupCopyWith(_Group value, $Res Function(_Group) _then) = __$GroupCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'course') Course? course,@JsonKey(name: 'version') Version? version,@JsonKey(name: 'id') int? id,@JsonKey(name: 'days') List<int>? days
});


@override $CourseCopyWith<$Res>? get course;@override $VersionCopyWith<$Res>? get version;

}
/// @nodoc
class __$GroupCopyWithImpl<$Res>
    implements _$GroupCopyWith<$Res> {
  __$GroupCopyWithImpl(this._self, this._then);

  final _Group _self;
  final $Res Function(_Group) _then;

/// Create a copy of Group
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? course = freezed,Object? version = freezed,Object? id = freezed,Object? days = freezed,}) {
  return _then(_Group(
course: freezed == course ? _self.course : course // ignore: cast_nullable_to_non_nullable
as Course?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as Version?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,days: freezed == days ? _self._days : days // ignore: cast_nullable_to_non_nullable
as List<int>?,
  ));
}

/// Create a copy of Group
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CourseCopyWith<$Res>? get course {
    if (_self.course == null) {
    return null;
  }

  return $CourseCopyWith<$Res>(_self.course!, (value) {
    return _then(_self.copyWith(course: value));
  });
}/// Create a copy of Group
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VersionCopyWith<$Res>? get version {
    if (_self.version == null) {
    return null;
  }

  return $VersionCopyWith<$Res>(_self.version!, (value) {
    return _then(_self.copyWith(version: value));
  });
}
}


/// @nodoc
mixin _$Course implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'icon') String? get icon;@JsonKey(name: 'banner') String? get banner;@JsonKey(name: 'ads_banner') String? get adsBanner;@JsonKey(name: 'color') String? get color;@JsonKey(name: 'slug') String? get slug;@JsonKey(name: 'language') String? get language;
/// Create a copy of Course
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseCopyWith<Course> get copyWith => _$CourseCopyWithImpl<Course>(this as Course, _$identity);

  /// Serializes this Course to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Course'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('icon', icon))..add(DiagnosticsProperty('banner', banner))..add(DiagnosticsProperty('adsBanner', adsBanner))..add(DiagnosticsProperty('color', color))..add(DiagnosticsProperty('slug', slug))..add(DiagnosticsProperty('language', language));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Course&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.adsBanner, adsBanner) || other.adsBanner == adsBanner)&&(identical(other.color, color) || other.color == color)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.language, language) || other.language == language));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,icon,banner,adsBanner,color,slug,language);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Course(id: $id, name: $name, icon: $icon, banner: $banner, adsBanner: $adsBanner, color: $color, slug: $slug, language: $language)';
}


}

/// @nodoc
abstract mixin class $CourseCopyWith<$Res>  {
  factory $CourseCopyWith(Course value, $Res Function(Course) _then) = _$CourseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'icon') String? icon,@JsonKey(name: 'banner') String? banner,@JsonKey(name: 'ads_banner') String? adsBanner,@JsonKey(name: 'color') String? color,@JsonKey(name: 'slug') String? slug,@JsonKey(name: 'language') String? language
});




}
/// @nodoc
class _$CourseCopyWithImpl<$Res>
    implements $CourseCopyWith<$Res> {
  _$CourseCopyWithImpl(this._self, this._then);

  final Course _self;
  final $Res Function(Course) _then;

/// Create a copy of Course
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? icon = freezed,Object? banner = freezed,Object? adsBanner = freezed,Object? color = freezed,Object? slug = freezed,Object? language = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as String?,adsBanner: freezed == adsBanner ? _self.adsBanner : adsBanner // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Course].
extension CoursePatterns on Course {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Course value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Course() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Course value)  $default,){
final _that = this;
switch (_that) {
case _Course():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Course value)?  $default,){
final _that = this;
switch (_that) {
case _Course() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'icon')  String? icon, @JsonKey(name: 'banner')  String? banner, @JsonKey(name: 'ads_banner')  String? adsBanner, @JsonKey(name: 'color')  String? color, @JsonKey(name: 'slug')  String? slug, @JsonKey(name: 'language')  String? language)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Course() when $default != null:
return $default(_that.id,_that.name,_that.icon,_that.banner,_that.adsBanner,_that.color,_that.slug,_that.language);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'icon')  String? icon, @JsonKey(name: 'banner')  String? banner, @JsonKey(name: 'ads_banner')  String? adsBanner, @JsonKey(name: 'color')  String? color, @JsonKey(name: 'slug')  String? slug, @JsonKey(name: 'language')  String? language)  $default,) {final _that = this;
switch (_that) {
case _Course():
return $default(_that.id,_that.name,_that.icon,_that.banner,_that.adsBanner,_that.color,_that.slug,_that.language);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'icon')  String? icon, @JsonKey(name: 'banner')  String? banner, @JsonKey(name: 'ads_banner')  String? adsBanner, @JsonKey(name: 'color')  String? color, @JsonKey(name: 'slug')  String? slug, @JsonKey(name: 'language')  String? language)?  $default,) {final _that = this;
switch (_that) {
case _Course() when $default != null:
return $default(_that.id,_that.name,_that.icon,_that.banner,_that.adsBanner,_that.color,_that.slug,_that.language);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Course with DiagnosticableTreeMixin implements Course {
  const _Course({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'icon') this.icon, @JsonKey(name: 'banner') this.banner, @JsonKey(name: 'ads_banner') this.adsBanner, @JsonKey(name: 'color') this.color, @JsonKey(name: 'slug') this.slug, @JsonKey(name: 'language') this.language});
  factory _Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'icon') final  String? icon;
@override@JsonKey(name: 'banner') final  String? banner;
@override@JsonKey(name: 'ads_banner') final  String? adsBanner;
@override@JsonKey(name: 'color') final  String? color;
@override@JsonKey(name: 'slug') final  String? slug;
@override@JsonKey(name: 'language') final  String? language;

/// Create a copy of Course
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CourseCopyWith<_Course> get copyWith => __$CourseCopyWithImpl<_Course>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CourseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Course'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('icon', icon))..add(DiagnosticsProperty('banner', banner))..add(DiagnosticsProperty('adsBanner', adsBanner))..add(DiagnosticsProperty('color', color))..add(DiagnosticsProperty('slug', slug))..add(DiagnosticsProperty('language', language));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Course&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.adsBanner, adsBanner) || other.adsBanner == adsBanner)&&(identical(other.color, color) || other.color == color)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.language, language) || other.language == language));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,icon,banner,adsBanner,color,slug,language);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Course(id: $id, name: $name, icon: $icon, banner: $banner, adsBanner: $adsBanner, color: $color, slug: $slug, language: $language)';
}


}

/// @nodoc
abstract mixin class _$CourseCopyWith<$Res> implements $CourseCopyWith<$Res> {
  factory _$CourseCopyWith(_Course value, $Res Function(_Course) _then) = __$CourseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'icon') String? icon,@JsonKey(name: 'banner') String? banner,@JsonKey(name: 'ads_banner') String? adsBanner,@JsonKey(name: 'color') String? color,@JsonKey(name: 'slug') String? slug,@JsonKey(name: 'language') String? language
});




}
/// @nodoc
class __$CourseCopyWithImpl<$Res>
    implements _$CourseCopyWith<$Res> {
  __$CourseCopyWithImpl(this._self, this._then);

  final _Course _self;
  final $Res Function(_Course) _then;

/// Create a copy of Course
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? icon = freezed,Object? banner = freezed,Object? adsBanner = freezed,Object? color = freezed,Object? slug = freezed,Object? language = freezed,}) {
  return _then(_Course(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as String?,adsBanner: freezed == adsBanner ? _self.adsBanner : adsBanner // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Version implements DiagnosticableTreeMixin {

@JsonKey(name: 'block_count') int? get blockCount;@JsonKey(name: 'block_lesson_count') int? get blockLessonCount;@JsonKey(name: 'lesson_count') int? get lessonCount;
/// Create a copy of Version
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VersionCopyWith<Version> get copyWith => _$VersionCopyWithImpl<Version>(this as Version, _$identity);

  /// Serializes this Version to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Version'))
    ..add(DiagnosticsProperty('blockCount', blockCount))..add(DiagnosticsProperty('blockLessonCount', blockLessonCount))..add(DiagnosticsProperty('lessonCount', lessonCount));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Version&&(identical(other.blockCount, blockCount) || other.blockCount == blockCount)&&(identical(other.blockLessonCount, blockLessonCount) || other.blockLessonCount == blockLessonCount)&&(identical(other.lessonCount, lessonCount) || other.lessonCount == lessonCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,blockCount,blockLessonCount,lessonCount);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Version(blockCount: $blockCount, blockLessonCount: $blockLessonCount, lessonCount: $lessonCount)';
}


}

/// @nodoc
abstract mixin class $VersionCopyWith<$Res>  {
  factory $VersionCopyWith(Version value, $Res Function(Version) _then) = _$VersionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'block_count') int? blockCount,@JsonKey(name: 'block_lesson_count') int? blockLessonCount,@JsonKey(name: 'lesson_count') int? lessonCount
});




}
/// @nodoc
class _$VersionCopyWithImpl<$Res>
    implements $VersionCopyWith<$Res> {
  _$VersionCopyWithImpl(this._self, this._then);

  final Version _self;
  final $Res Function(Version) _then;

/// Create a copy of Version
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? blockCount = freezed,Object? blockLessonCount = freezed,Object? lessonCount = freezed,}) {
  return _then(_self.copyWith(
blockCount: freezed == blockCount ? _self.blockCount : blockCount // ignore: cast_nullable_to_non_nullable
as int?,blockLessonCount: freezed == blockLessonCount ? _self.blockLessonCount : blockLessonCount // ignore: cast_nullable_to_non_nullable
as int?,lessonCount: freezed == lessonCount ? _self.lessonCount : lessonCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Version].
extension VersionPatterns on Version {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Version value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Version() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Version value)  $default,){
final _that = this;
switch (_that) {
case _Version():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Version value)?  $default,){
final _that = this;
switch (_that) {
case _Version() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'block_count')  int? blockCount, @JsonKey(name: 'block_lesson_count')  int? blockLessonCount, @JsonKey(name: 'lesson_count')  int? lessonCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Version() when $default != null:
return $default(_that.blockCount,_that.blockLessonCount,_that.lessonCount);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'block_count')  int? blockCount, @JsonKey(name: 'block_lesson_count')  int? blockLessonCount, @JsonKey(name: 'lesson_count')  int? lessonCount)  $default,) {final _that = this;
switch (_that) {
case _Version():
return $default(_that.blockCount,_that.blockLessonCount,_that.lessonCount);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'block_count')  int? blockCount, @JsonKey(name: 'block_lesson_count')  int? blockLessonCount, @JsonKey(name: 'lesson_count')  int? lessonCount)?  $default,) {final _that = this;
switch (_that) {
case _Version() when $default != null:
return $default(_that.blockCount,_that.blockLessonCount,_that.lessonCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Version with DiagnosticableTreeMixin implements Version {
  const _Version({@JsonKey(name: 'block_count') this.blockCount, @JsonKey(name: 'block_lesson_count') this.blockLessonCount, @JsonKey(name: 'lesson_count') this.lessonCount});
  factory _Version.fromJson(Map<String, dynamic> json) => _$VersionFromJson(json);

@override@JsonKey(name: 'block_count') final  int? blockCount;
@override@JsonKey(name: 'block_lesson_count') final  int? blockLessonCount;
@override@JsonKey(name: 'lesson_count') final  int? lessonCount;

/// Create a copy of Version
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VersionCopyWith<_Version> get copyWith => __$VersionCopyWithImpl<_Version>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VersionToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Version'))
    ..add(DiagnosticsProperty('blockCount', blockCount))..add(DiagnosticsProperty('blockLessonCount', blockLessonCount))..add(DiagnosticsProperty('lessonCount', lessonCount));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Version&&(identical(other.blockCount, blockCount) || other.blockCount == blockCount)&&(identical(other.blockLessonCount, blockLessonCount) || other.blockLessonCount == blockLessonCount)&&(identical(other.lessonCount, lessonCount) || other.lessonCount == lessonCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,blockCount,blockLessonCount,lessonCount);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Version(blockCount: $blockCount, blockLessonCount: $blockLessonCount, lessonCount: $lessonCount)';
}


}

/// @nodoc
abstract mixin class _$VersionCopyWith<$Res> implements $VersionCopyWith<$Res> {
  factory _$VersionCopyWith(_Version value, $Res Function(_Version) _then) = __$VersionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'block_count') int? blockCount,@JsonKey(name: 'block_lesson_count') int? blockLessonCount,@JsonKey(name: 'lesson_count') int? lessonCount
});




}
/// @nodoc
class __$VersionCopyWithImpl<$Res>
    implements _$VersionCopyWith<$Res> {
  __$VersionCopyWithImpl(this._self, this._then);

  final _Version _self;
  final $Res Function(_Version) _then;

/// Create a copy of Version
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? blockCount = freezed,Object? blockLessonCount = freezed,Object? lessonCount = freezed,}) {
  return _then(_Version(
blockCount: freezed == blockCount ? _self.blockCount : blockCount // ignore: cast_nullable_to_non_nullable
as int?,blockLessonCount: freezed == blockLessonCount ? _self.blockLessonCount : blockLessonCount // ignore: cast_nullable_to_non_nullable
as int?,lessonCount: freezed == lessonCount ? _self.lessonCount : lessonCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$Seat implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'cabinet_id') int? get cabinetId;@JsonKey(name: 'type') String? get type;@JsonKey(name: 'number') int? get number;@JsonKey(name: 'status') String? get status;@JsonKey(name: 'cabinet') Cabinet? get cabinet;
/// Create a copy of Seat
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SeatCopyWith<Seat> get copyWith => _$SeatCopyWithImpl<Seat>(this as Seat, _$identity);

  /// Serializes this Seat to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Seat'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('cabinetId', cabinetId))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('number', number))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('cabinet', cabinet));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Seat&&(identical(other.id, id) || other.id == id)&&(identical(other.cabinetId, cabinetId) || other.cabinetId == cabinetId)&&(identical(other.type, type) || other.type == type)&&(identical(other.number, number) || other.number == number)&&(identical(other.status, status) || other.status == status)&&(identical(other.cabinet, cabinet) || other.cabinet == cabinet));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,cabinetId,type,number,status,cabinet);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Seat(id: $id, cabinetId: $cabinetId, type: $type, number: $number, status: $status, cabinet: $cabinet)';
}


}

/// @nodoc
abstract mixin class $SeatCopyWith<$Res>  {
  factory $SeatCopyWith(Seat value, $Res Function(Seat) _then) = _$SeatCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'cabinet_id') int? cabinetId,@JsonKey(name: 'type') String? type,@JsonKey(name: 'number') int? number,@JsonKey(name: 'status') String? status,@JsonKey(name: 'cabinet') Cabinet? cabinet
});


$CabinetCopyWith<$Res>? get cabinet;

}
/// @nodoc
class _$SeatCopyWithImpl<$Res>
    implements $SeatCopyWith<$Res> {
  _$SeatCopyWithImpl(this._self, this._then);

  final Seat _self;
  final $Res Function(Seat) _then;

/// Create a copy of Seat
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? cabinetId = freezed,Object? type = freezed,Object? number = freezed,Object? status = freezed,Object? cabinet = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,cabinetId: freezed == cabinetId ? _self.cabinetId : cabinetId // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,cabinet: freezed == cabinet ? _self.cabinet : cabinet // ignore: cast_nullable_to_non_nullable
as Cabinet?,
  ));
}
/// Create a copy of Seat
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CabinetCopyWith<$Res>? get cabinet {
    if (_self.cabinet == null) {
    return null;
  }

  return $CabinetCopyWith<$Res>(_self.cabinet!, (value) {
    return _then(_self.copyWith(cabinet: value));
  });
}
}


/// Adds pattern-matching-related methods to [Seat].
extension SeatPatterns on Seat {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Seat value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Seat() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Seat value)  $default,){
final _that = this;
switch (_that) {
case _Seat():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Seat value)?  $default,){
final _that = this;
switch (_that) {
case _Seat() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'cabinet_id')  int? cabinetId, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'number')  int? number, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'cabinet')  Cabinet? cabinet)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Seat() when $default != null:
return $default(_that.id,_that.cabinetId,_that.type,_that.number,_that.status,_that.cabinet);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'cabinet_id')  int? cabinetId, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'number')  int? number, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'cabinet')  Cabinet? cabinet)  $default,) {final _that = this;
switch (_that) {
case _Seat():
return $default(_that.id,_that.cabinetId,_that.type,_that.number,_that.status,_that.cabinet);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'cabinet_id')  int? cabinetId, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'number')  int? number, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'cabinet')  Cabinet? cabinet)?  $default,) {final _that = this;
switch (_that) {
case _Seat() when $default != null:
return $default(_that.id,_that.cabinetId,_that.type,_that.number,_that.status,_that.cabinet);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Seat with DiagnosticableTreeMixin implements Seat {
  const _Seat({@JsonKey(name: 'id') this.id, @JsonKey(name: 'cabinet_id') this.cabinetId, @JsonKey(name: 'type') this.type, @JsonKey(name: 'number') this.number, @JsonKey(name: 'status') this.status, @JsonKey(name: 'cabinet') this.cabinet});
  factory _Seat.fromJson(Map<String, dynamic> json) => _$SeatFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'cabinet_id') final  int? cabinetId;
@override@JsonKey(name: 'type') final  String? type;
@override@JsonKey(name: 'number') final  int? number;
@override@JsonKey(name: 'status') final  String? status;
@override@JsonKey(name: 'cabinet') final  Cabinet? cabinet;

/// Create a copy of Seat
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SeatCopyWith<_Seat> get copyWith => __$SeatCopyWithImpl<_Seat>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SeatToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Seat'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('cabinetId', cabinetId))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('number', number))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('cabinet', cabinet));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Seat&&(identical(other.id, id) || other.id == id)&&(identical(other.cabinetId, cabinetId) || other.cabinetId == cabinetId)&&(identical(other.type, type) || other.type == type)&&(identical(other.number, number) || other.number == number)&&(identical(other.status, status) || other.status == status)&&(identical(other.cabinet, cabinet) || other.cabinet == cabinet));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,cabinetId,type,number,status,cabinet);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Seat(id: $id, cabinetId: $cabinetId, type: $type, number: $number, status: $status, cabinet: $cabinet)';
}


}

/// @nodoc
abstract mixin class _$SeatCopyWith<$Res> implements $SeatCopyWith<$Res> {
  factory _$SeatCopyWith(_Seat value, $Res Function(_Seat) _then) = __$SeatCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'cabinet_id') int? cabinetId,@JsonKey(name: 'type') String? type,@JsonKey(name: 'number') int? number,@JsonKey(name: 'status') String? status,@JsonKey(name: 'cabinet') Cabinet? cabinet
});


@override $CabinetCopyWith<$Res>? get cabinet;

}
/// @nodoc
class __$SeatCopyWithImpl<$Res>
    implements _$SeatCopyWith<$Res> {
  __$SeatCopyWithImpl(this._self, this._then);

  final _Seat _self;
  final $Res Function(_Seat) _then;

/// Create a copy of Seat
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? cabinetId = freezed,Object? type = freezed,Object? number = freezed,Object? status = freezed,Object? cabinet = freezed,}) {
  return _then(_Seat(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,cabinetId: freezed == cabinetId ? _self.cabinetId : cabinetId // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,cabinet: freezed == cabinet ? _self.cabinet : cabinet // ignore: cast_nullable_to_non_nullable
as Cabinet?,
  ));
}

/// Create a copy of Seat
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CabinetCopyWith<$Res>? get cabinet {
    if (_self.cabinet == null) {
    return null;
  }

  return $CabinetCopyWith<$Res>(_self.cabinet!, (value) {
    return _then(_self.copyWith(cabinet: value));
  });
}
}


/// @nodoc
mixin _$Cabinet implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'branch_id') int? get branchId;@JsonKey(name: 'type') String? get type;@JsonKey(name: 'capacity') int? get capacity;@JsonKey(name: 'description') String? get description;@JsonKey(name: 'status') String? get status;@JsonKey(name: 'note') String? get note;@JsonKey(name: 'branch') Branch? get branch;
/// Create a copy of Cabinet
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CabinetCopyWith<Cabinet> get copyWith => _$CabinetCopyWithImpl<Cabinet>(this as Cabinet, _$identity);

  /// Serializes this Cabinet to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Cabinet'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('branchId', branchId))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('capacity', capacity))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('note', note))..add(DiagnosticsProperty('branch', branch));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Cabinet&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.type, type) || other.type == type)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.note, note) || other.note == note)&&(identical(other.branch, branch) || other.branch == branch));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,branchId,type,capacity,description,status,note,branch);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Cabinet(id: $id, name: $name, branchId: $branchId, type: $type, capacity: $capacity, description: $description, status: $status, note: $note, branch: $branch)';
}


}

/// @nodoc
abstract mixin class $CabinetCopyWith<$Res>  {
  factory $CabinetCopyWith(Cabinet value, $Res Function(Cabinet) _then) = _$CabinetCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'branch_id') int? branchId,@JsonKey(name: 'type') String? type,@JsonKey(name: 'capacity') int? capacity,@JsonKey(name: 'description') String? description,@JsonKey(name: 'status') String? status,@JsonKey(name: 'note') String? note,@JsonKey(name: 'branch') Branch? branch
});


$BranchCopyWith<$Res>? get branch;

}
/// @nodoc
class _$CabinetCopyWithImpl<$Res>
    implements $CabinetCopyWith<$Res> {
  _$CabinetCopyWithImpl(this._self, this._then);

  final Cabinet _self;
  final $Res Function(Cabinet) _then;

/// Create a copy of Cabinet
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? branchId = freezed,Object? type = freezed,Object? capacity = freezed,Object? description = freezed,Object? status = freezed,Object? note = freezed,Object? branch = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,capacity: freezed == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,branch: freezed == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as Branch?,
  ));
}
/// Create a copy of Cabinet
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BranchCopyWith<$Res>? get branch {
    if (_self.branch == null) {
    return null;
  }

  return $BranchCopyWith<$Res>(_self.branch!, (value) {
    return _then(_self.copyWith(branch: value));
  });
}
}


/// Adds pattern-matching-related methods to [Cabinet].
extension CabinetPatterns on Cabinet {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Cabinet value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Cabinet() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Cabinet value)  $default,){
final _that = this;
switch (_that) {
case _Cabinet():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Cabinet value)?  $default,){
final _that = this;
switch (_that) {
case _Cabinet() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'branch_id')  int? branchId, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'capacity')  int? capacity, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'note')  String? note, @JsonKey(name: 'branch')  Branch? branch)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Cabinet() when $default != null:
return $default(_that.id,_that.name,_that.branchId,_that.type,_that.capacity,_that.description,_that.status,_that.note,_that.branch);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'branch_id')  int? branchId, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'capacity')  int? capacity, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'note')  String? note, @JsonKey(name: 'branch')  Branch? branch)  $default,) {final _that = this;
switch (_that) {
case _Cabinet():
return $default(_that.id,_that.name,_that.branchId,_that.type,_that.capacity,_that.description,_that.status,_that.note,_that.branch);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'branch_id')  int? branchId, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'capacity')  int? capacity, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'note')  String? note, @JsonKey(name: 'branch')  Branch? branch)?  $default,) {final _that = this;
switch (_that) {
case _Cabinet() when $default != null:
return $default(_that.id,_that.name,_that.branchId,_that.type,_that.capacity,_that.description,_that.status,_that.note,_that.branch);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Cabinet with DiagnosticableTreeMixin implements Cabinet {
  const _Cabinet({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'branch_id') this.branchId, @JsonKey(name: 'type') this.type, @JsonKey(name: 'capacity') this.capacity, @JsonKey(name: 'description') this.description, @JsonKey(name: 'status') this.status, @JsonKey(name: 'note') this.note, @JsonKey(name: 'branch') this.branch});
  factory _Cabinet.fromJson(Map<String, dynamic> json) => _$CabinetFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'branch_id') final  int? branchId;
@override@JsonKey(name: 'type') final  String? type;
@override@JsonKey(name: 'capacity') final  int? capacity;
@override@JsonKey(name: 'description') final  String? description;
@override@JsonKey(name: 'status') final  String? status;
@override@JsonKey(name: 'note') final  String? note;
@override@JsonKey(name: 'branch') final  Branch? branch;

/// Create a copy of Cabinet
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CabinetCopyWith<_Cabinet> get copyWith => __$CabinetCopyWithImpl<_Cabinet>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CabinetToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Cabinet'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('branchId', branchId))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('capacity', capacity))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('note', note))..add(DiagnosticsProperty('branch', branch));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Cabinet&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.type, type) || other.type == type)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.note, note) || other.note == note)&&(identical(other.branch, branch) || other.branch == branch));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,branchId,type,capacity,description,status,note,branch);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Cabinet(id: $id, name: $name, branchId: $branchId, type: $type, capacity: $capacity, description: $description, status: $status, note: $note, branch: $branch)';
}


}

/// @nodoc
abstract mixin class _$CabinetCopyWith<$Res> implements $CabinetCopyWith<$Res> {
  factory _$CabinetCopyWith(_Cabinet value, $Res Function(_Cabinet) _then) = __$CabinetCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'branch_id') int? branchId,@JsonKey(name: 'type') String? type,@JsonKey(name: 'capacity') int? capacity,@JsonKey(name: 'description') String? description,@JsonKey(name: 'status') String? status,@JsonKey(name: 'note') String? note,@JsonKey(name: 'branch') Branch? branch
});


@override $BranchCopyWith<$Res>? get branch;

}
/// @nodoc
class __$CabinetCopyWithImpl<$Res>
    implements _$CabinetCopyWith<$Res> {
  __$CabinetCopyWithImpl(this._self, this._then);

  final _Cabinet _self;
  final $Res Function(_Cabinet) _then;

/// Create a copy of Cabinet
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? branchId = freezed,Object? type = freezed,Object? capacity = freezed,Object? description = freezed,Object? status = freezed,Object? note = freezed,Object? branch = freezed,}) {
  return _then(_Cabinet(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,capacity: freezed == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,branch: freezed == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as Branch?,
  ));
}

/// Create a copy of Cabinet
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BranchCopyWith<$Res>? get branch {
    if (_self.branch == null) {
    return null;
  }

  return $BranchCopyWith<$Res>(_self.branch!, (value) {
    return _then(_self.copyWith(branch: value));
  });
}
}


/// @nodoc
mixin _$Branch implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'slug') String? get slug;@JsonKey(name: 'country') String? get country;@JsonKey(name: 'city') String? get city;@JsonKey(name: 'street') String? get street;@JsonKey(name: 'latitude') String? get latitude;@JsonKey(name: 'longitude') String? get longitude;@JsonKey(name: 'status') String? get status;
/// Create a copy of Branch
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BranchCopyWith<Branch> get copyWith => _$BranchCopyWithImpl<Branch>(this as Branch, _$identity);

  /// Serializes this Branch to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Branch'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('slug', slug))..add(DiagnosticsProperty('country', country))..add(DiagnosticsProperty('city', city))..add(DiagnosticsProperty('street', street))..add(DiagnosticsProperty('latitude', latitude))..add(DiagnosticsProperty('longitude', longitude))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Branch&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.country, country) || other.country == country)&&(identical(other.city, city) || other.city == city)&&(identical(other.street, street) || other.street == street)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,country,city,street,latitude,longitude,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Branch(id: $id, name: $name, slug: $slug, country: $country, city: $city, street: $street, latitude: $latitude, longitude: $longitude, status: $status)';
}


}

/// @nodoc
abstract mixin class $BranchCopyWith<$Res>  {
  factory $BranchCopyWith(Branch value, $Res Function(Branch) _then) = _$BranchCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'slug') String? slug,@JsonKey(name: 'country') String? country,@JsonKey(name: 'city') String? city,@JsonKey(name: 'street') String? street,@JsonKey(name: 'latitude') String? latitude,@JsonKey(name: 'longitude') String? longitude,@JsonKey(name: 'status') String? status
});




}
/// @nodoc
class _$BranchCopyWithImpl<$Res>
    implements $BranchCopyWith<$Res> {
  _$BranchCopyWithImpl(this._self, this._then);

  final Branch _self;
  final $Res Function(Branch) _then;

/// Create a copy of Branch
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? slug = freezed,Object? country = freezed,Object? city = freezed,Object? street = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,street: freezed == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Branch].
extension BranchPatterns on Branch {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Branch value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Branch() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Branch value)  $default,){
final _that = this;
switch (_that) {
case _Branch():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Branch value)?  $default,){
final _that = this;
switch (_that) {
case _Branch() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'slug')  String? slug, @JsonKey(name: 'country')  String? country, @JsonKey(name: 'city')  String? city, @JsonKey(name: 'street')  String? street, @JsonKey(name: 'latitude')  String? latitude, @JsonKey(name: 'longitude')  String? longitude, @JsonKey(name: 'status')  String? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Branch() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.country,_that.city,_that.street,_that.latitude,_that.longitude,_that.status);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'slug')  String? slug, @JsonKey(name: 'country')  String? country, @JsonKey(name: 'city')  String? city, @JsonKey(name: 'street')  String? street, @JsonKey(name: 'latitude')  String? latitude, @JsonKey(name: 'longitude')  String? longitude, @JsonKey(name: 'status')  String? status)  $default,) {final _that = this;
switch (_that) {
case _Branch():
return $default(_that.id,_that.name,_that.slug,_that.country,_that.city,_that.street,_that.latitude,_that.longitude,_that.status);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'slug')  String? slug, @JsonKey(name: 'country')  String? country, @JsonKey(name: 'city')  String? city, @JsonKey(name: 'street')  String? street, @JsonKey(name: 'latitude')  String? latitude, @JsonKey(name: 'longitude')  String? longitude, @JsonKey(name: 'status')  String? status)?  $default,) {final _that = this;
switch (_that) {
case _Branch() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.country,_that.city,_that.street,_that.latitude,_that.longitude,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Branch with DiagnosticableTreeMixin implements Branch {
  const _Branch({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'slug') this.slug, @JsonKey(name: 'country') this.country, @JsonKey(name: 'city') this.city, @JsonKey(name: 'street') this.street, @JsonKey(name: 'latitude') this.latitude, @JsonKey(name: 'longitude') this.longitude, @JsonKey(name: 'status') this.status});
  factory _Branch.fromJson(Map<String, dynamic> json) => _$BranchFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'slug') final  String? slug;
@override@JsonKey(name: 'country') final  String? country;
@override@JsonKey(name: 'city') final  String? city;
@override@JsonKey(name: 'street') final  String? street;
@override@JsonKey(name: 'latitude') final  String? latitude;
@override@JsonKey(name: 'longitude') final  String? longitude;
@override@JsonKey(name: 'status') final  String? status;

/// Create a copy of Branch
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BranchCopyWith<_Branch> get copyWith => __$BranchCopyWithImpl<_Branch>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BranchToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Branch'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('slug', slug))..add(DiagnosticsProperty('country', country))..add(DiagnosticsProperty('city', city))..add(DiagnosticsProperty('street', street))..add(DiagnosticsProperty('latitude', latitude))..add(DiagnosticsProperty('longitude', longitude))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Branch&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.country, country) || other.country == country)&&(identical(other.city, city) || other.city == city)&&(identical(other.street, street) || other.street == street)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,country,city,street,latitude,longitude,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Branch(id: $id, name: $name, slug: $slug, country: $country, city: $city, street: $street, latitude: $latitude, longitude: $longitude, status: $status)';
}


}

/// @nodoc
abstract mixin class _$BranchCopyWith<$Res> implements $BranchCopyWith<$Res> {
  factory _$BranchCopyWith(_Branch value, $Res Function(_Branch) _then) = __$BranchCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'slug') String? slug,@JsonKey(name: 'country') String? country,@JsonKey(name: 'city') String? city,@JsonKey(name: 'street') String? street,@JsonKey(name: 'latitude') String? latitude,@JsonKey(name: 'longitude') String? longitude,@JsonKey(name: 'status') String? status
});




}
/// @nodoc
class __$BranchCopyWithImpl<$Res>
    implements _$BranchCopyWith<$Res> {
  __$BranchCopyWithImpl(this._self, this._then);

  final _Branch _self;
  final $Res Function(_Branch) _then;

/// Create a copy of Branch
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? slug = freezed,Object? country = freezed,Object? city = freezed,Object? street = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? status = freezed,}) {
  return _then(_Branch(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,street: freezed == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
