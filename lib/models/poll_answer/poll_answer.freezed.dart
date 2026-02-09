// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'poll_answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PollAnswer implements DiagnosticableTreeMixin {

@JsonKey(name: 'student_poll_id') int get studentPollId;@JsonKey(name: 'answers') List<QuestionAnswers> get answers;
/// Create a copy of PollAnswer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PollAnswerCopyWith<PollAnswer> get copyWith => _$PollAnswerCopyWithImpl<PollAnswer>(this as PollAnswer, _$identity);

  /// Serializes this PollAnswer to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PollAnswer'))
    ..add(DiagnosticsProperty('studentPollId', studentPollId))..add(DiagnosticsProperty('answers', answers));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PollAnswer&&(identical(other.studentPollId, studentPollId) || other.studentPollId == studentPollId)&&const DeepCollectionEquality().equals(other.answers, answers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,studentPollId,const DeepCollectionEquality().hash(answers));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PollAnswer(studentPollId: $studentPollId, answers: $answers)';
}


}

/// @nodoc
abstract mixin class $PollAnswerCopyWith<$Res>  {
  factory $PollAnswerCopyWith(PollAnswer value, $Res Function(PollAnswer) _then) = _$PollAnswerCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_poll_id') int studentPollId,@JsonKey(name: 'answers') List<QuestionAnswers> answers
});




}
/// @nodoc
class _$PollAnswerCopyWithImpl<$Res>
    implements $PollAnswerCopyWith<$Res> {
  _$PollAnswerCopyWithImpl(this._self, this._then);

  final PollAnswer _self;
  final $Res Function(PollAnswer) _then;

/// Create a copy of PollAnswer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentPollId = null,Object? answers = null,}) {
  return _then(_self.copyWith(
studentPollId: null == studentPollId ? _self.studentPollId : studentPollId // ignore: cast_nullable_to_non_nullable
as int,answers: null == answers ? _self.answers : answers // ignore: cast_nullable_to_non_nullable
as List<QuestionAnswers>,
  ));
}

}


/// Adds pattern-matching-related methods to [PollAnswer].
extension PollAnswerPatterns on PollAnswer {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PollAnswer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PollAnswer() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PollAnswer value)  $default,){
final _that = this;
switch (_that) {
case _PollAnswer():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PollAnswer value)?  $default,){
final _that = this;
switch (_that) {
case _PollAnswer() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_poll_id')  int studentPollId, @JsonKey(name: 'answers')  List<QuestionAnswers> answers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PollAnswer() when $default != null:
return $default(_that.studentPollId,_that.answers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_poll_id')  int studentPollId, @JsonKey(name: 'answers')  List<QuestionAnswers> answers)  $default,) {final _that = this;
switch (_that) {
case _PollAnswer():
return $default(_that.studentPollId,_that.answers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'student_poll_id')  int studentPollId, @JsonKey(name: 'answers')  List<QuestionAnswers> answers)?  $default,) {final _that = this;
switch (_that) {
case _PollAnswer() when $default != null:
return $default(_that.studentPollId,_that.answers);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _PollAnswer with DiagnosticableTreeMixin implements PollAnswer {
  const _PollAnswer({@JsonKey(name: 'student_poll_id') required this.studentPollId, @JsonKey(name: 'answers') required final  List<QuestionAnswers> answers}): _answers = answers;
  factory _PollAnswer.fromJson(Map<String, dynamic> json) => _$PollAnswerFromJson(json);

@override@JsonKey(name: 'student_poll_id') final  int studentPollId;
 final  List<QuestionAnswers> _answers;
@override@JsonKey(name: 'answers') List<QuestionAnswers> get answers {
  if (_answers is EqualUnmodifiableListView) return _answers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_answers);
}


/// Create a copy of PollAnswer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PollAnswerCopyWith<_PollAnswer> get copyWith => __$PollAnswerCopyWithImpl<_PollAnswer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PollAnswerToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PollAnswer'))
    ..add(DiagnosticsProperty('studentPollId', studentPollId))..add(DiagnosticsProperty('answers', answers));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PollAnswer&&(identical(other.studentPollId, studentPollId) || other.studentPollId == studentPollId)&&const DeepCollectionEquality().equals(other._answers, _answers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,studentPollId,const DeepCollectionEquality().hash(_answers));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PollAnswer(studentPollId: $studentPollId, answers: $answers)';
}


}

/// @nodoc
abstract mixin class _$PollAnswerCopyWith<$Res> implements $PollAnswerCopyWith<$Res> {
  factory _$PollAnswerCopyWith(_PollAnswer value, $Res Function(_PollAnswer) _then) = __$PollAnswerCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_poll_id') int studentPollId,@JsonKey(name: 'answers') List<QuestionAnswers> answers
});




}
/// @nodoc
class __$PollAnswerCopyWithImpl<$Res>
    implements _$PollAnswerCopyWith<$Res> {
  __$PollAnswerCopyWithImpl(this._self, this._then);

  final _PollAnswer _self;
  final $Res Function(_PollAnswer) _then;

/// Create a copy of PollAnswer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentPollId = null,Object? answers = null,}) {
  return _then(_PollAnswer(
studentPollId: null == studentPollId ? _self.studentPollId : studentPollId // ignore: cast_nullable_to_non_nullable
as int,answers: null == answers ? _self._answers : answers // ignore: cast_nullable_to_non_nullable
as List<QuestionAnswers>,
  ));
}


}


