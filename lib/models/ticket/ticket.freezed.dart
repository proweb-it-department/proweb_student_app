// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Ticket implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'opened_user') UserIdDefault? get openedUser;@JsonKey(name: 'closed_user') UserIdDefault? get closedUser;@JsonKey(name: 'responsible_user') UserIdDefault? get responsibleUser;@JsonKey(name: 'type') FeadbackType? get type;@JsonKey(name: 'status') FeadbackStatus? get status;@JsonKey(name: 'open_date') String? get openDate;@JsonKey(name: 'closed_date') String? get closedDate;@JsonKey(name: 'text') String? get text;@JsonKey(name: 'score') int? get score;@JsonKey(name: 'closing_offers') List<ClosingOffers>? get closingOffers;@JsonKey(name: 'tags') List<Tags>? get tags;@JsonKey(name: 'student_lesson_relation') StudentLessonRelation? get studentLessonRelation;@JsonKey(name: 'material_relation') MaterialRelation? get materialRelation;
/// Create a copy of Ticket
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketCopyWith<Ticket> get copyWith => _$TicketCopyWithImpl<Ticket>(this as Ticket, _$identity);

  /// Serializes this Ticket to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Ticket'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('openedUser', openedUser))..add(DiagnosticsProperty('closedUser', closedUser))..add(DiagnosticsProperty('responsibleUser', responsibleUser))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('openDate', openDate))..add(DiagnosticsProperty('closedDate', closedDate))..add(DiagnosticsProperty('text', text))..add(DiagnosticsProperty('score', score))..add(DiagnosticsProperty('closingOffers', closingOffers))..add(DiagnosticsProperty('tags', tags))..add(DiagnosticsProperty('studentLessonRelation', studentLessonRelation))..add(DiagnosticsProperty('materialRelation', materialRelation));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Ticket&&(identical(other.id, id) || other.id == id)&&(identical(other.openedUser, openedUser) || other.openedUser == openedUser)&&(identical(other.closedUser, closedUser) || other.closedUser == closedUser)&&(identical(other.responsibleUser, responsibleUser) || other.responsibleUser == responsibleUser)&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.openDate, openDate) || other.openDate == openDate)&&(identical(other.closedDate, closedDate) || other.closedDate == closedDate)&&(identical(other.text, text) || other.text == text)&&(identical(other.score, score) || other.score == score)&&const DeepCollectionEquality().equals(other.closingOffers, closingOffers)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.studentLessonRelation, studentLessonRelation) || other.studentLessonRelation == studentLessonRelation)&&(identical(other.materialRelation, materialRelation) || other.materialRelation == materialRelation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,openedUser,closedUser,responsibleUser,type,status,openDate,closedDate,text,score,const DeepCollectionEquality().hash(closingOffers),const DeepCollectionEquality().hash(tags),studentLessonRelation,materialRelation);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Ticket(id: $id, openedUser: $openedUser, closedUser: $closedUser, responsibleUser: $responsibleUser, type: $type, status: $status, openDate: $openDate, closedDate: $closedDate, text: $text, score: $score, closingOffers: $closingOffers, tags: $tags, studentLessonRelation: $studentLessonRelation, materialRelation: $materialRelation)';
}


}

/// @nodoc
abstract mixin class $TicketCopyWith<$Res>  {
  factory $TicketCopyWith(Ticket value, $Res Function(Ticket) _then) = _$TicketCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'opened_user') UserIdDefault? openedUser,@JsonKey(name: 'closed_user') UserIdDefault? closedUser,@JsonKey(name: 'responsible_user') UserIdDefault? responsibleUser,@JsonKey(name: 'type') FeadbackType? type,@JsonKey(name: 'status') FeadbackStatus? status,@JsonKey(name: 'open_date') String? openDate,@JsonKey(name: 'closed_date') String? closedDate,@JsonKey(name: 'text') String? text,@JsonKey(name: 'score') int? score,@JsonKey(name: 'closing_offers') List<ClosingOffers>? closingOffers,@JsonKey(name: 'tags') List<Tags>? tags,@JsonKey(name: 'student_lesson_relation') StudentLessonRelation? studentLessonRelation,@JsonKey(name: 'material_relation') MaterialRelation? materialRelation
});


$UserIdDefaultCopyWith<$Res>? get openedUser;$UserIdDefaultCopyWith<$Res>? get closedUser;$UserIdDefaultCopyWith<$Res>? get responsibleUser;$StudentLessonRelationCopyWith<$Res>? get studentLessonRelation;$MaterialRelationCopyWith<$Res>? get materialRelation;

}
/// @nodoc
class _$TicketCopyWithImpl<$Res>
    implements $TicketCopyWith<$Res> {
  _$TicketCopyWithImpl(this._self, this._then);

  final Ticket _self;
  final $Res Function(Ticket) _then;

/// Create a copy of Ticket
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? openedUser = freezed,Object? closedUser = freezed,Object? responsibleUser = freezed,Object? type = freezed,Object? status = freezed,Object? openDate = freezed,Object? closedDate = freezed,Object? text = freezed,Object? score = freezed,Object? closingOffers = freezed,Object? tags = freezed,Object? studentLessonRelation = freezed,Object? materialRelation = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,openedUser: freezed == openedUser ? _self.openedUser : openedUser // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,closedUser: freezed == closedUser ? _self.closedUser : closedUser // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,responsibleUser: freezed == responsibleUser ? _self.responsibleUser : responsibleUser // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as FeadbackType?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FeadbackStatus?,openDate: freezed == openDate ? _self.openDate : openDate // ignore: cast_nullable_to_non_nullable
as String?,closedDate: freezed == closedDate ? _self.closedDate : closedDate // ignore: cast_nullable_to_non_nullable
as String?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int?,closingOffers: freezed == closingOffers ? _self.closingOffers : closingOffers // ignore: cast_nullable_to_non_nullable
as List<ClosingOffers>?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<Tags>?,studentLessonRelation: freezed == studentLessonRelation ? _self.studentLessonRelation : studentLessonRelation // ignore: cast_nullable_to_non_nullable
as StudentLessonRelation?,materialRelation: freezed == materialRelation ? _self.materialRelation : materialRelation // ignore: cast_nullable_to_non_nullable
as MaterialRelation?,
  ));
}
/// Create a copy of Ticket
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserIdDefaultCopyWith<$Res>? get openedUser {
    if (_self.openedUser == null) {
    return null;
  }

  return $UserIdDefaultCopyWith<$Res>(_self.openedUser!, (value) {
    return _then(_self.copyWith(openedUser: value));
  });
}/// Create a copy of Ticket
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserIdDefaultCopyWith<$Res>? get closedUser {
    if (_self.closedUser == null) {
    return null;
  }

  return $UserIdDefaultCopyWith<$Res>(_self.closedUser!, (value) {
    return _then(_self.copyWith(closedUser: value));
  });
}/// Create a copy of Ticket
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserIdDefaultCopyWith<$Res>? get responsibleUser {
    if (_self.responsibleUser == null) {
    return null;
  }

  return $UserIdDefaultCopyWith<$Res>(_self.responsibleUser!, (value) {
    return _then(_self.copyWith(responsibleUser: value));
  });
}/// Create a copy of Ticket
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudentLessonRelationCopyWith<$Res>? get studentLessonRelation {
    if (_self.studentLessonRelation == null) {
    return null;
  }

  return $StudentLessonRelationCopyWith<$Res>(_self.studentLessonRelation!, (value) {
    return _then(_self.copyWith(studentLessonRelation: value));
  });
}/// Create a copy of Ticket
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MaterialRelationCopyWith<$Res>? get materialRelation {
    if (_self.materialRelation == null) {
    return null;
  }

  return $MaterialRelationCopyWith<$Res>(_self.materialRelation!, (value) {
    return _then(_self.copyWith(materialRelation: value));
  });
}
}


