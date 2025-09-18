// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_student_relation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TestStudentRelation implements DiagnosticableTreeMixin {

@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'created_by') UserIdDefault? get createdBy;@JsonKey(name: 'updated_by') UserIdDefault? get updatedBy;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'total_score') String? get totalScore;@JsonKey(name: 'json_answer') List<JsonAnswer>? get jsonAnswer;@JsonKey(name: 'student_id') int? get studentId;@JsonKey(name: 'total_testing_score') int? get totalTestingScore;@JsonKey(name: 'testing') Testing? get testing;@JsonKey(name: 'student') Student? get student;
/// Create a copy of TestStudentRelation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TestStudentRelationCopyWith<TestStudentRelation> get copyWith => _$TestStudentRelationCopyWithImpl<TestStudentRelation>(this as TestStudentRelation, _$identity);

  /// Serializes this TestStudentRelation to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TestStudentRelation'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdBy', createdBy))..add(DiagnosticsProperty('updatedBy', updatedBy))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('totalScore', totalScore))..add(DiagnosticsProperty('jsonAnswer', jsonAnswer))..add(DiagnosticsProperty('studentId', studentId))..add(DiagnosticsProperty('totalTestingScore', totalTestingScore))..add(DiagnosticsProperty('testing', testing))..add(DiagnosticsProperty('student', student));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TestStudentRelation&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.id, id) || other.id == id)&&(identical(other.totalScore, totalScore) || other.totalScore == totalScore)&&const DeepCollectionEquality().equals(other.jsonAnswer, jsonAnswer)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.totalTestingScore, totalTestingScore) || other.totalTestingScore == totalTestingScore)&&(identical(other.testing, testing) || other.testing == testing)&&(identical(other.student, student) || other.student == student));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdBy,updatedBy,id,totalScore,const DeepCollectionEquality().hash(jsonAnswer),studentId,totalTestingScore,testing,student);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TestStudentRelation(createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, updatedBy: $updatedBy, id: $id, totalScore: $totalScore, jsonAnswer: $jsonAnswer, studentId: $studentId, totalTestingScore: $totalTestingScore, testing: $testing, student: $student)';
}


}

/// @nodoc
abstract mixin class $TestStudentRelationCopyWith<$Res>  {
  factory $TestStudentRelationCopyWith(TestStudentRelation value, $Res Function(TestStudentRelation) _then) = _$TestStudentRelationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by') UserIdDefault? createdBy,@JsonKey(name: 'updated_by') UserIdDefault? updatedBy,@JsonKey(name: 'id') int? id,@JsonKey(name: 'total_score') String? totalScore,@JsonKey(name: 'json_answer') List<JsonAnswer>? jsonAnswer,@JsonKey(name: 'student_id') int? studentId,@JsonKey(name: 'total_testing_score') int? totalTestingScore,@JsonKey(name: 'testing') Testing? testing,@JsonKey(name: 'student') Student? student
});


$UserIdDefaultCopyWith<$Res>? get createdBy;$UserIdDefaultCopyWith<$Res>? get updatedBy;$TestingCopyWith<$Res>? get testing;$StudentCopyWith<$Res>? get student;

}
/// @nodoc
class _$TestStudentRelationCopyWithImpl<$Res>
    implements $TestStudentRelationCopyWith<$Res> {
  _$TestStudentRelationCopyWithImpl(this._self, this._then);

  final TestStudentRelation _self;
  final $Res Function(TestStudentRelation) _then;

/// Create a copy of TestStudentRelation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? updatedBy = freezed,Object? id = freezed,Object? totalScore = freezed,Object? jsonAnswer = freezed,Object? studentId = freezed,Object? totalTestingScore = freezed,Object? testing = freezed,Object? student = freezed,}) {
  return _then(_self.copyWith(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,totalScore: freezed == totalScore ? _self.totalScore : totalScore // ignore: cast_nullable_to_non_nullable
as String?,jsonAnswer: freezed == jsonAnswer ? _self.jsonAnswer : jsonAnswer // ignore: cast_nullable_to_non_nullable
as List<JsonAnswer>?,studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as int?,totalTestingScore: freezed == totalTestingScore ? _self.totalTestingScore : totalTestingScore // ignore: cast_nullable_to_non_nullable
as int?,testing: freezed == testing ? _self.testing : testing // ignore: cast_nullable_to_non_nullable
as Testing?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as Student?,
  ));
}
/// Create a copy of TestStudentRelation
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
}/// Create a copy of TestStudentRelation
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
}/// Create a copy of TestStudentRelation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TestingCopyWith<$Res>? get testing {
    if (_self.testing == null) {
    return null;
  }

  return $TestingCopyWith<$Res>(_self.testing!, (value) {
    return _then(_self.copyWith(testing: value));
  });
}/// Create a copy of TestStudentRelation
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
}
}


