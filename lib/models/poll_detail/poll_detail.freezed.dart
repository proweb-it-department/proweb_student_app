// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'poll_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PollDetail implements DiagnosticableTreeMixin {

@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'created_by_id') int? get createdById;@JsonKey(name: 'updated_by_id') int? get updatedById;@JsonKey(name: 'questions') List<Questions>? get questions;@JsonKey(name: 'schedules_count') int? get schedulesCount;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'short_description') String? get shortDescription;@JsonKey(name: 'status') NpsPollStatus? get status;
/// Create a copy of PollDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PollDetailCopyWith<PollDetail> get copyWith => _$PollDetailCopyWithImpl<PollDetail>(this as PollDetail, _$identity);

  /// Serializes this PollDetail to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PollDetail'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdById', createdById))..add(DiagnosticsProperty('updatedById', updatedById))..add(DiagnosticsProperty('questions', questions))..add(DiagnosticsProperty('schedulesCount', schedulesCount))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('shortDescription', shortDescription))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PollDetail&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.updatedById, updatedById) || other.updatedById == updatedById)&&const DeepCollectionEquality().equals(other.questions, questions)&&(identical(other.schedulesCount, schedulesCount) || other.schedulesCount == schedulesCount)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.shortDescription, shortDescription) || other.shortDescription == shortDescription)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdById,updatedById,const DeepCollectionEquality().hash(questions),schedulesCount,id,name,shortDescription,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PollDetail(createdAt: $createdAt, updatedAt: $updatedAt, createdById: $createdById, updatedById: $updatedById, questions: $questions, schedulesCount: $schedulesCount, id: $id, name: $name, shortDescription: $shortDescription, status: $status)';
}


}

/// @nodoc
abstract mixin class $PollDetailCopyWith<$Res>  {
  factory $PollDetailCopyWith(PollDetail value, $Res Function(PollDetail) _then) = _$PollDetailCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by_id') int? createdById,@JsonKey(name: 'updated_by_id') int? updatedById,@JsonKey(name: 'questions') List<Questions>? questions,@JsonKey(name: 'schedules_count') int? schedulesCount,@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'short_description') String? shortDescription,@JsonKey(name: 'status') NpsPollStatus? status
});




}
/// @nodoc
class _$PollDetailCopyWithImpl<$Res>
    implements $PollDetailCopyWith<$Res> {
  _$PollDetailCopyWithImpl(this._self, this._then);

  final PollDetail _self;
  final $Res Function(PollDetail) _then;

/// Create a copy of PollDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdById = freezed,Object? updatedById = freezed,Object? questions = freezed,Object? schedulesCount = freezed,Object? id = freezed,Object? name = freezed,Object? shortDescription = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdById: freezed == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as int?,updatedById: freezed == updatedById ? _self.updatedById : updatedById // ignore: cast_nullable_to_non_nullable
as int?,questions: freezed == questions ? _self.questions : questions // ignore: cast_nullable_to_non_nullable
as List<Questions>?,schedulesCount: freezed == schedulesCount ? _self.schedulesCount : schedulesCount // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,shortDescription: freezed == shortDescription ? _self.shortDescription : shortDescription // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as NpsPollStatus?,
  ));
}

}


/// Adds pattern-matching-related methods to [PollDetail].
extension PollDetailPatterns on PollDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PollDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PollDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PollDetail value)  $default,){
final _that = this;
switch (_that) {
case _PollDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PollDetail value)?  $default,){
final _that = this;
switch (_that) {
case _PollDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'questions')  List<Questions>? questions, @JsonKey(name: 'schedules_count')  int? schedulesCount, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'short_description')  String? shortDescription, @JsonKey(name: 'status')  NpsPollStatus? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PollDetail() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.questions,_that.schedulesCount,_that.id,_that.name,_that.shortDescription,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'questions')  List<Questions>? questions, @JsonKey(name: 'schedules_count')  int? schedulesCount, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'short_description')  String? shortDescription, @JsonKey(name: 'status')  NpsPollStatus? status)  $default,) {final _that = this;
switch (_that) {
case _PollDetail():
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.questions,_that.schedulesCount,_that.id,_that.name,_that.shortDescription,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'questions')  List<Questions>? questions, @JsonKey(name: 'schedules_count')  int? schedulesCount, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'short_description')  String? shortDescription, @JsonKey(name: 'status')  NpsPollStatus? status)?  $default,) {final _that = this;
switch (_that) {
case _PollDetail() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.questions,_that.schedulesCount,_that.id,_that.name,_that.shortDescription,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PollDetail with DiagnosticableTreeMixin implements PollDetail {
  const _PollDetail({@JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'created_by_id') this.createdById, @JsonKey(name: 'updated_by_id') this.updatedById, @JsonKey(name: 'questions') final  List<Questions>? questions, @JsonKey(name: 'schedules_count') this.schedulesCount, @JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'short_description') this.shortDescription, @JsonKey(name: 'status') this.status}): _questions = questions;
  factory _PollDetail.fromJson(Map<String, dynamic> json) => _$PollDetailFromJson(json);

@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'created_by_id') final  int? createdById;
@override@JsonKey(name: 'updated_by_id') final  int? updatedById;
 final  List<Questions>? _questions;