/// Adds pattern-matching-related methods to [Ticket].
extension TicketPatterns on Ticket {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Ticket value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Ticket() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Ticket value)  $default,){
final _that = this;
switch (_that) {
case _Ticket():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Ticket value)?  $default,){
final _that = this;
switch (_that) {
case _Ticket() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'opened_user')  UserIdDefault? openedUser, @JsonKey(name: 'closed_user')  UserIdDefault? closedUser, @JsonKey(name: 'responsible_user')  UserIdDefault? responsibleUser, @JsonKey(name: 'type')  FeadbackType? type, @JsonKey(name: 'status')  FeadbackStatus? status, @JsonKey(name: 'open_date')  String? openDate, @JsonKey(name: 'closed_date')  String? closedDate, @JsonKey(name: 'text')  String? text, @JsonKey(name: 'score')  int? score, @JsonKey(name: 'closing_offers')  List<ClosingOffers>? closingOffers, @JsonKey(name: 'tags')  List<Tags>? tags, @JsonKey(name: 'student_lesson_relation')  StudentLessonRelation? studentLessonRelation, @JsonKey(name: 'material_relation')  MaterialRelation? materialRelation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Ticket() when $default != null:
return $default(_that.id,_that.openedUser,_that.closedUser,_that.responsibleUser,_that.type,_that.status,_that.openDate,_that.closedDate,_that.text,_that.score,_that.closingOffers,_that.tags,_that.studentLessonRelation,_that.materialRelation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'opened_user')  UserIdDefault? openedUser, @JsonKey(name: 'closed_user')  UserIdDefault? closedUser, @JsonKey(name: 'responsible_user')  UserIdDefault? responsibleUser, @JsonKey(name: 'type')  FeadbackType? type, @JsonKey(name: 'status')  FeadbackStatus? status, @JsonKey(name: 'open_date')  String? openDate, @JsonKey(name: 'closed_date')  String? closedDate, @JsonKey(name: 'text')  String? text, @JsonKey(name: 'score')  int? score, @JsonKey(name: 'closing_offers')  List<ClosingOffers>? closingOffers, @JsonKey(name: 'tags')  List<Tags>? tags, @JsonKey(name: 'student_lesson_relation')  StudentLessonRelation? studentLessonRelation, @JsonKey(name: 'material_relation')  MaterialRelation? materialRelation)  $default,) {final _that = this;
switch (_that) {
case _Ticket():
return $default(_that.id,_that.openedUser,_that.closedUser,_that.responsibleUser,_that.type,_that.status,_that.openDate,_that.closedDate,_that.text,_that.score,_that.closingOffers,_that.tags,_that.studentLessonRelation,_that.materialRelation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'opened_user')  UserIdDefault? openedUser, @JsonKey(name: 'closed_user')  UserIdDefault? closedUser, @JsonKey(name: 'responsible_user')  UserIdDefault? responsibleUser, @JsonKey(name: 'type')  FeadbackType? type, @JsonKey(name: 'status')  FeadbackStatus? status, @JsonKey(name: 'open_date')  String? openDate, @JsonKey(name: 'closed_date')  String? closedDate, @JsonKey(name: 'text')  String? text, @JsonKey(name: 'score')  int? score, @JsonKey(name: 'closing_offers')  List<ClosingOffers>? closingOffers, @JsonKey(name: 'tags')  List<Tags>? tags, @JsonKey(name: 'student_lesson_relation')  StudentLessonRelation? studentLessonRelation, @JsonKey(name: 'material_relation')  MaterialRelation? materialRelation)?  $default,) {final _that = this;
switch (_that) {
case _Ticket() when $default != null:
return $default(_that.id,_that.openedUser,_that.closedUser,_that.responsibleUser,_that.type,_that.status,_that.openDate,_that.closedDate,_that.text,_that.score,_that.closingOffers,_that.tags,_that.studentLessonRelation,_that.materialRelation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Ticket with DiagnosticableTreeMixin implements Ticket {
  const _Ticket({@JsonKey(name: 'id') this.id, @JsonKey(name: 'opened_user') this.openedUser, @JsonKey(name: 'closed_user') this.closedUser, @JsonKey(name: 'responsible_user') this.responsibleUser, @JsonKey(name: 'type') this.type, @JsonKey(name: 'status') this.status, @JsonKey(name: 'open_date') this.openDate, @JsonKey(name: 'closed_date') this.closedDate, @JsonKey(name: 'text') this.text, @JsonKey(name: 'score') this.score, @JsonKey(name: 'closing_offers') final  List<ClosingOffers>? closingOffers, @JsonKey(name: 'tags') final  List<Tags>? tags, @JsonKey(name: 'student_lesson_relation') this.studentLessonRelation, @JsonKey(name: 'material_relation') this.materialRelation}): _closingOffers = closingOffers,_tags = tags;
  factory _Ticket.fromJson(Map<String, dynamic> json) => _$TicketFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'opened_user') final  UserIdDefault? openedUser;
@override@JsonKey(name: 'closed_user') final  UserIdDefault? closedUser;
@override@JsonKey(name: 'responsible_user') final  UserIdDefault? responsibleUser;
@override@JsonKey(name: 'type') final  FeadbackType? type;
@override@JsonKey(name: 'status') final  FeadbackStatus? status;
@override@JsonKey(name: 'open_date') final  String? openDate;
@override@JsonKey(name: 'closed_date') final  String? closedDate;
@override@JsonKey(name: 'text') final  String? text;
@override@JsonKey(name: 'score') final  int? score;
 final  List<ClosingOffers>? _closingOffers;
@override@JsonKey(name: 'closing_offers') List<ClosingOffers>? get closingOffers {
  final value = _closingOffers;
  if (value == null) return null;
  if (_closingOffers is EqualUnmodifiableListView) return _closingOffers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Tags>? _tags;
@override@JsonKey(name: 'tags') List<Tags>? get tags {
  final value = _tags;
  if (value == null) return null;
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'student_lesson_relation') final  StudentLessonRelation? studentLessonRelation;
@override@JsonKey(name: 'material_relation') final  MaterialRelation? materialRelation;

/// Create a copy of Ticket
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketCopyWith<_Ticket> get copyWith => __$TicketCopyWithImpl<_Ticket>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TicketToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Ticket'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('openedUser', openedUser))..add(DiagnosticsProperty('closedUser', closedUser))..add(DiagnosticsProperty('responsibleUser', responsibleUser))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('openDate', openDate))..add(DiagnosticsProperty('closedDate', closedDate))..add(DiagnosticsProperty('text', text))..add(DiagnosticsProperty('score', score))..add(DiagnosticsProperty('closingOffers', closingOffers))..add(DiagnosticsProperty('tags', tags))..add(DiagnosticsProperty('studentLessonRelation', studentLessonRelation))..add(DiagnosticsProperty('materialRelation', materialRelation));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Ticket&&(identical(other.id, id) || other.id == id)&&(identical(other.openedUser, openedUser) || other.openedUser == openedUser)&&(identical(other.closedUser, closedUser) || other.closedUser == closedUser)&&(identical(other.responsibleUser, responsibleUser) || other.responsibleUser == responsibleUser)&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.openDate, openDate) || other.openDate == openDate)&&(identical(other.closedDate, closedDate) || other.closedDate == closedDate)&&(identical(other.text, text) || other.text == text)&&(identical(other.score, score) || other.score == score)&&const DeepCollectionEquality().equals(other._closingOffers, _closingOffers)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.studentLessonRelation, studentLessonRelation) || other.studentLessonRelation == studentLessonRelation)&&(identical(other.materialRelation, materialRelation) || other.materialRelation == materialRelation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,openedUser,closedUser,responsibleUser,type,status,openDate,closedDate,text,score,const DeepCollectionEquality().hash(_closingOffers),const DeepCollectionEquality().hash(_tags),studentLessonRelation,materialRelation);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Ticket(id: $id, openedUser: $openedUser, closedUser: $closedUser, responsibleUser: $responsibleUser, type: $type, status: $status, openDate: $openDate, closedDate: $closedDate, text: $text, score: $score, closingOffers: $closingOffers, tags: $tags, studentLessonRelation: $studentLessonRelation, materialRelation: $materialRelation)';
}


}

/// @nodoc
abstract mixin class _$TicketCopyWith<$Res> implements $TicketCopyWith<$Res> {
  factory _$TicketCopyWith(_Ticket value, $Res Function(_Ticket) _then) = __$TicketCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'opened_user') UserIdDefault? openedUser,@JsonKey(name: 'closed_user') UserIdDefault? closedUser,@JsonKey(name: 'responsible_user') UserIdDefault? responsibleUser,@JsonKey(name: 'type') FeadbackType? type,@JsonKey(name: 'status') FeadbackStatus? status,@JsonKey(name: 'open_date') String? openDate,@JsonKey(name: 'closed_date') String? closedDate,@JsonKey(name: 'text') String? text,@JsonKey(name: 'score') int? score,@JsonKey(name: 'closing_offers') List<ClosingOffers>? closingOffers,@JsonKey(name: 'tags') List<Tags>? tags,@JsonKey(name: 'student_lesson_relation') StudentLessonRelation? studentLessonRelation,@JsonKey(name: 'material_relation') MaterialRelation? materialRelation
});


@override $UserIdDefaultCopyWith<$Res>? get openedUser;@override $UserIdDefaultCopyWith<$Res>? get closedUser;@override $UserIdDefaultCopyWith<$Res>? get responsibleUser;@override $StudentLessonRelationCopyWith<$Res>? get studentLessonRelation;@override $MaterialRelationCopyWith<$Res>? get materialRelation;

}
/// @nodoc
class __$TicketCopyWithImpl<$Res>
    implements _$TicketCopyWith<$Res> {
  __$TicketCopyWithImpl(this._self, this._then);

  final _Ticket _self;
  final $Res Function(_Ticket) _then;

/// Create a copy of Ticket
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? openedUser = freezed,Object? closedUser = freezed,Object? responsibleUser = freezed,Object? type = freezed,Object? status = freezed,Object? openDate = freezed,Object? closedDate = freezed,Object? text = freezed,Object? score = freezed,Object? closingOffers = freezed,Object? tags = freezed,Object? studentLessonRelation = freezed,Object? materialRelation = freezed,}) {
  return _then(_Ticket(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,openedUser: freezed == openedUser ? _self.openedUser : openedUser // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,closedUser: freezed == closedUser ? _self.closedUser : closedUser // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,responsibleUser: freezed == responsibleUser ? _self.responsibleUser : responsibleUser // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as FeadbackType?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FeadbackStatus?,openDate: freezed == openDate ? _self.openDate : openDate // ignore: cast_nullable_to_non_nullable
as String?,closedDate: freezed == closedDate ? _self.closedDate : closedDate // ignore: cast_nullable_to_non_nullable
as String?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int?,closingOffers: freezed == closingOffers ? _self._closingOffers : closingOffers // ignore: cast_nullable_to_non_nullable
as List<ClosingOffers>?,tags: freezed == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<Tags>?,studentLessonRelation: freezed == studentLessonRelation ? _self.studentLessonRelation : studentLessonRelation // ignore: cast_nullable_to_non_nullable
as StudentLessonRelation?,materialRelation: freezed == materialRelation ? _self.materialRelation : materialRelation // ignore: cast_nullable_to_non_nullable
as MaterialRelation?,
  ));
}

/// Create a copy of Ticket
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserIdDefaultCopyWith<$Res>? get openedUser {
    if (_self.openedUser == null) {
    return null;
  }

  return $UserIdDefaultCopyWith<$Res>(_self.openedUser!, (value) {
    return _then(_self.copyWith(openedUser: value));
  });
}/// Create a copy of Ticket
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserIdDefaultCopyWith<$Res>? get closedUser {
    if (_self.closedUser == null) {
    return null;
  }

  return $UserIdDefaultCopyWith<$Res>(_self.closedUser!, (value) {
    return _then(_self.copyWith(closedUser: value));
  });
}/// Create a copy of Ticket
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserIdDefaultCopyWith<$Res>? get responsibleUser {
    if (_self.responsibleUser == null) {
    return null;
  }

  return $UserIdDefaultCopyWith<$Res>(_self.responsibleUser!, (value) {
    return _then(_self.copyWith(responsibleUser: value));
  });
}/// Create a copy of Ticket
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudentLessonRelationCopyWith<$Res>? get studentLessonRelation {
    if (_self.studentLessonRelation == null) {
    return null;
  }

  return $StudentLessonRelationCopyWith<$Res>(_self.studentLessonRelation!, (value) {
    return _then(_self.copyWith(studentLessonRelation: value));
  });
}/// Create a copy of Ticket
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MaterialRelationCopyWith<$Res>? get materialRelation {
    if (_self.materialRelation == null) {
    return null;
  }

  return $MaterialRelationCopyWith<$Res>(_self.materialRelation!, (value) {
    return _then(_self.copyWith(materialRelation: value));
  });
}
}