/// Adds pattern-matching-related methods to [TestStudentRelation].
extension TestStudentRelationPatterns on TestStudentRelation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TestStudentRelation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TestStudentRelation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TestStudentRelation value)  $default,){
final _that = this;
switch (_that) {
case _TestStudentRelation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TestStudentRelation value)?  $default,){
final _that = this;
switch (_that) {
case _TestStudentRelation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'total_score')  String? totalScore, @JsonKey(name: 'json_answer')  List<JsonAnswer>? jsonAnswer, @JsonKey(name: 'student_id')  int? studentId, @JsonKey(name: 'total_testing_score')  int? totalTestingScore, @JsonKey(name: 'testing')  Testing? testing, @JsonKey(name: 'student')  Student? student)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TestStudentRelation() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.id,_that.totalScore,_that.jsonAnswer,_that.studentId,_that.totalTestingScore,_that.testing,_that.student);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'total_score')  String? totalScore, @JsonKey(name: 'json_answer')  List<JsonAnswer>? jsonAnswer, @JsonKey(name: 'student_id')  int? studentId, @JsonKey(name: 'total_testing_score')  int? totalTestingScore, @JsonKey(name: 'testing')  Testing? testing, @JsonKey(name: 'student')  Student? student)  $default,) {final _that = this;
switch (_that) {
case _TestStudentRelation():
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.id,_that.totalScore,_that.jsonAnswer,_that.studentId,_that.totalTestingScore,_that.testing,_that.student);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'total_score')  String? totalScore, @JsonKey(name: 'json_answer')  List<JsonAnswer>? jsonAnswer, @JsonKey(name: 'student_id')  int? studentId, @JsonKey(name: 'total_testing_score')  int? totalTestingScore, @JsonKey(name: 'testing')  Testing? testing, @JsonKey(name: 'student')  Student? student)?  $default,) {final _that = this;
switch (_that) {
case _TestStudentRelation() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.id,_that.totalScore,_that.jsonAnswer,_that.studentId,_that.totalTestingScore,_that.testing,_that.student);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TestStudentRelation with DiagnosticableTreeMixin implements TestStudentRelation {
  const _TestStudentRelation({@JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'created_by') this.createdBy, @JsonKey(name: 'updated_by') this.updatedBy, @JsonKey(name: 'id') this.id, @JsonKey(name: 'total_score') this.totalScore, @JsonKey(name: 'json_answer') final  List<JsonAnswer>? jsonAnswer, @JsonKey(name: 'student_id') this.studentId, @JsonKey(name: 'total_testing_score') this.totalTestingScore, @JsonKey(name: 'testing') this.testing, @JsonKey(name: 'student') this.student}): _jsonAnswer = jsonAnswer;
  factory _TestStudentRelation.fromJson(Map<String, dynamic> json) => _$TestStudentRelationFromJson(json);

@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'created_by') final  UserIdDefault? createdBy;
@override@JsonKey(name: 'updated_by') final  UserIdDefault? updatedBy;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'total_score') final  String? totalScore;
 final  List<JsonAnswer>? _jsonAnswer;
@override@JsonKey(name: 'json_answer') List<JsonAnswer>? get jsonAnswer {
  final value = _jsonAnswer;
  if (value == null) return null;
  if (_jsonAnswer is EqualUnmodifiableListView) return _jsonAnswer;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'student_id') final  int? studentId;
@override@JsonKey(name: 'total_testing_score') final  int? totalTestingScore;
@override@JsonKey(name: 'testing') final  Testing? testing;
@override@JsonKey(name: 'student') final  Student? student;