@override@JsonKey(name: 'questions') List<Questions>? get questions {
  final value = _questions;
  if (value == null) return null;
  if (_questions is EqualUnmodifiableListView) return _questions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'schedules_count') final  int? schedulesCount;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'short_description') final  String? shortDescription;
@override@JsonKey(name: 'status') final  NpsPollStatus? status;

/// Create a copy of PollDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PollDetailCopyWith<_PollDetail> get copyWith => __$PollDetailCopyWithImpl<_PollDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PollDetailToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PollDetail'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdById', createdById))..add(DiagnosticsProperty('updatedById', updatedById))..add(DiagnosticsProperty('questions', questions))..add(DiagnosticsProperty('schedulesCount', schedulesCount))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('shortDescription', shortDescription))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PollDetail&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.updatedById, updatedById) || other.updatedById == updatedById)&&const DeepCollectionEquality().equals(other._questions, _questions)&&(identical(other.schedulesCount, schedulesCount) || other.schedulesCount == schedulesCount)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.shortDescription, shortDescription) || other.shortDescription == shortDescription)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdById,updatedById,const DeepCollectionEquality().hash(_questions),schedulesCount,id,name,shortDescription,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PollDetail(createdAt: $createdAt, updatedAt: $updatedAt, createdById: $createdById, updatedById: $updatedById, questions: $questions, schedulesCount: $schedulesCount, id: $id, name: $name, shortDescription: $shortDescription, status: $status)';
}


}

/// @nodoc
abstract mixin class _$PollDetailCopyWith<$Res> implements $PollDetailCopyWith<$Res> {
  factory _$PollDetailCopyWith(_PollDetail value, $Res Function(_PollDetail) _then) = __$PollDetailCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by_id') int? createdById,@JsonKey(name: 'updated_by_id') int? updatedById,@JsonKey(name: 'questions') List<Questions>? questions,@JsonKey(name: 'schedules_count') int? schedulesCount,@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'short_description') String? shortDescription,@JsonKey(name: 'status') NpsPollStatus? status
});




}
/// @nodoc
class __$PollDetailCopyWithImpl<$Res>
    implements _$PollDetailCopyWith<$Res> {
  __$PollDetailCopyWithImpl(this._self, this._then);

  final _PollDetail _self;
  final $Res Function(_PollDetail) _then;

/// Create a copy of PollDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdById = freezed,Object? updatedById = freezed,Object? questions = freezed,Object? schedulesCount = freezed,Object? id = freezed,Object? name = freezed,Object? shortDescription = freezed,Object? status = freezed,}) {
  return _then(_PollDetail(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdById: freezed == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as int?,updatedById: freezed == updatedById ? _self.updatedById : updatedById // ignore: cast_nullable_to_non_nullable
as int?,questions: freezed == questions ? _self._questions : questions // ignore: cast_nullable_to_non_nullable
as List<Questions>?,schedulesCount: freezed == schedulesCount ? _self.schedulesCount : schedulesCount // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,shortDescription: freezed == shortDescription ? _self.shortDescription : shortDescription // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as NpsPollStatus?,
  ));
}


}


/// @nodoc
mixin _$Questions implements DiagnosticableTreeMixin {

@JsonKey(name: 'answers') List<Answers>? get answers;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'text') String? get text;@JsonKey(name: 'type') NpsPollQuestionsType? get type;@JsonKey(name: 'position') int? get position;
/// Create a copy of Questions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionsCopyWith<Questions> get copyWith => _$QuestionsCopyWithImpl<Questions>(this as Questions, _$identity);

  /// Serializes this Questions to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Questions'))
    ..add(DiagnosticsProperty('answers', answers))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('text', text))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('position', position));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Questions&&const DeepCollectionEquality().equals(other.answers, answers)&&(identical(other.id, id) || other.id == id)&&(identical(other.text, text) || other.text == text)&&(identical(other.type, type) || other.type == type)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(answers),id,text,type,position);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Questions(answers: $answers, id: $id, text: $text, type: $type, position: $position)';
}


}

