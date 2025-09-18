// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_list_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TestListGroup implements DiagnosticableTreeMixin {

@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'created_by') UserIdDefault? get createdBy;@JsonKey(name: 'updated_by') UserIdDefault? get updatedBy;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'total_score') String? get totalScore;@JsonKey(name: 'json_answer') List<JsonAnswer>? get jsonAnswer;@JsonKey(name: 'student_id') int? get studentId;@JsonKey(name: 'group_id') int? get groupId;@JsonKey(name: 'testing') Testing? get testing;
/// Create a copy of TestListGroup
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TestListGroupCopyWith<TestListGroup> get copyWith => _$TestListGroupCopyWithImpl<TestListGroup>(this as TestListGroup, _$identity);

  /// Serializes this TestListGroup to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TestListGroup'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdBy', createdBy))..add(DiagnosticsProperty('updatedBy', updatedBy))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('totalScore', totalScore))..add(DiagnosticsProperty('jsonAnswer', jsonAnswer))..add(DiagnosticsProperty('studentId', studentId))..add(DiagnosticsProperty('groupId', groupId))..add(DiagnosticsProperty('testing', testing));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TestListGroup&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.id, id) || other.id == id)&&(identical(other.totalScore, totalScore) || other.totalScore == totalScore)&&const DeepCollectionEquality().equals(other.jsonAnswer, jsonAnswer)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.testing, testing) || other.testing == testing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdBy,updatedBy,id,totalScore,const DeepCollectionEquality().hash(jsonAnswer),studentId,groupId,testing);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TestListGroup(createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, updatedBy: $updatedBy, id: $id, totalScore: $totalScore, jsonAnswer: $jsonAnswer, studentId: $studentId, groupId: $groupId, testing: $testing)';
}


}

/// @nodoc
abstract mixin class $TestListGroupCopyWith<$Res>  {
  factory $TestListGroupCopyWith(TestListGroup value, $Res Function(TestListGroup) _then) = _$TestListGroupCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by') UserIdDefault? createdBy,@JsonKey(name: 'updated_by') UserIdDefault? updatedBy,@JsonKey(name: 'id') int? id,@JsonKey(name: 'total_score') String? totalScore,@JsonKey(name: 'json_answer') List<JsonAnswer>? jsonAnswer,@JsonKey(name: 'student_id') int? studentId,@JsonKey(name: 'group_id') int? groupId,@JsonKey(name: 'testing') Testing? testing
});


$UserIdDefaultCopyWith<$Res>? get createdBy;$UserIdDefaultCopyWith<$Res>? get updatedBy;$TestingCopyWith<$Res>? get testing;

}
/// @nodoc
class _$TestListGroupCopyWithImpl<$Res>
    implements $TestListGroupCopyWith<$Res> {
  _$TestListGroupCopyWithImpl(this._self, this._then);

  final TestListGroup _self;
  final $Res Function(TestListGroup) _then;

/// Create a copy of TestListGroup
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? updatedBy = freezed,Object? id = freezed,Object? totalScore = freezed,Object? jsonAnswer = freezed,Object? studentId = freezed,Object? groupId = freezed,Object? testing = freezed,}) {
  return _then(_self.copyWith(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,totalScore: freezed == totalScore ? _self.totalScore : totalScore // ignore: cast_nullable_to_non_nullable
as String?,jsonAnswer: freezed == jsonAnswer ? _self.jsonAnswer : jsonAnswer // ignore: cast_nullable_to_non_nullable
as List<JsonAnswer>?,studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as int?,groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as int?,testing: freezed == testing ? _self.testing : testing // ignore: cast_nullable_to_non_nullable
as Testing?,
  ));
}
/// Create a copy of TestListGroup
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
}/// Create a copy of TestListGroup
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
}/// Create a copy of TestListGroup
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
}
}