/// Create a copy of TestStudentRelation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TestStudentRelationCopyWith<_TestStudentRelation> get copyWith => __$TestStudentRelationCopyWithImpl<_TestStudentRelation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TestStudentRelationToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TestStudentRelation'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdBy', createdBy))..add(DiagnosticsProperty('updatedBy', updatedBy))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('totalScore', totalScore))..add(DiagnosticsProperty('jsonAnswer', jsonAnswer))..add(DiagnosticsProperty('studentId', studentId))..add(DiagnosticsProperty('totalTestingScore', totalTestingScore))..add(DiagnosticsProperty('testing', testing))..add(DiagnosticsProperty('student', student));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TestStudentRelation&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.id, id) || other.id == id)&&(identical(other.totalScore, totalScore) || other.totalScore == totalScore)&&const DeepCollectionEquality().equals(other._jsonAnswer, _jsonAnswer)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.totalTestingScore, totalTestingScore) || other.totalTestingScore == totalTestingScore)&&(identical(other.testing, testing) || other.testing == testing)&&(identical(other.student, student) || other.student == student));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdBy,updatedBy,id,totalScore,const DeepCollectionEquality().hash(_jsonAnswer),studentId,totalTestingScore,testing,student);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TestStudentRelation(createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, updatedBy: $updatedBy, id: $id, totalScore: $totalScore, jsonAnswer: $jsonAnswer, studentId: $studentId, totalTestingScore: $totalTestingScore, testing: $testing, student: $student)';
}


}

/// @nodoc
abstract mixin class _$TestStudentRelationCopyWith<$Res> implements $TestStudentRelationCopyWith<$Res> {
  factory _$TestStudentRelationCopyWith(_TestStudentRelation value, $Res Function(_TestStudentRelation) _then) = __$TestStudentRelationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by') UserIdDefault? createdBy,@JsonKey(name: 'updated_by') UserIdDefault? updatedBy,@JsonKey(name: 'id') int? id,@JsonKey(name: 'total_score') String? totalScore,@JsonKey(name: 'json_answer') List<JsonAnswer>? jsonAnswer,@JsonKey(name: 'student_id') int? studentId,@JsonKey(name: 'total_testing_score') int? totalTestingScore,@JsonKey(name: 'testing') Testing? testing,@JsonKey(name: 'student') Student? student
});


@override $UserIdDefaultCopyWith<$Res>? get createdBy;@override $UserIdDefaultCopyWith<$Res>? get updatedBy;@override $TestingCopyWith<$Res>? get testing;@override $StudentCopyWith<$Res>? get student;

}
/// @nodoc
class __$TestStudentRelationCopyWithImpl<$Res>
    implements _$TestStudentRelationCopyWith<$Res> {
  __$TestStudentRelationCopyWithImpl(this._self, this._then);

  final _TestStudentRelation _self;
  final $Res Function(_TestStudentRelation) _then;

/// Create a copy of TestStudentRelation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? updatedBy = freezed,Object? id = freezed,Object? totalScore = freezed,Object? jsonAnswer = freezed,Object? studentId = freezed,Object? totalTestingScore = freezed,Object? testing = freezed,Object? student = freezed,}) {
  return _then(_TestStudentRelation(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,totalScore: freezed == totalScore ? _self.totalScore : totalScore // ignore: cast_nullable_to_non_nullable
as String?,jsonAnswer: freezed == jsonAnswer ? _self._jsonAnswer : jsonAnswer // ignore: cast_nullable_to_non_nullable
as List<JsonAnswer>?,studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as int?,totalTestingScore: freezed == totalTestingScore ? _self.totalTestingScore : totalTestingScore // ignore: cast_nullable_to_non_nullable
as int?,testing: freezed == testing ? _self.testing : testing // ignore: cast_nullable_to_non_nullable
as Testing?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as Student?,
  ));
}

/// Create a copy of TestStudentRelation
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
}/// Create a copy of TestStudentRelation
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
}/// Create a copy of TestStudentRelation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TestingCopyWith<$Res>? get testing {
    if (_self.testing == null) {
    return null;
  }

  return $TestingCopyWith<$Res>(_self.testing!, (value) {
    return _then(_self.copyWith(testing: value));
  });
}/// Create a copy of TestStudentRelation
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
}
}


/// @nodoc
mixin _$Testing implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'assigned_date') String? get assignedDate;@JsonKey(name: 'description') String? get description;@JsonKey(name: 'question') List<Question>? get question;
/// Create a copy of Testing
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TestingCopyWith<Testing> get copyWith => _$TestingCopyWithImpl<Testing>(this as Testing, _$identity);

  /// Serializes this Testing to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Testing'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('assignedDate', assignedDate))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('question', question));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Testing&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.assignedDate, assignedDate) || other.assignedDate == assignedDate)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.question, question));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,assignedDate,description,const DeepCollectionEquality().hash(question));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Testing(id: $id, name: $name, assignedDate: $assignedDate, description: $description, question: $question)';
}


}