/// @nodoc
mixin _$ClosingOffers implements DiagnosticableTreeMixin {

@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'created_by') UserIdDefault? get createdBy;@JsonKey(name: 'updated_by') UserIdDefault? get updatedBy;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'status') FeadbackOfferStatus? get status;
/// Create a copy of ClosingOffers
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClosingOffersCopyWith<ClosingOffers> get copyWith => _$ClosingOffersCopyWithImpl<ClosingOffers>(this as ClosingOffers, _$identity);

  /// Serializes this ClosingOffers to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ClosingOffers'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdBy', createdBy))..add(DiagnosticsProperty('updatedBy', updatedBy))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClosingOffers&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdBy,updatedBy,id,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ClosingOffers(createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, updatedBy: $updatedBy, id: $id, status: $status)';
}


}

/// @nodoc
abstract mixin class $ClosingOffersCopyWith<$Res>  {
  factory $ClosingOffersCopyWith(ClosingOffers value, $Res Function(ClosingOffers) _then) = _$ClosingOffersCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by') UserIdDefault? createdBy,@JsonKey(name: 'updated_by') UserIdDefault? updatedBy,@JsonKey(name: 'id') int? id,@JsonKey(name: 'status') FeadbackOfferStatus? status
});


$UserIdDefaultCopyWith<$Res>? get createdBy;$UserIdDefaultCopyWith<$Res>? get updatedBy;

}
/// @nodoc
class _$ClosingOffersCopyWithImpl<$Res>
    implements $ClosingOffersCopyWith<$Res> {
  _$ClosingOffersCopyWithImpl(this._self, this._then);

  final ClosingOffers _self;
  final $Res Function(ClosingOffers) _then;

/// Create a copy of ClosingOffers
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? updatedBy = freezed,Object? id = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FeadbackOfferStatus?,
  ));
}
/// Create a copy of ClosingOffers
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserIdDefaultCopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
    return null;
  }

  return $UserIdDefaultCopyWith<$Res>(_self.createdBy!, (value) {
    return _then(_self.copyWith(createdBy: value));
  });
}/// Create a copy of ClosingOffers
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserIdDefaultCopyWith<$Res>? get updatedBy {
    if (_self.updatedBy == null) {
    return null;
  }

  return $UserIdDefaultCopyWith<$Res>(_self.updatedBy!, (value) {
    return _then(_self.copyWith(updatedBy: value));
  });
}
}


/// Adds pattern-matching-related methods to [ClosingOffers].
extension ClosingOffersPatterns on ClosingOffers {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClosingOffers value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClosingOffers() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClosingOffers value)  $default,){
final _that = this;
switch (_that) {
case _ClosingOffers():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClosingOffers value)?  $default,){
final _that = this;
switch (_that) {
case _ClosingOffers() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'status')  FeadbackOfferStatus? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClosingOffers() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.id,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'status')  FeadbackOfferStatus? status)  $default,) {final _that = this;
switch (_that) {
case _ClosingOffers():
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.id,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'status')  FeadbackOfferStatus? status)?  $default,) {final _that = this;
switch (_that) {
case _ClosingOffers() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.id,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClosingOffers with DiagnosticableTreeMixin implements ClosingOffers {
  const _ClosingOffers({@JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'created_by') this.createdBy, @JsonKey(name: 'updated_by') this.updatedBy, @JsonKey(name: 'id') this.id, @JsonKey(name: 'status') this.status});
  factory _ClosingOffers.fromJson(Map<String, dynamic> json) => _$ClosingOffersFromJson(json);

@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'created_by') final  UserIdDefault? createdBy;
@override@JsonKey(name: 'updated_by') final  UserIdDefault? updatedBy;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'status') final  FeadbackOfferStatus? status;

/// Create a copy of ClosingOffers
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClosingOffersCopyWith<_ClosingOffers> get copyWith => __$ClosingOffersCopyWithImpl<_ClosingOffers>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClosingOffersToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ClosingOffers'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdBy', createdBy))..add(DiagnosticsProperty('updatedBy', updatedBy))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClosingOffers&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdBy,updatedBy,id,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ClosingOffers(createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, updatedBy: $updatedBy, id: $id, status: $status)';
}


}

/// @nodoc
abstract mixin class _$ClosingOffersCopyWith<$Res> implements $ClosingOffersCopyWith<$Res> {
  factory _$ClosingOffersCopyWith(_ClosingOffers value, $Res Function(_ClosingOffers) _then) = __$ClosingOffersCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by') UserIdDefault? createdBy,@JsonKey(name: 'updated_by') UserIdDefault? updatedBy,@JsonKey(name: 'id') int? id,@JsonKey(name: 'status') FeadbackOfferStatus? status
});


@override $UserIdDefaultCopyWith<$Res>? get createdBy;@override $UserIdDefaultCopyWith<$Res>? get updatedBy;

}
/// @nodoc
class __$ClosingOffersCopyWithImpl<$Res>
    implements _$ClosingOffersCopyWith<$Res> {
  __$ClosingOffersCopyWithImpl(this._self, this._then);

  final _ClosingOffers _self;
  final $Res Function(_ClosingOffers) _then;

/// Create a copy of ClosingOffers
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? updatedBy = freezed,Object? id = freezed,Object? status = freezed,}) {
  return _then(_ClosingOffers(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FeadbackOfferStatus?,
  ));
}

/// Create a copy of ClosingOffers
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserIdDefaultCopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
    return null;
  }

  return $UserIdDefaultCopyWith<$Res>(_self.createdBy!, (value) {
    return _then(_self.copyWith(createdBy: value));
  });
}/// Create a copy of ClosingOffers
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserIdDefaultCopyWith<$Res>? get updatedBy {
    if (_self.updatedBy == null) {
    return null;
  }

  return $UserIdDefaultCopyWith<$Res>(_self.updatedBy!, (value) {
    return _then(_self.copyWith(updatedBy: value));
  });
}
}


/// @nodoc
mixin _$Tags implements DiagnosticableTreeMixin {

@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'created_by_id') int? get createdById;@JsonKey(name: 'updated_by_id') int? get updatedById;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'ticket_id') int? get ticketId;@JsonKey(name: 'tag') Tag? get tag;
/// Create a copy of Tags
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TagsCopyWith<Tags> get copyWith => _$TagsCopyWithImpl<Tags>(this as Tags, _$identity);

  /// Serializes this Tags to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Tags'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdById', createdById))..add(DiagnosticsProperty('updatedById', updatedById))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('ticketId', ticketId))..add(DiagnosticsProperty('tag', tag));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Tags&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.updatedById, updatedById) || other.updatedById == updatedById)&&(identical(other.id, id) || other.id == id)&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.tag, tag) || other.tag == tag));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdById,updatedById,id,ticketId,tag);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Tags(createdAt: $createdAt, updatedAt: $updatedAt, createdById: $createdById, updatedById: $updatedById, id: $id, ticketId: $ticketId, tag: $tag)';
}


}

/// @nodoc
abstract mixin class $TagsCopyWith<$Res>  {
  factory $TagsCopyWith(Tags value, $Res Function(Tags) _then) = _$TagsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by_id') int? createdById,@JsonKey(name: 'updated_by_id') int? updatedById,@JsonKey(name: 'id') int? id,@JsonKey(name: 'ticket_id') int? ticketId,@JsonKey(name: 'tag') Tag? tag
});


$TagCopyWith<$Res>? get tag;

}
/// @nodoc
class _$TagsCopyWithImpl<$Res>
    implements $TagsCopyWith<$Res> {
  _$TagsCopyWithImpl(this._self, this._then);

  final Tags _self;
  final $Res Function(Tags) _then;

/// Create a copy of Tags
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdById = freezed,Object? updatedById = freezed,Object? id = freezed,Object? ticketId = freezed,Object? tag = freezed,}) {
  return _then(_self.copyWith(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdById: freezed == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as int?,updatedById: freezed == updatedById ? _self.updatedById : updatedById // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,ticketId: freezed == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int?,tag: freezed == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as Tag?,
  ));
}
/// Create a copy of Tags
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TagCopyWith<$Res>? get tag {
    if (_self.tag == null) {
    return null;
  }

  return $TagCopyWith<$Res>(_self.tag!, (value) {
    return _then(_self.copyWith(tag: value));
  });
}
}


/// Adds pattern-matching-related methods to [Tags].
extension TagsPatterns on Tags {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Tags value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Tags() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Tags value)  $default,){
final _that = this;
switch (_that) {
case _Tags():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Tags value)?  $default,){
final _that = this;
switch (_that) {
case _Tags() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'ticket_id')  int? ticketId, @JsonKey(name: 'tag')  Tag? tag)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Tags() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.id,_that.ticketId,_that.tag);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'ticket_id')  int? ticketId, @JsonKey(name: 'tag')  Tag? tag)  $default,) {final _that = this;
switch (_that) {
case _Tags():
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.id,_that.ticketId,_that.tag);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'ticket_id')  int? ticketId, @JsonKey(name: 'tag')  Tag? tag)?  $default,) {final _that = this;
switch (_that) {
case _Tags() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.id,_that.ticketId,_that.tag);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Tags with DiagnosticableTreeMixin implements Tags {
  const _Tags({@JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'created_by_id') this.createdById, @JsonKey(name: 'updated_by_id') this.updatedById, @JsonKey(name: 'id') this.id, @JsonKey(name: 'ticket_id') this.ticketId, @JsonKey(name: 'tag') this.tag});
  factory _Tags.fromJson(Map<String, dynamic> json) => _$TagsFromJson(json);

@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'created_by_id') final  int? createdById;
@override@JsonKey(name: 'updated_by_id') final  int? updatedById;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'ticket_id') final  int? ticketId;
@override@JsonKey(name: 'tag') final  Tag? tag;