/// @nodoc
mixin _$QuestionAnswers implements DiagnosticableTreeMixin {

@JsonKey(name: 'poll_question_id') int get pollQuestionId;@JsonKey(name: 'answer_range') int? get answerRange;@JsonKey(name: 'answer_text') String? get answerText;
/// Create a copy of QuestionAnswers
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionAnswersCopyWith<QuestionAnswers> get copyWith => _$QuestionAnswersCopyWithImpl<QuestionAnswers>(this as QuestionAnswers, _$identity);

  /// Serializes this QuestionAnswers to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'QuestionAnswers'))
    ..add(DiagnosticsProperty('pollQuestionId', pollQuestionId))..add(DiagnosticsProperty('answerRange', answerRange))..add(DiagnosticsProperty('answerText', answerText));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionAnswers&&(identical(other.pollQuestionId, pollQuestionId) || other.pollQuestionId == pollQuestionId)&&(identical(other.answerRange, answerRange) || other.answerRange == answerRange)&&(identical(other.answerText, answerText) || other.answerText == answerText));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pollQuestionId,answerRange,answerText);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'QuestionAnswers(pollQuestionId: $pollQuestionId, answerRange: $answerRange, answerText: $answerText)';
}


}

/// @nodoc
abstract mixin class $QuestionAnswersCopyWith<$Res>  {
  factory $QuestionAnswersCopyWith(QuestionAnswers value, $Res Function(QuestionAnswers) _then) = _$QuestionAnswersCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'poll_question_id') int pollQuestionId,@JsonKey(name: 'answer_range') int? answerRange,@JsonKey(name: 'answer_text') String? answerText
});




}
/// @nodoc
class _$QuestionAnswersCopyWithImpl<$Res>
    implements $QuestionAnswersCopyWith<$Res> {
  _$QuestionAnswersCopyWithImpl(this._self, this._then);

  final QuestionAnswers _self;
  final $Res Function(QuestionAnswers) _then;

/// Create a copy of QuestionAnswers
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pollQuestionId = null,Object? answerRange = freezed,Object? answerText = freezed,}) {
  return _then(_self.copyWith(
pollQuestionId: null == pollQuestionId ? _self.pollQuestionId : pollQuestionId // ignore: cast_nullable_to_non_nullable
as int,answerRange: freezed == answerRange ? _self.answerRange : answerRange // ignore: cast_nullable_to_non_nullable
as int?,answerText: freezed == answerText ? _self.answerText : answerText // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [QuestionAnswers].
extension QuestionAnswersPatterns on QuestionAnswers {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuestionAnswers value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuestionAnswers() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuestionAnswers value)  $default,){
final _that = this;
switch (_that) {
case _QuestionAnswers():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuestionAnswers value)?  $default,){
final _that = this;
switch (_that) {
case _QuestionAnswers() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'poll_question_id')  int pollQuestionId, @JsonKey(name: 'answer_range')  int? answerRange, @JsonKey(name: 'answer_text')  String? answerText)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuestionAnswers() when $default != null:
return $default(_that.pollQuestionId,_that.answerRange,_that.answerText);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'poll_question_id')  int pollQuestionId, @JsonKey(name: 'answer_range')  int? answerRange, @JsonKey(name: 'answer_text')  String? answerText)  $default,) {final _that = this;
switch (_that) {
case _QuestionAnswers():
return $default(_that.pollQuestionId,_that.answerRange,_that.answerText);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'poll_question_id')  int pollQuestionId, @JsonKey(name: 'answer_range')  int? answerRange, @JsonKey(name: 'answer_text')  String? answerText)?  $default,) {final _that = this;
switch (_that) {
case _QuestionAnswers() when $default != null:
return $default(_that.pollQuestionId,_that.answerRange,_that.answerText);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _QuestionAnswers with DiagnosticableTreeMixin implements QuestionAnswers {
  const _QuestionAnswers({@JsonKey(name: 'poll_question_id') required this.pollQuestionId, @JsonKey(name: 'answer_range') this.answerRange, @JsonKey(name: 'answer_text') this.answerText});
  factory _QuestionAnswers.fromJson(Map<String, dynamic> json) => _$QuestionAnswersFromJson(json);

@override@JsonKey(name: 'poll_question_id') final  int pollQuestionId;
@override@JsonKey(name: 'answer_range') final  int? answerRange;
@override@JsonKey(name: 'answer_text') final  String? answerText;

/// Create a copy of QuestionAnswers
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestionAnswersCopyWith<_QuestionAnswers> get copyWith => __$QuestionAnswersCopyWithImpl<_QuestionAnswers>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuestionAnswersToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'QuestionAnswers'))
    ..add(DiagnosticsProperty('pollQuestionId', pollQuestionId))..add(DiagnosticsProperty('answerRange', answerRange))..add(DiagnosticsProperty('answerText', answerText));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuestionAnswers&&(identical(other.pollQuestionId, pollQuestionId) || other.pollQuestionId == pollQuestionId)&&(identical(other.answerRange, answerRange) || other.answerRange == answerRange)&&(identical(other.answerText, answerText) || other.answerText == answerText));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pollQuestionId,answerRange,answerText);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'QuestionAnswers(pollQuestionId: $pollQuestionId, answerRange: $answerRange, answerText: $answerText)';
}


}