/// @nodoc
abstract mixin class $TestingCopyWith<$Res>  {
  factory $TestingCopyWith(Testing value, $Res Function(Testing) _then) = _$TestingCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'assigned_date') String? assignedDate,@JsonKey(name: 'description') String? description,@JsonKey(name: 'question') List<Question>? question
});




}
/// @nodoc
class _$TestingCopyWithImpl<$Res>
    implements $TestingCopyWith<$Res> {
  _$TestingCopyWithImpl(this._self, this._then);

  final Testing _self;
  final $Res Function(Testing) _then;

/// Create a copy of Testing
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? assignedDate = freezed,Object? description = freezed,Object? question = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,assignedDate: freezed == assignedDate ? _self.assignedDate : assignedDate // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,question: freezed == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as List<Question>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Testing].
extension TestingPatterns on Testing {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Testing value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Testing() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Testing value)  $default,){
final _that = this;
switch (_that) {
case _Testing():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Testing value)?  $default,){
final _that = this;
switch (_that) {
case _Testing() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'assigned_date')  String? assignedDate, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'question')  List<Question>? question)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Testing() when $default != null:
return $default(_that.id,_that.name,_that.assignedDate,_that.description,_that.question);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'assigned_date')  String? assignedDate, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'question')  List<Question>? question)  $default,) {final _that = this;
switch (_that) {
case _Testing():
return $default(_that.id,_that.name,_that.assignedDate,_that.description,_that.question);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'assigned_date')  String? assignedDate, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'question')  List<Question>? question)?  $default,) {final _that = this;
switch (_that) {
case _Testing() when $default != null:
return $default(_that.id,_that.name,_that.assignedDate,_that.description,_that.question);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Testing with DiagnosticableTreeMixin implements Testing {
  const _Testing({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'assigned_date') this.assignedDate, @JsonKey(name: 'description') this.description, @JsonKey(name: 'question') final  List<Question>? question}): _question = question;
  factory _Testing.fromJson(Map<String, dynamic> json) => _$TestingFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'assigned_date') final  String? assignedDate;
@override@JsonKey(name: 'description') final  String? description;
 final  List<Question>? _question;
@override@JsonKey(name: 'question') List<Question>? get question {
  final value = _question;
  if (value == null) return null;
  if (_question is EqualUnmodifiableListView) return _question;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Testing
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TestingCopyWith<_Testing> get copyWith => __$TestingCopyWithImpl<_Testing>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TestingToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Testing'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('assignedDate', assignedDate))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('question', question));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Testing&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.assignedDate, assignedDate) || other.assignedDate == assignedDate)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._question, _question));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,assignedDate,description,const DeepCollectionEquality().hash(_question));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Testing(id: $id, name: $name, assignedDate: $assignedDate, description: $description, question: $question)';
}


}

/// @nodoc
abstract mixin class _$TestingCopyWith<$Res> implements $TestingCopyWith<$Res> {
  factory _$TestingCopyWith(_Testing value, $Res Function(_Testing) _then) = __$TestingCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'assigned_date') String? assignedDate,@JsonKey(name: 'description') String? description,@JsonKey(name: 'question') List<Question>? question
});




}
/// @nodoc
class __$TestingCopyWithImpl<$Res>
    implements _$TestingCopyWith<$Res> {
  __$TestingCopyWithImpl(this._self, this._then);

  final _Testing _self;
  final $Res Function(_Testing) _then;

/// Create a copy of Testing
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? assignedDate = freezed,Object? description = freezed,Object? question = freezed,}) {
  return _then(_Testing(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,assignedDate: freezed == assignedDate ? _self.assignedDate : assignedDate // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,question: freezed == question ? _self._question : question // ignore: cast_nullable_to_non_nullable
as List<Question>?,
  ));
}


}


/// @nodoc
mixin _$Question implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'text') String? get text;@JsonKey(name: 'video') String? get video;@JsonKey(name: 'image') String? get image;@JsonKey(name: 'score') int? get score;@JsonKey(name: 'multiselect') bool? get multiselect;@JsonKey(name: 'answer') List<Answer>? get answer;
/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionCopyWith<Question> get copyWith => _$QuestionCopyWithImpl<Question>(this as Question, _$identity);

  /// Serializes this Question to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Question'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('text', text))..add(DiagnosticsProperty('video', video))..add(DiagnosticsProperty('image', image))..add(DiagnosticsProperty('score', score))..add(DiagnosticsProperty('multiselect', multiselect))..add(DiagnosticsProperty('answer', answer));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Question&&(identical(other.id, id) || other.id == id)&&(identical(other.text, text) || other.text == text)&&(identical(other.video, video) || other.video == video)&&(identical(other.image, image) || other.image == image)&&(identical(other.score, score) || other.score == score)&&(identical(other.multiselect, multiselect) || other.multiselect == multiselect)&&const DeepCollectionEquality().equals(other.answer, answer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,text,video,image,score,multiselect,const DeepCollectionEquality().hash(answer));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Question(id: $id, text: $text, video: $video, image: $image, score: $score, multiselect: $multiselect, answer: $answer)';
}


}