/// Create a copy of Tags
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TagsCopyWith<_Tags> get copyWith => __$TagsCopyWithImpl<_Tags>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TagsToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Tags'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdById', createdById))..add(DiagnosticsProperty('updatedById', updatedById))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('ticketId', ticketId))..add(DiagnosticsProperty('tag', tag));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Tags&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.updatedById, updatedById) || other.updatedById == updatedById)&&(identical(other.id, id) || other.id == id)&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.tag, tag) || other.tag == tag));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdById,updatedById,id,ticketId,tag);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Tags(createdAt: $createdAt, updatedAt: $updatedAt, createdById: $createdById, updatedById: $updatedById, id: $id, ticketId: $ticketId, tag: $tag)';
}


}

/// @nodoc
abstract mixin class _$TagsCopyWith<$Res> implements $TagsCopyWith<$Res> {
  factory _$TagsCopyWith(_Tags value, $Res Function(_Tags) _then) = __$TagsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by_id') int? createdById,@JsonKey(name: 'updated_by_id') int? updatedById,@JsonKey(name: 'id') int? id,@JsonKey(name: 'ticket_id') int? ticketId,@JsonKey(name: 'tag') Tag? tag
});


@override $TagCopyWith<$Res>? get tag;

}
/// @nodoc
class __$TagsCopyWithImpl<$Res>
    implements _$TagsCopyWith<$Res> {
  __$TagsCopyWithImpl(this._self, this._then);

  final _Tags _self;
  final $Res Function(_Tags) _then;

/// Create a copy of Tags
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdById = freezed,Object? updatedById = freezed,Object? id = freezed,Object? ticketId = freezed,Object? tag = freezed,}) {
  return _then(_Tags(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdById: freezed == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as int?,updatedById: freezed == updatedById ? _self.updatedById : updatedById // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,ticketId: freezed == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int?,tag: freezed == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as Tag?,
  ));
}

/// Create a copy of Tags
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TagCopyWith<$Res>? get tag {
    if (_self.tag == null) {
    return null;
  }

  return $TagCopyWith<$Res>(_self.tag!, (value) {
    return _then(_self.copyWith(tag: value));
  });
}
}


/// @nodoc
mixin _$Tag implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'scores') List<int>? get scores;@JsonKey(name: 'archive') bool? get archive;@JsonKey(name: 'access_student') bool? get accessStudent;
/// Create a copy of Tag
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TagCopyWith<Tag> get copyWith => _$TagCopyWithImpl<Tag>(this as Tag, _$identity);

  /// Serializes this Tag to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Tag'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('scores', scores))..add(DiagnosticsProperty('archive', archive))..add(DiagnosticsProperty('accessStudent', accessStudent));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Tag&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.scores, scores)&&(identical(other.archive, archive) || other.archive == archive)&&(identical(other.accessStudent, accessStudent) || other.accessStudent == accessStudent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(scores),archive,accessStudent);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Tag(id: $id, name: $name, scores: $scores, archive: $archive, accessStudent: $accessStudent)';
}


}

/// @nodoc
abstract mixin class $TagCopyWith<$Res>  {
  factory $TagCopyWith(Tag value, $Res Function(Tag) _then) = _$TagCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'scores') List<int>? scores,@JsonKey(name: 'archive') bool? archive,@JsonKey(name: 'access_student') bool? accessStudent
});




}
/// @nodoc
class _$TagCopyWithImpl<$Res>
    implements $TagCopyWith<$Res> {
  _$TagCopyWithImpl(this._self, this._then);

  final Tag _self;
  final $Res Function(Tag) _then;

/// Create a copy of Tag
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? scores = freezed,Object? archive = freezed,Object? accessStudent = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,scores: freezed == scores ? _self.scores : scores // ignore: cast_nullable_to_non_nullable
as List<int>?,archive: freezed == archive ? _self.archive : archive // ignore: cast_nullable_to_non_nullable
as bool?,accessStudent: freezed == accessStudent ? _self.accessStudent : accessStudent // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [Tag].
extension TagPatterns on Tag {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Tag value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Tag() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Tag value)  $default,){
final _that = this;
switch (_that) {
case _Tag():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Tag value)?  $default,){
final _that = this;
switch (_that) {
case _Tag() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'scores')  List<int>? scores, @JsonKey(name: 'archive')  bool? archive, @JsonKey(name: 'access_student')  bool? accessStudent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Tag() when $default != null:
return $default(_that.id,_that.name,_that.scores,_that.archive,_that.accessStudent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'scores')  List<int>? scores, @JsonKey(name: 'archive')  bool? archive, @JsonKey(name: 'access_student')  bool? accessStudent)  $default,) {final _that = this;
switch (_that) {
case _Tag():
return $default(_that.id,_that.name,_that.scores,_that.archive,_that.accessStudent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'scores')  List<int>? scores, @JsonKey(name: 'archive')  bool? archive, @JsonKey(name: 'access_student')  bool? accessStudent)?  $default,) {final _that = this;
switch (_that) {
case _Tag() when $default != null:
return $default(_that.id,_that.name,_that.scores,_that.archive,_that.accessStudent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Tag with DiagnosticableTreeMixin implements Tag {
  const _Tag({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'scores') final  List<int>? scores, @JsonKey(name: 'archive') this.archive, @JsonKey(name: 'access_student') this.accessStudent}): _scores = scores;
  factory _Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
 final  List<int>? _scores;
@override@JsonKey(name: 'scores') List<int>? get scores {
  final value = _scores;
  if (value == null) return null;
  if (_scores is EqualUnmodifiableListView) return _scores;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'archive') final  bool? archive;
@override@JsonKey(name: 'access_student') final  bool? accessStudent;

/// Create a copy of Tag
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TagCopyWith<_Tag> get copyWith => __$TagCopyWithImpl<_Tag>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TagToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Tag'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('scores', scores))..add(DiagnosticsProperty('archive', archive))..add(DiagnosticsProperty('accessStudent', accessStudent));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Tag&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._scores, _scores)&&(identical(other.archive, archive) || other.archive == archive)&&(identical(other.accessStudent, accessStudent) || other.accessStudent == accessStudent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(_scores),archive,accessStudent);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Tag(id: $id, name: $name, scores: $scores, archive: $archive, accessStudent: $accessStudent)';
}


}

/// @nodoc
abstract mixin class _$TagCopyWith<$Res> implements $TagCopyWith<$Res> {
  factory _$TagCopyWith(_Tag value, $Res Function(_Tag) _then) = __$TagCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'scores') List<int>? scores,@JsonKey(name: 'archive') bool? archive,@JsonKey(name: 'access_student') bool? accessStudent
});




}
/// @nodoc
class __$TagCopyWithImpl<$Res>
    implements _$TagCopyWith<$Res> {
  __$TagCopyWithImpl(this._self, this._then);

  final _Tag _self;
  final $Res Function(_Tag) _then;

/// Create a copy of Tag
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? scores = freezed,Object? archive = freezed,Object? accessStudent = freezed,}) {
  return _then(_Tag(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,scores: freezed == scores ? _self._scores : scores // ignore: cast_nullable_to_non_nullable
as List<int>?,archive: freezed == archive ? _self.archive : archive // ignore: cast_nullable_to_non_nullable
as bool?,accessStudent: freezed == accessStudent ? _self.accessStudent : accessStudent // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$StudentLessonRelation implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'group_lesson_id') int? get groupLessonId;@JsonKey(name: 'student_id') int? get studentId;@JsonKey(name: 'access_to_lesson') bool? get accessToLesson;@JsonKey(name: 'visited') bool? get visited;@JsonKey(name: 'visited_type') String? get visitedType;@JsonKey(name: 'write_off_format') String? get writeOffFormat;@JsonKey(name: 'score') int? get score;@JsonKey(name: 'note') String? get note;@JsonKey(name: 'access_to_video') bool? get accessToVideo;@JsonKey(name: 'group_lesson') GroupLesson? get groupLesson;
/// Create a copy of StudentLessonRelation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentLessonRelationCopyWith<StudentLessonRelation> get copyWith => _$StudentLessonRelationCopyWithImpl<StudentLessonRelation>(this as StudentLessonRelation, _$identity);

  /// Serializes this StudentLessonRelation to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'StudentLessonRelation'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('groupLessonId', groupLessonId))..add(DiagnosticsProperty('studentId', studentId))..add(DiagnosticsProperty('accessToLesson', accessToLesson))..add(DiagnosticsProperty('visited', visited))..add(DiagnosticsProperty('visitedType', visitedType))..add(DiagnosticsProperty('writeOffFormat', writeOffFormat))..add(DiagnosticsProperty('score', score))..add(DiagnosticsProperty('note', note))..add(DiagnosticsProperty('accessToVideo', accessToVideo))..add(DiagnosticsProperty('groupLesson', groupLesson));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentLessonRelation&&(identical(other.id, id) || other.id == id)&&(identical(other.groupLessonId, groupLessonId) || other.groupLessonId == groupLessonId)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.accessToLesson, accessToLesson) || other.accessToLesson == accessToLesson)&&(identical(other.visited, visited) || other.visited == visited)&&(identical(other.visitedType, visitedType) || other.visitedType == visitedType)&&(identical(other.writeOffFormat, writeOffFormat) || other.writeOffFormat == writeOffFormat)&&(identical(other.score, score) || other.score == score)&&(identical(other.note, note) || other.note == note)&&(identical(other.accessToVideo, accessToVideo) || other.accessToVideo == accessToVideo)&&(identical(other.groupLesson, groupLesson) || other.groupLesson == groupLesson));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,groupLessonId,studentId,accessToLesson,visited,visitedType,writeOffFormat,score,note,accessToVideo,groupLesson);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'StudentLessonRelation(id: $id, groupLessonId: $groupLessonId, studentId: $studentId, accessToLesson: $accessToLesson, visited: $visited, visitedType: $visitedType, writeOffFormat: $writeOffFormat, score: $score, note: $note, accessToVideo: $accessToVideo, groupLesson: $groupLesson)';
}


}

/// @nodoc
abstract mixin class $StudentLessonRelationCopyWith<$Res>  {
  factory $StudentLessonRelationCopyWith(StudentLessonRelation value, $Res Function(StudentLessonRelation) _then) = _$StudentLessonRelationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'group_lesson_id') int? groupLessonId,@JsonKey(name: 'student_id') int? studentId,@JsonKey(name: 'access_to_lesson') bool? accessToLesson,@JsonKey(name: 'visited') bool? visited,@JsonKey(name: 'visited_type') String? visitedType,@JsonKey(name: 'write_off_format') String? writeOffFormat,@JsonKey(name: 'score') int? score,@JsonKey(name: 'note') String? note,@JsonKey(name: 'access_to_video') bool? accessToVideo,@JsonKey(name: 'group_lesson') GroupLesson? groupLesson
});