/// Adds pattern-matching-related methods to [TestListGroup].
extension TestListGroupPatterns on TestListGroup {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TestListGroup value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TestListGroup() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TestListGroup value)  $default,){
final _that = this;
switch (_that) {
case _TestListGroup():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TestListGroup value)?  $default,){
final _that = this;
switch (_that) {
case _TestListGroup() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'total_score')  String? totalScore, @JsonKey(name: 'json_answer')  List<JsonAnswer>? jsonAnswer, @JsonKey(name: 'student_id')  int? studentId, @JsonKey(name: 'group_id')  int? groupId, @JsonKey(name: 'testing')  Testing? testing)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TestListGroup() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.id,_that.totalScore,_that.jsonAnswer,_that.studentId,_that.groupId,_that.testing);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'total_score')  String? totalScore, @JsonKey(name: 'json_answer')  List<JsonAnswer>? jsonAnswer, @JsonKey(name: 'student_id')  int? studentId, @JsonKey(name: 'group_id')  int? groupId, @JsonKey(name: 'testing')  Testing? testing)  $default,) {final _that = this;
switch (_that) {
case _TestListGroup():
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.id,_that.totalScore,_that.jsonAnswer,_that.studentId,_that.groupId,_that.testing);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'total_score')  String? totalScore, @JsonKey(name: 'json_answer')  List<JsonAnswer>? jsonAnswer, @JsonKey(name: 'student_id')  int? studentId, @JsonKey(name: 'group_id')  int? groupId, @JsonKey(name: 'testing')  Testing? testing)?  $default,) {final _that = this;
switch (_that) {
case _TestListGroup() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.id,_that.totalScore,_that.jsonAnswer,_that.studentId,_that.groupId,_that.testing);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TestListGroup with DiagnosticableTreeMixin implements TestListGroup {
  const _TestListGroup({@JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'created_by') this.createdBy, @JsonKey(name: 'updated_by') this.updatedBy, @JsonKey(name: 'id') this.id, @JsonKey(name: 'total_score') this.totalScore, @JsonKey(name: 'json_answer') final  List<JsonAnswer>? jsonAnswer, @JsonKey(name: 'student_id') this.studentId, @JsonKey(name: 'group_id') this.groupId, @JsonKey(name: 'testing') this.testing}): _jsonAnswer = jsonAnswer;
  factory _TestListGroup.fromJson(Map<String, dynamic> json) => _$TestListGroupFromJson(json);

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
@override@JsonKey(name: 'group_id') final  int? groupId;
@override@JsonKey(name: 'testing') final  Testing? testing;

/// Create a copy of TestListGroup
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TestListGroupCopyWith<_TestListGroup> get copyWith => __$TestListGroupCopyWithImpl<_TestListGroup>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TestListGroupToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TestListGroup'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdBy', createdBy))..add(DiagnosticsProperty('updatedBy', updatedBy))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('totalScore', totalScore))..add(DiagnosticsProperty('jsonAnswer', jsonAnswer))..add(DiagnosticsProperty('studentId', studentId))..add(DiagnosticsProperty('groupId', groupId))..add(DiagnosticsProperty('testing', testing));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TestListGroup&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.id, id) || other.id == id)&&(identical(other.totalScore, totalScore) || other.totalScore == totalScore)&&const DeepCollectionEquality().equals(other._jsonAnswer, _jsonAnswer)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.testing, testing) || other.testing == testing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdBy,updatedBy,id,totalScore,const DeepCollectionEquality().hash(_jsonAnswer),studentId,groupId,testing);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TestListGroup(createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, updatedBy: $updatedBy, id: $id, totalScore: $totalScore, jsonAnswer: $jsonAnswer, studentId: $studentId, groupId: $groupId, testing: $testing)';
}


}

/// @nodoc
abstract mixin class _$TestListGroupCopyWith<$Res> implements $TestListGroupCopyWith<$Res> {
  factory _$TestListGroupCopyWith(_TestListGroup value, $Res Function(_TestListGroup) _then) = __$TestListGroupCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by') UserIdDefault? createdBy,@JsonKey(name: 'updated_by') UserIdDefault? updatedBy,@JsonKey(name: 'id') int? id,@JsonKey(name: 'total_score') String? totalScore,@JsonKey(name: 'json_answer') List<JsonAnswer>? jsonAnswer,@JsonKey(name: 'student_id') int? studentId,@JsonKey(name: 'group_id') int? groupId,@JsonKey(name: 'testing') Testing? testing
});


@override $UserIdDefaultCopyWith<$Res>? get createdBy;@override $UserIdDefaultCopyWith<$Res>? get updatedBy;@override $TestingCopyWith<$Res>? get testing;

}
/// @nodoc
class __$TestListGroupCopyWithImpl<$Res>
    implements _$TestListGroupCopyWith<$Res> {
  __$TestListGroupCopyWithImpl(this._self, this._then);

  final _TestListGroup _self;
  final $Res Function(_TestListGroup) _then;

/// Create a copy of TestListGroup
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? updatedBy = freezed,Object? id = freezed,Object? totalScore = freezed,Object? jsonAnswer = freezed,Object? studentId = freezed,Object? groupId = freezed,Object? testing = freezed,}) {
  return _then(_TestListGroup(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,totalScore: freezed == totalScore ? _self.totalScore : totalScore // ignore: cast_nullable_to_non_nullable
as String?,jsonAnswer: freezed == jsonAnswer ? _self._jsonAnswer : jsonAnswer // ignore: cast_nullable_to_non_nullable
as List<JsonAnswer>?,studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as int?,groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as int?,testing: freezed == testing ? _self.testing : testing // ignore: cast_nullable_to_non_nullable
as Testing?,
  ));
}

/// Create a copy of TestListGroup
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
}/// Create a copy of TestListGroup
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
}/// Create a copy of TestListGroup
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
}
}


/// @nodoc
mixin _$Testing implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;
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
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Testing&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Testing(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $TestingCopyWith<$Res>  {
  factory $TestingCopyWith(Testing value, $Res Function(Testing) _then) = _$TestingCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Testing() when $default != null:
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
case _Testing():
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
case _Testing() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Testing with DiagnosticableTreeMixin implements Testing {
  const _Testing({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name});
  factory _Testing.fromJson(Map<String, dynamic> json) => _$TestingFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;

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
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Testing&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Testing(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$TestingCopyWith<$Res> implements $TestingCopyWith<$Res> {
  factory _$TestingCopyWith(_Testing value, $Res Function(_Testing) _then) = __$TestingCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_Testing(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