/// @nodoc
abstract mixin class $QuestionCopyWith<$Res>  {
  factory $QuestionCopyWith(Question value, $Res Function(Question) _then) = _$QuestionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'text') String? text,@JsonKey(name: 'video') String? video,@JsonKey(name: 'image') String? image,@JsonKey(name: 'score') int? score,@JsonKey(name: 'multiselect') bool? multiselect,@JsonKey(name: 'answer') List<Answer>? answer
});




}
/// @nodoc
class _$QuestionCopyWithImpl<$Res>
    implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._self, this._then);

  final Question _self;
  final $Res Function(Question) _then;

/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? text = freezed,Object? video = freezed,Object? image = freezed,Object? score = freezed,Object? multiselect = freezed,Object? answer = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int?,multiselect: freezed == multiselect ? _self.multiselect : multiselect // ignore: cast_nullable_to_non_nullable
as bool?,answer: freezed == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as List<Answer>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Question].
extension QuestionPatterns on Question {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Question value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Question() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Question value)  $default,){
final _that = this;
switch (_that) {
case _Question():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Question value)?  $default,){
final _that = this;
switch (_that) {
case _Question() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'text')  String? text, @JsonKey(name: 'video')  String? video, @JsonKey(name: 'image')  String? image, @JsonKey(name: 'score')  int? score, @JsonKey(name: 'multiselect')  bool? multiselect, @JsonKey(name: 'answer')  List<Answer>? answer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Question() when $default != null:
return $default(_that.id,_that.text,_that.video,_that.image,_that.score,_that.multiselect,_that.answer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'text')  String? text, @JsonKey(name: 'video')  String? video, @JsonKey(name: 'image')  String? image, @JsonKey(name: 'score')  int? score, @JsonKey(name: 'multiselect')  bool? multiselect, @JsonKey(name: 'answer')  List<Answer>? answer)  $default,) {final _that = this;
switch (_that) {
case _Question():
return $default(_that.id,_that.text,_that.video,_that.image,_that.score,_that.multiselect,_that.answer);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'text')  String? text, @JsonKey(name: 'video')  String? video, @JsonKey(name: 'image')  String? image, @JsonKey(name: 'score')  int? score, @JsonKey(name: 'multiselect')  bool? multiselect, @JsonKey(name: 'answer')  List<Answer>? answer)?  $default,) {final _that = this;
switch (_that) {
case _Question() when $default != null:
return $default(_that.id,_that.text,_that.video,_that.image,_that.score,_that.multiselect,_that.answer);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Question with DiagnosticableTreeMixin implements Question {
  const _Question({@JsonKey(name: 'id') this.id, @JsonKey(name: 'text') this.text, @JsonKey(name: 'video') this.video, @JsonKey(name: 'image') this.image, @JsonKey(name: 'score') this.score, @JsonKey(name: 'multiselect') this.multiselect, @JsonKey(name: 'answer') final  List<Answer>? answer}): _answer = answer;
  factory _Question.fromJson(Map<String, dynamic> json) => _$QuestionFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'text') final  String? text;
@override@JsonKey(name: 'video') final  String? video;
@override@JsonKey(name: 'image') final  String? image;
@override@JsonKey(name: 'score') final  int? score;
@override@JsonKey(name: 'multiselect') final  bool? multiselect;
 final  List<Answer>? _answer;
@override@JsonKey(name: 'answer') List<Answer>? get answer {
  final value = _answer;
  if (value == null) return null;
  if (_answer is EqualUnmodifiableListView) return _answer;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestionCopyWith<_Question> get copyWith => __$QuestionCopyWithImpl<_Question>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuestionToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Question'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('text', text))..add(DiagnosticsProperty('video', video))..add(DiagnosticsProperty('image', image))..add(DiagnosticsProperty('score', score))..add(DiagnosticsProperty('multiselect', multiselect))..add(DiagnosticsProperty('answer', answer));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Question&&(identical(other.id, id) || other.id == id)&&(identical(other.text, text) || other.text == text)&&(identical(other.video, video) || other.video == video)&&(identical(other.image, image) || other.image == image)&&(identical(other.score, score) || other.score == score)&&(identical(other.multiselect, multiselect) || other.multiselect == multiselect)&&const DeepCollectionEquality().equals(other._answer, _answer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,text,video,image,score,multiselect,const DeepCollectionEquality().hash(_answer));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Question(id: $id, text: $text, video: $video, image: $image, score: $score, multiselect: $multiselect, answer: $answer)';
}


}

/// @nodoc
abstract mixin class _$QuestionCopyWith<$Res> implements $QuestionCopyWith<$Res> {
  factory _$QuestionCopyWith(_Question value, $Res Function(_Question) _then) = __$QuestionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'text') String? text,@JsonKey(name: 'video') String? video,@JsonKey(name: 'image') String? image,@JsonKey(name: 'score') int? score,@JsonKey(name: 'multiselect') bool? multiselect,@JsonKey(name: 'answer') List<Answer>? answer
});




}
/// @nodoc
class __$QuestionCopyWithImpl<$Res>
    implements _$QuestionCopyWith<$Res> {
  __$QuestionCopyWithImpl(this._self, this._then);

  final _Question _self;
  final $Res Function(_Question) _then;

/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? text = freezed,Object? video = freezed,Object? image = freezed,Object? score = freezed,Object? multiselect = freezed,Object? answer = freezed,}) {
  return _then(_Question(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int?,multiselect: freezed == multiselect ? _self.multiselect : multiselect // ignore: cast_nullable_to_non_nullable
as bool?,answer: freezed == answer ? _self._answer : answer // ignore: cast_nullable_to_non_nullable
as List<Answer>?,
  ));
}


}