$GroupLessonCopyWith<$Res>? get groupLesson;

}
/// @nodoc
class _$StudentLessonRelationCopyWithImpl<$Res>
    implements $StudentLessonRelationCopyWith<$Res> {
  _$StudentLessonRelationCopyWithImpl(this._self, this._then);

  final StudentLessonRelation _self;
  final $Res Function(StudentLessonRelation) _then;

/// Create a copy of StudentLessonRelation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? groupLessonId = freezed,Object? studentId = freezed,Object? accessToLesson = freezed,Object? visited = freezed,Object? visitedType = freezed,Object? writeOffFormat = freezed,Object? score = freezed,Object? note = freezed,Object? accessToVideo = freezed,Object? groupLesson = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,groupLessonId: freezed == groupLessonId ? _self.groupLessonId : groupLessonId // ignore: cast_nullable_to_non_nullable
as int?,studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as int?,accessToLesson: freezed == accessToLesson ? _self.accessToLesson : accessToLesson // ignore: cast_nullable_to_non_nullable
as bool?,visited: freezed == visited ? _self.visited : visited // ignore: cast_nullable_to_non_nullable
as bool?,visitedType: freezed == visitedType ? _self.visitedType : visitedType // ignore: cast_nullable_to_non_nullable
as String?,writeOffFormat: freezed == writeOffFormat ? _self.writeOffFormat : writeOffFormat // ignore: cast_nullable_to_non_nullable
as String?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,accessToVideo: freezed == accessToVideo ? _self.accessToVideo : accessToVideo // ignore: cast_nullable_to_non_nullable
as bool?,groupLesson: freezed == groupLesson ? _self.groupLesson : groupLesson // ignore: cast_nullable_to_non_nullable
as GroupLesson?,
  ));
}
/// Create a copy of StudentLessonRelation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupLessonCopyWith<$Res>? get groupLesson {
    if (_self.groupLesson == null) {
    return null;
  }

  return $GroupLessonCopyWith<$Res>(_self.groupLesson!, (value) {
    return _then(_self.copyWith(groupLesson: value));
  });
}
}


/// Adds pattern-matching-related methods to [StudentLessonRelation].
extension StudentLessonRelationPatterns on StudentLessonRelation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentLessonRelation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentLessonRelation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentLessonRelation value)  $default,){
final _that = this;
switch (_that) {
case _StudentLessonRelation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentLessonRelation value)?  $default,){
final _that = this;
switch (_that) {
case _StudentLessonRelation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'group_lesson_id')  int? groupLessonId, @JsonKey(name: 'student_id')  int? studentId, @JsonKey(name: 'access_to_lesson')  bool? accessToLesson, @JsonKey(name: 'visited')  bool? visited, @JsonKey(name: 'visited_type')  String? visitedType, @JsonKey(name: 'write_off_format')  String? writeOffFormat, @JsonKey(name: 'score')  int? score, @JsonKey(name: 'note')  String? note, @JsonKey(name: 'access_to_video')  bool? accessToVideo, @JsonKey(name: 'group_lesson')  GroupLesson? groupLesson)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentLessonRelation() when $default != null:
return $default(_that.id,_that.groupLessonId,_that.studentId,_that.accessToLesson,_that.visited,_that.visitedType,_that.writeOffFormat,_that.score,_that.note,_that.accessToVideo,_that.groupLesson);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'group_lesson_id')  int? groupLessonId, @JsonKey(name: 'student_id')  int? studentId, @JsonKey(name: 'access_to_lesson')  bool? accessToLesson, @JsonKey(name: 'visited')  bool? visited, @JsonKey(name: 'visited_type')  String? visitedType, @JsonKey(name: 'write_off_format')  String? writeOffFormat, @JsonKey(name: 'score')  int? score, @JsonKey(name: 'note')  String? note, @JsonKey(name: 'access_to_video')  bool? accessToVideo, @JsonKey(name: 'group_lesson')  GroupLesson? groupLesson)  $default,) {final _that = this;
switch (_that) {
case _StudentLessonRelation():
return $default(_that.id,_that.groupLessonId,_that.studentId,_that.accessToLesson,_that.visited,_that.visitedType,_that.writeOffFormat,_that.score,_that.note,_that.accessToVideo,_that.groupLesson);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'group_lesson_id')  int? groupLessonId, @JsonKey(name: 'student_id')  int? studentId, @JsonKey(name: 'access_to_lesson')  bool? accessToLesson, @JsonKey(name: 'visited')  bool? visited, @JsonKey(name: 'visited_type')  String? visitedType, @JsonKey(name: 'write_off_format')  String? writeOffFormat, @JsonKey(name: 'score')  int? score, @JsonKey(name: 'note')  String? note, @JsonKey(name: 'access_to_video')  bool? accessToVideo, @JsonKey(name: 'group_lesson')  GroupLesson? groupLesson)?  $default,) {final _that = this;
switch (_that) {
case _StudentLessonRelation() when $default != null:
return $default(_that.id,_that.groupLessonId,_that.studentId,_that.accessToLesson,_that.visited,_that.visitedType,_that.writeOffFormat,_that.score,_that.note,_that.accessToVideo,_that.groupLesson);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StudentLessonRelation with DiagnosticableTreeMixin implements StudentLessonRelation {
  const _StudentLessonRelation({@JsonKey(name: 'id') this.id, @JsonKey(name: 'group_lesson_id') this.groupLessonId, @JsonKey(name: 'student_id') this.studentId, @JsonKey(name: 'access_to_lesson') this.accessToLesson, @JsonKey(name: 'visited') this.visited, @JsonKey(name: 'visited_type') this.visitedType, @JsonKey(name: 'write_off_format') this.writeOffFormat, @JsonKey(name: 'score') this.score, @JsonKey(name: 'note') this.note, @JsonKey(name: 'access_to_video') this.accessToVideo, @JsonKey(name: 'group_lesson') this.groupLesson});
  factory _StudentLessonRelation.fromJson(Map<String, dynamic> json) => _$StudentLessonRelationFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'group_lesson_id') final  int? groupLessonId;
@override@JsonKey(name: 'student_id') final  int? studentId;
@override@JsonKey(name: 'access_to_lesson') final  bool? accessToLesson;
@override@JsonKey(name: 'visited') final  bool? visited;
@override@JsonKey(name: 'visited_type') final  String? visitedType;
@override@JsonKey(name: 'write_off_format') final  String? writeOffFormat;
@override@JsonKey(name: 'score') final  int? score;
@override@JsonKey(name: 'note') final  String? note;
@override@JsonKey(name: 'access_to_video') final  bool? accessToVideo;
@override@JsonKey(name: 'group_lesson') final  GroupLesson? groupLesson;

/// Create a copy of StudentLessonRelation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentLessonRelationCopyWith<_StudentLessonRelation> get copyWith => __$StudentLessonRelationCopyWithImpl<_StudentLessonRelation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentLessonRelationToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'StudentLessonRelation'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('groupLessonId', groupLessonId))..add(DiagnosticsProperty('studentId', studentId))..add(DiagnosticsProperty('accessToLesson', accessToLesson))..add(DiagnosticsProperty('visited', visited))..add(DiagnosticsProperty('visitedType', visitedType))..add(DiagnosticsProperty('writeOffFormat', writeOffFormat))..add(DiagnosticsProperty('score', score))..add(DiagnosticsProperty('note', note))..add(DiagnosticsProperty('accessToVideo', accessToVideo))..add(DiagnosticsProperty('groupLesson', groupLesson));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentLessonRelation&&(identical(other.id, id) || other.id == id)&&(identical(other.groupLessonId, groupLessonId) || other.groupLessonId == groupLessonId)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.accessToLesson, accessToLesson) || other.accessToLesson == accessToLesson)&&(identical(other.visited, visited) || other.visited == visited)&&(identical(other.visitedType, visitedType) || other.visitedType == visitedType)&&(identical(other.writeOffFormat, writeOffFormat) || other.writeOffFormat == writeOffFormat)&&(identical(other.score, score) || other.score == score)&&(identical(other.note, note) || other.note == note)&&(identical(other.accessToVideo, accessToVideo) || other.accessToVideo == accessToVideo)&&(identical(other.groupLesson, groupLesson) || other.groupLesson == groupLesson));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,groupLessonId,studentId,accessToLesson,visited,visitedType,writeOffFormat,score,note,accessToVideo,groupLesson);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'StudentLessonRelation(id: $id, groupLessonId: $groupLessonId, studentId: $studentId, accessToLesson: $accessToLesson, visited: $visited, visitedType: $visitedType, writeOffFormat: $writeOffFormat, score: $score, note: $note, accessToVideo: $accessToVideo, groupLesson: $groupLesson)';
}


}