/// @nodoc
abstract mixin class $QuestionsCopyWith<$Res>  {
  factory $QuestionsCopyWith(Questions value, $Res Function(Questions) _then) = _$QuestionsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'answers') List<Answers>? answers,@JsonKey(name: 'id') int? id,@JsonKey(name: 'text') String? text,@JsonKey(name: 'type') NpsPollQuestionsType? type,@JsonKey(name: 'position') int? position
});




}
/// @nodoc
class _$QuestionsCopyWithImpl<$Res>
    implements $QuestionsCopyWith<$Res> {
  _$QuestionsCopyWithImpl(this._self, this._then);

  final Questions _self;
  final $Res Function(Questions) _then;

/// Create a copy of Questions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? answers = freezed,Object? id = freezed,Object? text = freezed,Object? type = freezed,Object? position = freezed,}) {
  return _then(_self.copyWith(
answers: freezed == answers ? _self.answers : answers // ignore: cast_nullable_to_non_nullable
as List<Answers>?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as NpsPollQuestionsType?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Questions].
extension QuestionsPatterns on Questions {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Questions value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Questions() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Questions value)  $default,){
final _that = this;
switch (_that) {
case _Questions():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Questions value)?  $default,){
final _that = this;
switch (_that) {
case _Questions() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'answers')  List<Answers>? answers, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'text')  String? text, @JsonKey(name: 'type')  NpsPollQuestionsType? type, @JsonKey(name: 'position')  int? position)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Questions() when $default != null:
return $default(_that.answers,_that.id,_that.text,_that.type,_that.position);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'answers')  List<Answers>? answers, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'text')  String? text, @JsonKey(name: 'type')  NpsPollQuestionsType? type, @JsonKey(name: 'position')  int? position)  $default,) {final _that = this;
switch (_that) {
case _Questions():
return $default(_that.answers,_that.id,_that.text,_that.type,_that.position);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'answers')  List<Answers>? answers, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'text')  String? text, @JsonKey(name: 'type')  NpsPollQuestionsType? type, @JsonKey(name: 'position')  int? position)?  $default,) {final _that = this;
switch (_that) {
case _Questions() when $default != null:
return $default(_that.answers,_that.id,_that.text,_that.type,_that.position);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Questions with DiagnosticableTreeMixin implements Questions {
  const _Questions({@JsonKey(name: 'answers') final  List<Answers>? answers, @JsonKey(name: 'id') this.id, @JsonKey(name: 'text') this.text, @JsonKey(name: 'type') this.type, @JsonKey(name: 'position') this.position}): _answers = answers;
  factory _Questions.fromJson(Map<String, dynamic> json) => _$QuestionsFromJson(json);

 final  List<Answers>? _answers;
@override@JsonKey(name: 'answers') List<Answers>? get answers {
  final value = _answers;
  if (value == null) return null;
  if (_answers is EqualUnmodifiableListView) return _answers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'text') final  String? text;
@override@JsonKey(name: 'type') final  NpsPollQuestionsType? type;
@override@JsonKey(name: 'position') final  int? position;

/// Create a copy of Questions
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestionsCopyWith<_Questions> get copyWith => __$QuestionsCopyWithImpl<_Questions>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuestionsToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Questions'))
    ..add(DiagnosticsProperty('answers', answers))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('text', text))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('position', position));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Questions&&const DeepCollectionEquality().equals(other._answers, _answers)&&(identical(other.id, id) || other.id == id)&&(identical(other.text, text) || other.text == text)&&(identical(other.type, type) || other.type == type)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_answers),id,text,type,position);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Questions(answers: $answers, id: $id, text: $text, type: $type, position: $position)';
}


}