/// @nodoc
mixin _$Answer implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'text') String? get text;@JsonKey(name: 'video') String? get video;@JsonKey(name: 'image') String? get image;@JsonKey(name: 'correct') bool? get correct;
/// Create a copy of Answer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnswerCopyWith<Answer> get copyWith => _$AnswerCopyWithImpl<Answer>(this as Answer, _$identity);

  /// Serializes this Answer to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Answer'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('text', text))..add(DiagnosticsProperty('video', video))..add(DiagnosticsProperty('image', image))..add(DiagnosticsProperty('correct', correct));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Answer&&(identical(other.id, id) || other.id == id)&&(identical(other.text, text) || other.text == text)&&(identical(other.video, video) || other.video == video)&&(identical(other.image, image) || other.image == image)&&(identical(other.correct, correct) || other.correct == correct));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,text,video,image,correct);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Answer(id: $id, text: $text, video: $video, image: $image, correct: $correct)';
}


}

/// @nodoc
abstract mixin class $AnswerCopyWith<$Res>  {
  factory $AnswerCopyWith(Answer value, $Res Function(Answer) _then) = _$AnswerCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'text') String? text,@JsonKey(name: 'video') String? video,@JsonKey(name: 'image') String? image,@JsonKey(name: 'correct') bool? correct
});




}
/// @nodoc
class _$AnswerCopyWithImpl<$Res>
    implements $AnswerCopyWith<$Res> {
  _$AnswerCopyWithImpl(this._self, this._then);

  final Answer _self;
  final $Res Function(Answer) _then;

/// Create a copy of Answer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? text = freezed,Object? video = freezed,Object? image = freezed,Object? correct = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,correct: freezed == correct ? _self.correct : correct // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [Answer].
extension AnswerPatterns on Answer {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Answer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Answer() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Answer value)  $default,){
final _that = this;
switch (_that) {
case _Answer():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Answer value)?  $default,){
final _that = this;
switch (_that) {
case _Answer() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'text')  String? text, @JsonKey(name: 'video')  String? video, @JsonKey(name: 'image')  String? image, @JsonKey(name: 'correct')  bool? correct)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Answer() when $default != null:
return $default(_that.id,_that.text,_that.video,_that.image,_that.correct);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'text')  String? text, @JsonKey(name: 'video')  String? video, @JsonKey(name: 'image')  String? image, @JsonKey(name: 'correct')  bool? correct)  $default,) {final _that = this;
switch (_that) {
case _Answer():
return $default(_that.id,_that.text,_that.video,_that.image,_that.correct);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'text')  String? text, @JsonKey(name: 'video')  String? video, @JsonKey(name: 'image')  String? image, @JsonKey(name: 'correct')  bool? correct)?  $default,) {final _that = this;
switch (_that) {
case _Answer() when $default != null:
return $default(_that.id,_that.text,_that.video,_that.image,_that.correct);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Answer with DiagnosticableTreeMixin implements Answer {
  const _Answer({@JsonKey(name: 'id') this.id, @JsonKey(name: 'text') this.text, @JsonKey(name: 'video') this.video, @JsonKey(name: 'image') this.image, @JsonKey(name: 'correct') this.correct});
  factory _Answer.fromJson(Map<String, dynamic> json) => _$AnswerFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'text') final  String? text;
@override@JsonKey(name: 'video') final  String? video;
@override@JsonKey(name: 'image') final  String? image;
@override@JsonKey(name: 'correct') final  bool? correct;

/// Create a copy of Answer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnswerCopyWith<_Answer> get copyWith => __$AnswerCopyWithImpl<_Answer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnswerToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Answer'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('text', text))..add(DiagnosticsProperty('video', video))..add(DiagnosticsProperty('image', image))..add(DiagnosticsProperty('correct', correct));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Answer&&(identical(other.id, id) || other.id == id)&&(identical(other.text, text) || other.text == text)&&(identical(other.video, video) || other.video == video)&&(identical(other.image, image) || other.image == image)&&(identical(other.correct, correct) || other.correct == correct));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,text,video,image,correct);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Answer(id: $id, text: $text, video: $video, image: $image, correct: $correct)';
}


}