/// @nodoc
abstract mixin class _$QuestionAnswersCopyWith<$Res> implements $QuestionAnswersCopyWith<$Res> {
  factory _$QuestionAnswersCopyWith(_QuestionAnswers value, $Res Function(_QuestionAnswers) _then) = __$QuestionAnswersCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'poll_question_id') int pollQuestionId,@JsonKey(name: 'answer_range') int? answerRange,@JsonKey(name: 'answer_text') String? answerText
});




}
/// @nodoc
class __$QuestionAnswersCopyWithImpl<$Res>
    implements _$QuestionAnswersCopyWith<$Res> {
  __$QuestionAnswersCopyWithImpl(this._self, this._then);

  final _QuestionAnswers _self;
  final $Res Function(_QuestionAnswers) _then;

/// Create a copy of QuestionAnswers
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pollQuestionId = null,Object? answerRange = freezed,Object? answerText = freezed,}) {
  return _then(_QuestionAnswers(
pollQuestionId: null == pollQuestionId ? _self.pollQuestionId : pollQuestionId // ignore: cast_nullable_to_non_nullable
as int,answerRange: freezed == answerRange ? _self.answerRange : answerRange // ignore: cast_nullable_to_non_nullable
as int?,answerText: freezed == answerText ? _self.answerText : answerText // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