/// @nodoc
abstract mixin class _$QuestionsCopyWith<$Res> implements $QuestionsCopyWith<$Res> {
  factory _$QuestionsCopyWith(_Questions value, $Res Function(_Questions) _then) = __$QuestionsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'answers') List<Answers>? answers,@JsonKey(name: 'id') int? id,@JsonKey(name: 'text') String? text,@JsonKey(name: 'type') NpsPollQuestionsType? type,@JsonKey(name: 'position') int? position
});




}
/// @nodoc
class __$QuestionsCopyWithImpl<$Res>
    implements _$QuestionsCopyWith<$Res> {
  __$QuestionsCopyWithImpl(this._self, this._then);

  final _Questions _self;
  final $Res Function(_Questions) _then;

/// Create a copy of Questions
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? answers = freezed,Object? id = freezed,Object? text = freezed,Object? type = freezed,Object? position = freezed,}) {
  return _then(_Questions(
answers: freezed == answers ? _self._answers : answers // ignore: cast_nullable_to_non_nullable
as List<Answers>?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as NpsPollQuestionsType?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$Answers implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'start') int? get start;@JsonKey(name: 'end') int? get end;@JsonKey(name: 'text') String? get text;
/// Create a copy of Answers
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnswersCopyWith<Answers> get copyWith => _$AnswersCopyWithImpl<Answers>(this as Answers, _$identity);

  /// Serializes this Answers to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Answers'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('start', start))..add(DiagnosticsProperty('end', end))..add(DiagnosticsProperty('text', text));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Answers&&(identical(other.id, id) || other.id == id)&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,start,end,text);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Answers(id: $id, start: $start, end: $end, text: $text)';
}


}

/// @nodoc
abstract mixin class $AnswersCopyWith<$Res>  {
  factory $AnswersCopyWith(Answers value, $Res Function(Answers) _then) = _$AnswersCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'start') int? start,@JsonKey(name: 'end') int? end,@JsonKey(name: 'text') String? text
});




}
/// @nodoc
class _$AnswersCopyWithImpl<$Res>
    implements $AnswersCopyWith<$Res> {
  _$AnswersCopyWithImpl(this._self, this._then);

  final Answers _self;
  final $Res Function(Answers) _then;

/// Create a copy of Answers
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? start = freezed,Object? end = freezed,Object? text = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,start: freezed == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as int?,end: freezed == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as int?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Answers].
extension AnswersPatterns on Answers {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Answers value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Answers() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Answers value)  $default,){
final _that = this;
switch (_that) {
case _Answers():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Answers value)?  $default,){
final _that = this;
switch (_that) {
case _Answers() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'start')  int? start, @JsonKey(name: 'end')  int? end, @JsonKey(name: 'text')  String? text)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Answers() when $default != null:
return $default(_that.id,_that.start,_that.end,_that.text);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'start')  int? start, @JsonKey(name: 'end')  int? end, @JsonKey(name: 'text')  String? text)  $default,) {final _that = this;
switch (_that) {
case _Answers():
return $default(_that.id,_that.start,_that.end,_that.text);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'start')  int? start, @JsonKey(name: 'end')  int? end, @JsonKey(name: 'text')  String? text)?  $default,) {final _that = this;
switch (_that) {
case _Answers() when $default != null:
return $default(_that.id,_that.start,_that.end,_that.text);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Answers with DiagnosticableTreeMixin implements Answers {
  const _Answers({@JsonKey(name: 'id') this.id, @JsonKey(name: 'start') this.start, @JsonKey(name: 'end') this.end, @JsonKey(name: 'text') this.text});
  factory _Answers.fromJson(Map<String, dynamic> json) => _$AnswersFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'start') final  int? start;
@override@JsonKey(name: 'end') final  int? end;
@override@JsonKey(name: 'text') final  String? text;

/// Create a copy of Answers
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnswersCopyWith<_Answers> get copyWith => __$AnswersCopyWithImpl<_Answers>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnswersToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Answers'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('start', start))..add(DiagnosticsProperty('end', end))..add(DiagnosticsProperty('text', text));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Answers&&(identical(other.id, id) || other.id == id)&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,start,end,text);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Answers(id: $id, start: $start, end: $end, text: $text)';
}


}

/// @nodoc
abstract mixin class _$AnswersCopyWith<$Res> implements $AnswersCopyWith<$Res> {
  factory _$AnswersCopyWith(_Answers value, $Res Function(_Answers) _then) = __$AnswersCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'start') int? start,@JsonKey(name: 'end') int? end,@JsonKey(name: 'text') String? text
});




}
/// @nodoc
class __$AnswersCopyWithImpl<$Res>
    implements _$AnswersCopyWith<$Res> {
  __$AnswersCopyWithImpl(this._self, this._then);

  final _Answers _self;
  final $Res Function(_Answers) _then;

/// Create a copy of Answers
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? start = freezed,Object? end = freezed,Object? text = freezed,}) {
  return _then(_Answers(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,start: freezed == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as int?,end: freezed == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as int?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