/// @nodoc
abstract mixin class _$AnswerCopyWith<$Res> implements $AnswerCopyWith<$Res> {
  factory _$AnswerCopyWith(_Answer value, $Res Function(_Answer) _then) = __$AnswerCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'text') String? text,@JsonKey(name: 'video') String? video,@JsonKey(name: 'image') String? image,@JsonKey(name: 'correct') bool? correct
});




}
/// @nodoc
class __$AnswerCopyWithImpl<$Res>
    implements _$AnswerCopyWith<$Res> {
  __$AnswerCopyWithImpl(this._self, this._then);

  final _Answer _self;
  final $Res Function(_Answer) _then;

/// Create a copy of Answer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? text = freezed,Object? video = freezed,Object? image = freezed,Object? correct = freezed,}) {
  return _then(_Answer(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,correct: freezed == correct ? _self.correct : correct // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$JsonAnswer implements DiagnosticableTreeMixin {

@JsonKey(name: 'answers') List<Answers>? get answers;@JsonKey(name: 'question_id') int? get questionId;
/// Create a copy of JsonAnswer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JsonAnswerCopyWith<JsonAnswer> get copyWith => _$JsonAnswerCopyWithImpl<JsonAnswer>(this as JsonAnswer, _$identity);

  /// Serializes this JsonAnswer to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'JsonAnswer'))
    ..add(DiagnosticsProperty('answers', answers))..add(DiagnosticsProperty('questionId', questionId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JsonAnswer&&const DeepCollectionEquality().equals(other.answers, answers)&&(identical(other.questionId, questionId) || other.questionId == questionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(answers),questionId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'JsonAnswer(answers: $answers, questionId: $questionId)';
}


}

/// @nodoc
abstract mixin class $JsonAnswerCopyWith<$Res>  {
  factory $JsonAnswerCopyWith(JsonAnswer value, $Res Function(JsonAnswer) _then) = _$JsonAnswerCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'answers') List<Answers>? answers,@JsonKey(name: 'question_id') int? questionId
});




}
/// @nodoc
class _$JsonAnswerCopyWithImpl<$Res>
    implements $JsonAnswerCopyWith<$Res> {
  _$JsonAnswerCopyWithImpl(this._self, this._then);

  final JsonAnswer _self;
  final $Res Function(JsonAnswer) _then;

/// Create a copy of JsonAnswer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? answers = freezed,Object? questionId = freezed,}) {
  return _then(_self.copyWith(
answers: freezed == answers ? _self.answers : answers // ignore: cast_nullable_to_non_nullable
as List<Answers>?,questionId: freezed == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [JsonAnswer].
extension JsonAnswerPatterns on JsonAnswer {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JsonAnswer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JsonAnswer() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JsonAnswer value)  $default,){
final _that = this;
switch (_that) {
case _JsonAnswer():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JsonAnswer value)?  $default,){
final _that = this;
switch (_that) {
case _JsonAnswer() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'answers')  List<Answers>? answers, @JsonKey(name: 'question_id')  int? questionId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JsonAnswer() when $default != null:
return $default(_that.answers,_that.questionId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'answers')  List<Answers>? answers, @JsonKey(name: 'question_id')  int? questionId)  $default,) {final _that = this;
switch (_that) {
case _JsonAnswer():
return $default(_that.answers,_that.questionId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'answers')  List<Answers>? answers, @JsonKey(name: 'question_id')  int? questionId)?  $default,) {final _that = this;
switch (_that) {
case _JsonAnswer() when $default != null:
return $default(_that.answers,_that.questionId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _JsonAnswer with DiagnosticableTreeMixin implements JsonAnswer {
  const _JsonAnswer({@JsonKey(name: 'answers') final  List<Answers>? answers, @JsonKey(name: 'question_id') this.questionId}): _answers = answers;
  factory _JsonAnswer.fromJson(Map<String, dynamic> json) => _$JsonAnswerFromJson(json);

 final  List<Answers>? _answers;
@override@JsonKey(name: 'answers') List<Answers>? get answers {
  final value = _answers;
  if (value == null) return null;
  if (_answers is EqualUnmodifiableListView) return _answers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'question_id') final  int? questionId;

/// Create a copy of JsonAnswer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JsonAnswerCopyWith<_JsonAnswer> get copyWith => __$JsonAnswerCopyWithImpl<_JsonAnswer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JsonAnswerToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'JsonAnswer'))
    ..add(DiagnosticsProperty('answers', answers))..add(DiagnosticsProperty('questionId', questionId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JsonAnswer&&const DeepCollectionEquality().equals(other._answers, _answers)&&(identical(other.questionId, questionId) || other.questionId == questionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_answers),questionId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'JsonAnswer(answers: $answers, questionId: $questionId)';
}


}

/// @nodoc
abstract mixin class _$JsonAnswerCopyWith<$Res> implements $JsonAnswerCopyWith<$Res> {
  factory _$JsonAnswerCopyWith(_JsonAnswer value, $Res Function(_JsonAnswer) _then) = __$JsonAnswerCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'answers') List<Answers>? answers,@JsonKey(name: 'question_id') int? questionId
});




}
/// @nodoc
class __$JsonAnswerCopyWithImpl<$Res>
    implements _$JsonAnswerCopyWith<$Res> {
  __$JsonAnswerCopyWithImpl(this._self, this._then);

  final _JsonAnswer _self;
  final $Res Function(_JsonAnswer) _then;

/// Create a copy of JsonAnswer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? answers = freezed,Object? questionId = freezed,}) {
  return _then(_JsonAnswer(
answers: freezed == answers ? _self._answers : answers // ignore: cast_nullable_to_non_nullable
as List<Answers>?,questionId: freezed == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$Answers implements DiagnosticableTreeMixin {

@JsonKey(name: 'answer_id') int? get answerId;
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
    ..add(DiagnosticsProperty('answerId', answerId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Answers&&(identical(other.answerId, answerId) || other.answerId == answerId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,answerId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Answers(answerId: $answerId)';
}


}

/// @nodoc
abstract mixin class $AnswersCopyWith<$Res>  {
  factory $AnswersCopyWith(Answers value, $Res Function(Answers) _then) = _$AnswersCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'answer_id') int? answerId
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
@pragma('vm:prefer-inline') @override $Res call({Object? answerId = freezed,}) {
  return _then(_self.copyWith(
answerId: freezed == answerId ? _self.answerId : answerId // ignore: cast_nullable_to_non_nullable
as int?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'answer_id')  int? answerId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Answers() when $default != null:
return $default(_that.answerId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'answer_id')  int? answerId)  $default,) {final _that = this;
switch (_that) {
case _Answers():
return $default(_that.answerId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'answer_id')  int? answerId)?  $default,) {final _that = this;
switch (_that) {
case _Answers() when $default != null:
return $default(_that.answerId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Answers with DiagnosticableTreeMixin implements Answers {
  const _Answers({@JsonKey(name: 'answer_id') this.answerId});
  factory _Answers.fromJson(Map<String, dynamic> json) => _$AnswersFromJson(json);

@override@JsonKey(name: 'answer_id') final  int? answerId;

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
    ..add(DiagnosticsProperty('answerId', answerId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Answers&&(identical(other.answerId, answerId) || other.answerId == answerId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,answerId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Answers(answerId: $answerId)';
}


}

/// @nodoc
abstract mixin class _$AnswersCopyWith<$Res> implements $AnswersCopyWith<$Res> {
  factory _$AnswersCopyWith(_Answers value, $Res Function(_Answers) _then) = __$AnswersCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'answer_id') int? answerId
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
@override @pragma('vm:prefer-inline') $Res call({Object? answerId = freezed,}) {
  return _then(_Answers(
answerId: freezed == answerId ? _self.answerId : answerId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