/// @nodoc
abstract mixin class _$StudentLessonRelationCopyWith<$Res> implements $StudentLessonRelationCopyWith<$Res> {
  factory _$StudentLessonRelationCopyWith(_StudentLessonRelation value, $Res Function(_StudentLessonRelation) _then) = __$StudentLessonRelationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'group_lesson_id') int? groupLessonId,@JsonKey(name: 'student_id') int? studentId,@JsonKey(name: 'access_to_lesson') bool? accessToLesson,@JsonKey(name: 'visited') bool? visited,@JsonKey(name: 'visited_type') String? visitedType,@JsonKey(name: 'write_off_format') String? writeOffFormat,@JsonKey(name: 'score') int? score,@JsonKey(name: 'note') String? note,@JsonKey(name: 'access_to_video') bool? accessToVideo,@JsonKey(name: 'group_lesson') GroupLesson? groupLesson
});


@override $GroupLessonCopyWith<$Res>? get groupLesson;

}
/// @nodoc
class __$StudentLessonRelationCopyWithImpl<$Res>
    implements _$StudentLessonRelationCopyWith<$Res> {
  __$StudentLessonRelationCopyWithImpl(this._self, this._then);

  final _StudentLessonRelation _self;
  final $Res Function(_StudentLessonRelation) _then;

/// Create a copy of StudentLessonRelation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? groupLessonId = freezed,Object? studentId = freezed,Object? accessToLesson = freezed,Object? visited = freezed,Object? visitedType = freezed,Object? writeOffFormat = freezed,Object? score = freezed,Object? note = freezed,Object? accessToVideo = freezed,Object? groupLesson = freezed,}) {
  return _then(_StudentLessonRelation(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,groupLessonId: freezed == groupLessonId ? _self.groupLessonId : groupLessonId // ignore: cast_nullable_to_non_nullable
as int?,studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as int?,accessToLesson: freezed == accessToLesson ? _self.accessToLesson : accessToLesson // ignore: cast_nullable_to_non_nullable
as bool?,visited: freezed == visited ? _self.visited : visited // ignore: cast_nullable_to_non_nullable
as bool?,visitedType: freezed == visitedType ? _self.visitedType : visitedType // ignore: cast_nullable_to_non_nullable
as String?,writeOffFormat: freezed == writeOffFormat ? _self.writeOffFormat : writeOffFormat // ignore: cast_nullable_to_non_nullable
as String?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,accessToVideo: freezed == accessToVideo ? _self.accessToVideo : accessToVideo // ignore: cast_nullable_to_non_nullable
as bool?,groupLesson: freezed == groupLesson ? _self.groupLesson : groupLesson // ignore: cast_nullable_to_non_nullable
as GroupLesson?,
  ));
}

/// Create a copy of StudentLessonRelation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupLessonCopyWith<$Res>? get groupLesson {
    if (_self.groupLesson == null) {
    return null;
  }

  return $GroupLessonCopyWith<$Res>(_self.groupLesson!, (value) {
    return _then(_self.copyWith(groupLesson: value));
  });
}
}


/// @nodoc
mixin _$GroupLesson implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'group_id') int? get groupId;@JsonKey(name: 'type') String? get type;@JsonKey(name: 'status') String? get status;@JsonKey(name: 'rescheduled_reason') String? get rescheduledReason;@JsonKey(name: 'lesson_number') int? get lessonNumber;@JsonKey(name: 'middle_rating') String? get middleRating;@JsonKey(name: 'united_id') int? get unitedId;@JsonKey(name: 'videos') List<Videos>? get videos;
/// Create a copy of GroupLesson
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupLessonCopyWith<GroupLesson> get copyWith => _$GroupLessonCopyWithImpl<GroupLesson>(this as GroupLesson, _$identity);

  /// Serializes this GroupLesson to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GroupLesson'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('groupId', groupId))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('rescheduledReason', rescheduledReason))..add(DiagnosticsProperty('lessonNumber', lessonNumber))..add(DiagnosticsProperty('middleRating', middleRating))..add(DiagnosticsProperty('unitedId', unitedId))..add(DiagnosticsProperty('videos', videos));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupLesson&&(identical(other.id, id) || other.id == id)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.rescheduledReason, rescheduledReason) || other.rescheduledReason == rescheduledReason)&&(identical(other.lessonNumber, lessonNumber) || other.lessonNumber == lessonNumber)&&(identical(other.middleRating, middleRating) || other.middleRating == middleRating)&&(identical(other.unitedId, unitedId) || other.unitedId == unitedId)&&const DeepCollectionEquality().equals(other.videos, videos));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,groupId,type,status,rescheduledReason,lessonNumber,middleRating,unitedId,const DeepCollectionEquality().hash(videos));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GroupLesson(id: $id, groupId: $groupId, type: $type, status: $status, rescheduledReason: $rescheduledReason, lessonNumber: $lessonNumber, middleRating: $middleRating, unitedId: $unitedId, videos: $videos)';
}


}

/// @nodoc
abstract mixin class $GroupLessonCopyWith<$Res>  {
  factory $GroupLessonCopyWith(GroupLesson value, $Res Function(GroupLesson) _then) = _$GroupLessonCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'group_id') int? groupId,@JsonKey(name: 'type') String? type,@JsonKey(name: 'status') String? status,@JsonKey(name: 'rescheduled_reason') String? rescheduledReason,@JsonKey(name: 'lesson_number') int? lessonNumber,@JsonKey(name: 'middle_rating') String? middleRating,@JsonKey(name: 'united_id') int? unitedId,@JsonKey(name: 'videos') List<Videos>? videos
});




}
/// @nodoc
class _$GroupLessonCopyWithImpl<$Res>
    implements $GroupLessonCopyWith<$Res> {
  _$GroupLessonCopyWithImpl(this._self, this._then);

  final GroupLesson _self;
  final $Res Function(GroupLesson) _then;

/// Create a copy of GroupLesson
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? groupId = freezed,Object? type = freezed,Object? status = freezed,Object? rescheduledReason = freezed,Object? lessonNumber = freezed,Object? middleRating = freezed,Object? unitedId = freezed,Object? videos = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,rescheduledReason: freezed == rescheduledReason ? _self.rescheduledReason : rescheduledReason // ignore: cast_nullable_to_non_nullable
as String?,lessonNumber: freezed == lessonNumber ? _self.lessonNumber : lessonNumber // ignore: cast_nullable_to_non_nullable
as int?,middleRating: freezed == middleRating ? _self.middleRating : middleRating // ignore: cast_nullable_to_non_nullable
as String?,unitedId: freezed == unitedId ? _self.unitedId : unitedId // ignore: cast_nullable_to_non_nullable
as int?,videos: freezed == videos ? _self.videos : videos // ignore: cast_nullable_to_non_nullable
as List<Videos>?,
  ));
}

}


/// Adds pattern-matching-related methods to [GroupLesson].
extension GroupLessonPatterns on GroupLesson {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GroupLesson value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GroupLesson() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GroupLesson value)  $default,){
final _that = this;
switch (_that) {
case _GroupLesson():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GroupLesson value)?  $default,){
final _that = this;
switch (_that) {
case _GroupLesson() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'group_id')  int? groupId, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'rescheduled_reason')  String? rescheduledReason, @JsonKey(name: 'lesson_number')  int? lessonNumber, @JsonKey(name: 'middle_rating')  String? middleRating, @JsonKey(name: 'united_id')  int? unitedId, @JsonKey(name: 'videos')  List<Videos>? videos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GroupLesson() when $default != null:
return $default(_that.id,_that.groupId,_that.type,_that.status,_that.rescheduledReason,_that.lessonNumber,_that.middleRating,_that.unitedId,_that.videos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'group_id')  int? groupId, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'rescheduled_reason')  String? rescheduledReason, @JsonKey(name: 'lesson_number')  int? lessonNumber, @JsonKey(name: 'middle_rating')  String? middleRating, @JsonKey(name: 'united_id')  int? unitedId, @JsonKey(name: 'videos')  List<Videos>? videos)  $default,) {final _that = this;
switch (_that) {
case _GroupLesson():
return $default(_that.id,_that.groupId,_that.type,_that.status,_that.rescheduledReason,_that.lessonNumber,_that.middleRating,_that.unitedId,_that.videos);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'group_id')  int? groupId, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'rescheduled_reason')  String? rescheduledReason, @JsonKey(name: 'lesson_number')  int? lessonNumber, @JsonKey(name: 'middle_rating')  String? middleRating, @JsonKey(name: 'united_id')  int? unitedId, @JsonKey(name: 'videos')  List<Videos>? videos)?  $default,) {final _that = this;
switch (_that) {
case _GroupLesson() when $default != null:
return $default(_that.id,_that.groupId,_that.type,_that.status,_that.rescheduledReason,_that.lessonNumber,_that.middleRating,_that.unitedId,_that.videos);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GroupLesson with DiagnosticableTreeMixin implements GroupLesson {
  const _GroupLesson({@JsonKey(name: 'id') this.id, @JsonKey(name: 'group_id') this.groupId, @JsonKey(name: 'type') this.type, @JsonKey(name: 'status') this.status, @JsonKey(name: 'rescheduled_reason') this.rescheduledReason, @JsonKey(name: 'lesson_number') this.lessonNumber, @JsonKey(name: 'middle_rating') this.middleRating, @JsonKey(name: 'united_id') this.unitedId, @JsonKey(name: 'videos') final  List<Videos>? videos}): _videos = videos;
  factory _GroupLesson.fromJson(Map<String, dynamic> json) => _$GroupLessonFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'group_id') final  int? groupId;
@override@JsonKey(name: 'type') final  String? type;
@override@JsonKey(name: 'status') final  String? status;
@override@JsonKey(name: 'rescheduled_reason') final  String? rescheduledReason;
@override@JsonKey(name: 'lesson_number') final  int? lessonNumber;
@override@JsonKey(name: 'middle_rating') final  String? middleRating;
@override@JsonKey(name: 'united_id') final  int? unitedId;
 final  List<Videos>? _videos;
@override@JsonKey(name: 'videos') List<Videos>? get videos {
  final value = _videos;
  if (value == null) return null;
  if (_videos is EqualUnmodifiableListView) return _videos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of GroupLesson
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroupLessonCopyWith<_GroupLesson> get copyWith => __$GroupLessonCopyWithImpl<_GroupLesson>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GroupLessonToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GroupLesson'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('groupId', groupId))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('rescheduledReason', rescheduledReason))..add(DiagnosticsProperty('lessonNumber', lessonNumber))..add(DiagnosticsProperty('middleRating', middleRating))..add(DiagnosticsProperty('unitedId', unitedId))..add(DiagnosticsProperty('videos', videos));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroupLesson&&(identical(other.id, id) || other.id == id)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.rescheduledReason, rescheduledReason) || other.rescheduledReason == rescheduledReason)&&(identical(other.lessonNumber, lessonNumber) || other.lessonNumber == lessonNumber)&&(identical(other.middleRating, middleRating) || other.middleRating == middleRating)&&(identical(other.unitedId, unitedId) || other.unitedId == unitedId)&&const DeepCollectionEquality().equals(other._videos, _videos));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,groupId,type,status,rescheduledReason,lessonNumber,middleRating,unitedId,const DeepCollectionEquality().hash(_videos));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GroupLesson(id: $id, groupId: $groupId, type: $type, status: $status, rescheduledReason: $rescheduledReason, lessonNumber: $lessonNumber, middleRating: $middleRating, unitedId: $unitedId, videos: $videos)';
}


}

/// @nodoc
abstract mixin class _$GroupLessonCopyWith<$Res> implements $GroupLessonCopyWith<$Res> {
  factory _$GroupLessonCopyWith(_GroupLesson value, $Res Function(_GroupLesson) _then) = __$GroupLessonCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'group_id') int? groupId,@JsonKey(name: 'type') String? type,@JsonKey(name: 'status') String? status,@JsonKey(name: 'rescheduled_reason') String? rescheduledReason,@JsonKey(name: 'lesson_number') int? lessonNumber,@JsonKey(name: 'middle_rating') String? middleRating,@JsonKey(name: 'united_id') int? unitedId,@JsonKey(name: 'videos') List<Videos>? videos
});




}
/// @nodoc
class __$GroupLessonCopyWithImpl<$Res>
    implements _$GroupLessonCopyWith<$Res> {
  __$GroupLessonCopyWithImpl(this._self, this._then);

  final _GroupLesson _self;
  final $Res Function(_GroupLesson) _then;

/// Create a copy of GroupLesson
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? groupId = freezed,Object? type = freezed,Object? status = freezed,Object? rescheduledReason = freezed,Object? lessonNumber = freezed,Object? middleRating = freezed,Object? unitedId = freezed,Object? videos = freezed,}) {
  return _then(_GroupLesson(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,rescheduledReason: freezed == rescheduledReason ? _self.rescheduledReason : rescheduledReason // ignore: cast_nullable_to_non_nullable
as String?,lessonNumber: freezed == lessonNumber ? _self.lessonNumber : lessonNumber // ignore: cast_nullable_to_non_nullable
as int?,middleRating: freezed == middleRating ? _self.middleRating : middleRating // ignore: cast_nullable_to_non_nullable
as String?,unitedId: freezed == unitedId ? _self.unitedId : unitedId // ignore: cast_nullable_to_non_nullable
as int?,videos: freezed == videos ? _self._videos : videos // ignore: cast_nullable_to_non_nullable
as List<Videos>?,
  ));
}


}


/// @nodoc
mixin _$Videos implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'lesson_id') int? get lessonId;@JsonKey(name: 'video_key') String? get videoKey;
/// Create a copy of Videos
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideosCopyWith<Videos> get copyWith => _$VideosCopyWithImpl<Videos>(this as Videos, _$identity);

  /// Serializes this Videos to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Videos'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('lessonId', lessonId))..add(DiagnosticsProperty('videoKey', videoKey));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Videos&&(identical(other.id, id) || other.id == id)&&(identical(other.lessonId, lessonId) || other.lessonId == lessonId)&&(identical(other.videoKey, videoKey) || other.videoKey == videoKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,lessonId,videoKey);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Videos(id: $id, lessonId: $lessonId, videoKey: $videoKey)';
}


}

/// @nodoc
abstract mixin class $VideosCopyWith<$Res>  {
  factory $VideosCopyWith(Videos value, $Res Function(Videos) _then) = _$VideosCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'lesson_id') int? lessonId,@JsonKey(name: 'video_key') String? videoKey
});




}
/// @nodoc
class _$VideosCopyWithImpl<$Res>
    implements $VideosCopyWith<$Res> {
  _$VideosCopyWithImpl(this._self, this._then);

  final Videos _self;
  final $Res Function(Videos) _then;

/// Create a copy of Videos
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? lessonId = freezed,Object? videoKey = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,lessonId: freezed == lessonId ? _self.lessonId : lessonId // ignore: cast_nullable_to_non_nullable
as int?,videoKey: freezed == videoKey ? _self.videoKey : videoKey // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Videos].
extension VideosPatterns on Videos {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Videos value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Videos() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Videos value)  $default,){
final _that = this;
switch (_that) {
case _Videos():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Videos value)?  $default,){
final _that = this;
switch (_that) {
case _Videos() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'lesson_id')  int? lessonId, @JsonKey(name: 'video_key')  String? videoKey)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Videos() when $default != null:
return $default(_that.id,_that.lessonId,_that.videoKey);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'lesson_id')  int? lessonId, @JsonKey(name: 'video_key')  String? videoKey)  $default,) {final _that = this;
switch (_that) {
case _Videos():
return $default(_that.id,_that.lessonId,_that.videoKey);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'lesson_id')  int? lessonId, @JsonKey(name: 'video_key')  String? videoKey)?  $default,) {final _that = this;
switch (_that) {
case _Videos() when $default != null:
return $default(_that.id,_that.lessonId,_that.videoKey);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Videos with DiagnosticableTreeMixin implements Videos {
  const _Videos({@JsonKey(name: 'id') this.id, @JsonKey(name: 'lesson_id') this.lessonId, @JsonKey(name: 'video_key') this.videoKey});
  factory _Videos.fromJson(Map<String, dynamic> json) => _$VideosFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'lesson_id') final  int? lessonId;
@override@JsonKey(name: 'video_key') final  String? videoKey;

/// Create a copy of Videos
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideosCopyWith<_Videos> get copyWith => __$VideosCopyWithImpl<_Videos>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideosToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Videos'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('lessonId', lessonId))..add(DiagnosticsProperty('videoKey', videoKey));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Videos&&(identical(other.id, id) || other.id == id)&&(identical(other.lessonId, lessonId) || other.lessonId == lessonId)&&(identical(other.videoKey, videoKey) || other.videoKey == videoKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,lessonId,videoKey);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Videos(id: $id, lessonId: $lessonId, videoKey: $videoKey)';
}


}

/// @nodoc
abstract mixin class _$VideosCopyWith<$Res> implements $VideosCopyWith<$Res> {
  factory _$VideosCopyWith(_Videos value, $Res Function(_Videos) _then) = __$VideosCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'lesson_id') int? lessonId,@JsonKey(name: 'video_key') String? videoKey
});




}
/// @nodoc
class __$VideosCopyWithImpl<$Res>
    implements _$VideosCopyWith<$Res> {
  __$VideosCopyWithImpl(this._self, this._then);

  final _Videos _self;
  final $Res Function(_Videos) _then;

/// Create a copy of Videos
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? lessonId = freezed,Object? videoKey = freezed,}) {
  return _then(_Videos(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,lessonId: freezed == lessonId ? _self.lessonId : lessonId // ignore: cast_nullable_to_non_nullable
as int?,videoKey: freezed == videoKey ? _self.videoKey : videoKey // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$MaterialRelation implements DiagnosticableTreeMixin {

@JsonKey(name: 'material') Material? get material;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'assessment') int? get assessment;
/// Create a copy of MaterialRelation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaterialRelationCopyWith<MaterialRelation> get copyWith => _$MaterialRelationCopyWithImpl<MaterialRelation>(this as MaterialRelation, _$identity);

  /// Serializes this MaterialRelation to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MaterialRelation'))
    ..add(DiagnosticsProperty('material', material))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('assessment', assessment));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaterialRelation&&(identical(other.material, material) || other.material == material)&&(identical(other.id, id) || other.id == id)&&(identical(other.assessment, assessment) || other.assessment == assessment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,material,id,assessment);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MaterialRelation(material: $material, id: $id, assessment: $assessment)';
}


}

/// @nodoc
abstract mixin class $MaterialRelationCopyWith<$Res>  {
  factory $MaterialRelationCopyWith(MaterialRelation value, $Res Function(MaterialRelation) _then) = _$MaterialRelationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'material') Material? material,@JsonKey(name: 'id') int? id,@JsonKey(name: 'assessment') int? assessment
});


$MaterialCopyWith<$Res>? get material;

}
/// @nodoc
class _$MaterialRelationCopyWithImpl<$Res>
    implements $MaterialRelationCopyWith<$Res> {
  _$MaterialRelationCopyWithImpl(this._self, this._then);

  final MaterialRelation _self;
  final $Res Function(MaterialRelation) _then;

/// Create a copy of MaterialRelation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? material = freezed,Object? id = freezed,Object? assessment = freezed,}) {
  return _then(_self.copyWith(
material: freezed == material ? _self.material : material // ignore: cast_nullable_to_non_nullable
as Material?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,assessment: freezed == assessment ? _self.assessment : assessment // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of MaterialRelation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MaterialCopyWith<$Res>? get material {
    if (_self.material == null) {
    return null;
  }

  return $MaterialCopyWith<$Res>(_self.material!, (value) {
    return _then(_self.copyWith(material: value));
  });
}
}


/// Adds pattern-matching-related methods to [MaterialRelation].
extension MaterialRelationPatterns on MaterialRelation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MaterialRelation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MaterialRelation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MaterialRelation value)  $default,){
final _that = this;
switch (_that) {
case _MaterialRelation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MaterialRelation value)?  $default,){
final _that = this;
switch (_that) {
case _MaterialRelation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'material')  Material? material, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'assessment')  int? assessment)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MaterialRelation() when $default != null:
return $default(_that.material,_that.id,_that.assessment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'material')  Material? material, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'assessment')  int? assessment)  $default,) {final _that = this;
switch (_that) {
case _MaterialRelation():
return $default(_that.material,_that.id,_that.assessment);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'material')  Material? material, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'assessment')  int? assessment)?  $default,) {final _that = this;
switch (_that) {
case _MaterialRelation() when $default != null:
return $default(_that.material,_that.id,_that.assessment);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MaterialRelation with DiagnosticableTreeMixin implements MaterialRelation {
  const _MaterialRelation({@JsonKey(name: 'material') this.material, @JsonKey(name: 'id') this.id, @JsonKey(name: 'assessment') this.assessment});
  factory _MaterialRelation.fromJson(Map<String, dynamic> json) => _$MaterialRelationFromJson(json);

@override@JsonKey(name: 'material') final  Material? material;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'assessment') final  int? assessment;

/// Create a copy of MaterialRelation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MaterialRelationCopyWith<_MaterialRelation> get copyWith => __$MaterialRelationCopyWithImpl<_MaterialRelation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MaterialRelationToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MaterialRelation'))
    ..add(DiagnosticsProperty('material', material))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('assessment', assessment));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MaterialRelation&&(identical(other.material, material) || other.material == material)&&(identical(other.id, id) || other.id == id)&&(identical(other.assessment, assessment) || other.assessment == assessment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,material,id,assessment);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MaterialRelation(material: $material, id: $id, assessment: $assessment)';
}


}

/// @nodoc
abstract mixin class _$MaterialRelationCopyWith<$Res> implements $MaterialRelationCopyWith<$Res> {
  factory _$MaterialRelationCopyWith(_MaterialRelation value, $Res Function(_MaterialRelation) _then) = __$MaterialRelationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'material') Material? material,@JsonKey(name: 'id') int? id,@JsonKey(name: 'assessment') int? assessment
});


@override $MaterialCopyWith<$Res>? get material;

}
/// @nodoc
class __$MaterialRelationCopyWithImpl<$Res>
    implements _$MaterialRelationCopyWith<$Res> {
  __$MaterialRelationCopyWithImpl(this._self, this._then);

  final _MaterialRelation _self;
  final $Res Function(_MaterialRelation) _then;

/// Create a copy of MaterialRelation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? material = freezed,Object? id = freezed,Object? assessment = freezed,}) {
  return _then(_MaterialRelation(
material: freezed == material ? _self.material : material // ignore: cast_nullable_to_non_nullable
as Material?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,assessment: freezed == assessment ? _self.assessment : assessment // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of MaterialRelation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MaterialCopyWith<$Res>? get material {
    if (_self.material == null) {
    return null;
  }

  return $MaterialCopyWith<$Res>(_self.material!, (value) {
    return _then(_self.copyWith(material: value));
  });
}
}


/// @nodoc
mixin _$Material implements DiagnosticableTreeMixin {

@JsonKey(name: 'module') Module? get module;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;
/// Create a copy of Material
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaterialCopyWith<Material> get copyWith => _$MaterialCopyWithImpl<Material>(this as Material, _$identity);

  /// Serializes this Material to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Material'))
    ..add(DiagnosticsProperty('module', module))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Material&&(identical(other.module, module) || other.module == module)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,module,id,name);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Material(module: $module, id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $MaterialCopyWith<$Res>  {
  factory $MaterialCopyWith(Material value, $Res Function(Material) _then) = _$MaterialCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'module') Module? module,@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name
});


$ModuleCopyWith<$Res>? get module;

}
/// @nodoc
class _$MaterialCopyWithImpl<$Res>
    implements $MaterialCopyWith<$Res> {
  _$MaterialCopyWithImpl(this._self, this._then);

  final Material _self;
  final $Res Function(Material) _then;

/// Create a copy of Material
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? module = freezed,Object? id = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
module: freezed == module ? _self.module : module // ignore: cast_nullable_to_non_nullable
as Module?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Material
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ModuleCopyWith<$Res>? get module {
    if (_self.module == null) {
    return null;
  }

  return $ModuleCopyWith<$Res>(_self.module!, (value) {
    return _then(_self.copyWith(module: value));
  });
}
}


/// Adds pattern-matching-related methods to [Material].
extension MaterialPatterns on Material {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Material value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Material() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Material value)  $default,){
final _that = this;
switch (_that) {
case _Material():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Material value)?  $default,){
final _that = this;
switch (_that) {
case _Material() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'module')  Module? module, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Material() when $default != null:
return $default(_that.module,_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'module')  Module? module, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name)  $default,) {final _that = this;
switch (_that) {
case _Material():
return $default(_that.module,_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'module')  Module? module, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name)?  $default,) {final _that = this;
switch (_that) {
case _Material() when $default != null:
return $default(_that.module,_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Material with DiagnosticableTreeMixin implements Material {
  const _Material({@JsonKey(name: 'module') this.module, @JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name});
  factory _Material.fromJson(Map<String, dynamic> json) => _$MaterialFromJson(json);

@override@JsonKey(name: 'module') final  Module? module;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;

/// Create a copy of Material
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MaterialCopyWith<_Material> get copyWith => __$MaterialCopyWithImpl<_Material>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MaterialToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Material'))
    ..add(DiagnosticsProperty('module', module))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Material&&(identical(other.module, module) || other.module == module)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,module,id,name);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Material(module: $module, id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$MaterialCopyWith<$Res> implements $MaterialCopyWith<$Res> {
  factory _$MaterialCopyWith(_Material value, $Res Function(_Material) _then) = __$MaterialCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'module') Module? module,@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name
});


@override $ModuleCopyWith<$Res>? get module;

}
/// @nodoc
class __$MaterialCopyWithImpl<$Res>
    implements _$MaterialCopyWith<$Res> {
  __$MaterialCopyWithImpl(this._self, this._then);

  final _Material _self;
  final $Res Function(_Material) _then;

/// Create a copy of Material
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? module = freezed,Object? id = freezed,Object? name = freezed,}) {
  return _then(_Material(
module: freezed == module ? _self.module : module // ignore: cast_nullable_to_non_nullable
as Module?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Material
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ModuleCopyWith<$Res>? get module {
    if (_self.module == null) {
    return null;
  }

  return $ModuleCopyWith<$Res>(_self.module!, (value) {
    return _then(_self.copyWith(module: value));
  });
}
}


/// @nodoc
mixin _$Module implements DiagnosticableTreeMixin {

@JsonKey(name: 'product') Product? get product;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;
/// Create a copy of Module
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModuleCopyWith<Module> get copyWith => _$ModuleCopyWithImpl<Module>(this as Module, _$identity);

  /// Serializes this Module to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Module'))
    ..add(DiagnosticsProperty('product', product))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Module&&(identical(other.product, product) || other.product == product)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,product,id,name);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Module(product: $product, id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $ModuleCopyWith<$Res>  {
  factory $ModuleCopyWith(Module value, $Res Function(Module) _then) = _$ModuleCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'product') Product? product,@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name
});


$ProductCopyWith<$Res>? get product;

}
/// @nodoc
class _$ModuleCopyWithImpl<$Res>
    implements $ModuleCopyWith<$Res> {
  _$ModuleCopyWithImpl(this._self, this._then);

  final Module _self;
  final $Res Function(Module) _then;

/// Create a copy of Module
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? product = freezed,Object? id = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Module
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ProductCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [Module].
extension ModulePatterns on Module {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Module value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Module() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Module value)  $default,){
final _that = this;
switch (_that) {
case _Module():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Module value)?  $default,){
final _that = this;
switch (_that) {
case _Module() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'product')  Product? product, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Module() when $default != null:
return $default(_that.product,_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'product')  Product? product, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name)  $default,) {final _that = this;
switch (_that) {
case _Module():
return $default(_that.product,_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'product')  Product? product, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name)?  $default,) {final _that = this;
switch (_that) {
case _Module() when $default != null:
return $default(_that.product,_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Module with DiagnosticableTreeMixin implements Module {
  const _Module({@JsonKey(name: 'product') this.product, @JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name});
  factory _Module.fromJson(Map<String, dynamic> json) => _$ModuleFromJson(json);

@override@JsonKey(name: 'product') final  Product? product;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;

/// Create a copy of Module
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ModuleCopyWith<_Module> get copyWith => __$ModuleCopyWithImpl<_Module>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ModuleToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Module'))
    ..add(DiagnosticsProperty('product', product))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Module&&(identical(other.product, product) || other.product == product)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,product,id,name);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Module(product: $product, id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$ModuleCopyWith<$Res> implements $ModuleCopyWith<$Res> {
  factory _$ModuleCopyWith(_Module value, $Res Function(_Module) _then) = __$ModuleCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'product') Product? product,@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name
});


@override $ProductCopyWith<$Res>? get product;

}
/// @nodoc
class __$ModuleCopyWithImpl<$Res>
    implements _$ModuleCopyWith<$Res> {
  __$ModuleCopyWithImpl(this._self, this._then);

  final _Module _self;
  final $Res Function(_Module) _then;

/// Create a copy of Module
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? product = freezed,Object? id = freezed,Object? name = freezed,}) {
  return _then(_Module(
product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Module
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ProductCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// @nodoc
mixin _$Product implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;
/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCopyWith<Product> get copyWith => _$ProductCopyWithImpl<Product>(this as Product, _$identity);

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Product'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Product&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Product(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $ProductCopyWith<$Res>  {
  factory $ProductCopyWith(Product value, $Res Function(Product) _then) = _$ProductCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name
});




}
/// @nodoc
class _$ProductCopyWithImpl<$Res>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._self, this._then);

  final Product _self;
  final $Res Function(Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Product].
extension ProductPatterns on Product {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Product value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Product() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Product value)  $default,){
final _that = this;
switch (_that) {
case _Product():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Product value)?  $default,){
final _that = this;
switch (_that) {
case _Product() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name)  $default,) {final _that = this;
switch (_that) {
case _Product():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name)?  $default,) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Product with DiagnosticableTreeMixin implements Product {
  const _Product({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name});
  factory _Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCopyWith<_Product> get copyWith => __$ProductCopyWithImpl<_Product>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Product'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Product&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Product(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) _then) = __$ProductCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name
});




}
/// @nodoc
class __$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(this._self, this._then);

  final _Product _self;
  final $Res Function(_Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_Product(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
