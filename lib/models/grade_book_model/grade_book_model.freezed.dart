// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grade_book_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GradeBookModel implements DiagnosticableTreeMixin {

 int get studentid; double get score; List<GradeBookModelWork> get works;
/// Create a copy of GradeBookModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GradeBookModelCopyWith<GradeBookModel> get copyWith => _$GradeBookModelCopyWithImpl<GradeBookModel>(this as GradeBookModel, _$identity);

  /// Serializes this GradeBookModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GradeBookModel'))
    ..add(DiagnosticsProperty('studentid', studentid))..add(DiagnosticsProperty('score', score))..add(DiagnosticsProperty('works', works));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GradeBookModel&&(identical(other.studentid, studentid) || other.studentid == studentid)&&(identical(other.score, score) || other.score == score)&&const DeepCollectionEquality().equals(other.works, works));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,studentid,score,const DeepCollectionEquality().hash(works));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GradeBookModel(studentid: $studentid, score: $score, works: $works)';
}


}

/// @nodoc
abstract mixin class $GradeBookModelCopyWith<$Res>  {
  factory $GradeBookModelCopyWith(GradeBookModel value, $Res Function(GradeBookModel) _then) = _$GradeBookModelCopyWithImpl;
@useResult
$Res call({
 int studentid, double score, List<GradeBookModelWork> works
});




}
/// @nodoc
class _$GradeBookModelCopyWithImpl<$Res>
    implements $GradeBookModelCopyWith<$Res> {
  _$GradeBookModelCopyWithImpl(this._self, this._then);

  final GradeBookModel _self;
  final $Res Function(GradeBookModel) _then;

/// Create a copy of GradeBookModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentid = null,Object? score = null,Object? works = null,}) {
  return _then(_self.copyWith(
studentid: null == studentid ? _self.studentid : studentid // ignore: cast_nullable_to_non_nullable
as int,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double,works: null == works ? _self.works : works // ignore: cast_nullable_to_non_nullable
as List<GradeBookModelWork>,
  ));
}

}


/// Adds pattern-matching-related methods to [GradeBookModel].
extension GradeBookModelPatterns on GradeBookModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GradeBookModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GradeBookModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GradeBookModel value)  $default,){
final _that = this;
switch (_that) {
case _GradeBookModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GradeBookModel value)?  $default,){
final _that = this;
switch (_that) {
case _GradeBookModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int studentid,  double score,  List<GradeBookModelWork> works)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GradeBookModel() when $default != null:
return $default(_that.studentid,_that.score,_that.works);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int studentid,  double score,  List<GradeBookModelWork> works)  $default,) {final _that = this;
switch (_that) {
case _GradeBookModel():
return $default(_that.studentid,_that.score,_that.works);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int studentid,  double score,  List<GradeBookModelWork> works)?  $default,) {final _that = this;
switch (_that) {
case _GradeBookModel() when $default != null:
return $default(_that.studentid,_that.score,_that.works);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GradeBookModel with DiagnosticableTreeMixin implements GradeBookModel {
  const _GradeBookModel({required this.studentid, required this.score, required final  List<GradeBookModelWork> works}): _works = works;
  factory _GradeBookModel.fromJson(Map<String, dynamic> json) => _$GradeBookModelFromJson(json);

@override final  int studentid;
@override final  double score;
 final  List<GradeBookModelWork> _works;
@override List<GradeBookModelWork> get works {
  if (_works is EqualUnmodifiableListView) return _works;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_works);
}


/// Create a copy of GradeBookModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GradeBookModelCopyWith<_GradeBookModel> get copyWith => __$GradeBookModelCopyWithImpl<_GradeBookModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GradeBookModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GradeBookModel'))
    ..add(DiagnosticsProperty('studentid', studentid))..add(DiagnosticsProperty('score', score))..add(DiagnosticsProperty('works', works));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GradeBookModel&&(identical(other.studentid, studentid) || other.studentid == studentid)&&(identical(other.score, score) || other.score == score)&&const DeepCollectionEquality().equals(other._works, _works));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,studentid,score,const DeepCollectionEquality().hash(_works));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GradeBookModel(studentid: $studentid, score: $score, works: $works)';
}


}

/// @nodoc
abstract mixin class _$GradeBookModelCopyWith<$Res> implements $GradeBookModelCopyWith<$Res> {
  factory _$GradeBookModelCopyWith(_GradeBookModel value, $Res Function(_GradeBookModel) _then) = __$GradeBookModelCopyWithImpl;
@override @useResult
$Res call({
 int studentid, double score, List<GradeBookModelWork> works
});




}
/// @nodoc
class __$GradeBookModelCopyWithImpl<$Res>
    implements _$GradeBookModelCopyWith<$Res> {
  __$GradeBookModelCopyWithImpl(this._self, this._then);

  final _GradeBookModel _self;
  final $Res Function(_GradeBookModel) _then;

/// Create a copy of GradeBookModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentid = null,Object? score = null,Object? works = null,}) {
  return _then(_GradeBookModel(
studentid: null == studentid ? _self.studentid : studentid // ignore: cast_nullable_to_non_nullable
as int,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double,works: null == works ? _self._works : works // ignore: cast_nullable_to_non_nullable
as List<GradeBookModelWork>,
  ));
}


}


/// @nodoc
mixin _$GradeBookModelWork implements DiagnosticableTreeMixin {

 int get workId; String get name; String get createdate; GradeBookWorkType get workType; GradeBookWorkStudentType get studentType;
/// Create a copy of GradeBookModelWork
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GradeBookModelWorkCopyWith<GradeBookModelWork> get copyWith => _$GradeBookModelWorkCopyWithImpl<GradeBookModelWork>(this as GradeBookModelWork, _$identity);

  /// Serializes this GradeBookModelWork to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GradeBookModelWork'))
    ..add(DiagnosticsProperty('workId', workId))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('createdate', createdate))..add(DiagnosticsProperty('workType', workType))..add(DiagnosticsProperty('studentType', studentType));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GradeBookModelWork&&(identical(other.workId, workId) || other.workId == workId)&&(identical(other.name, name) || other.name == name)&&(identical(other.createdate, createdate) || other.createdate == createdate)&&(identical(other.workType, workType) || other.workType == workType)&&(identical(other.studentType, studentType) || other.studentType == studentType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,workId,name,createdate,workType,studentType);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GradeBookModelWork(workId: $workId, name: $name, createdate: $createdate, workType: $workType, studentType: $studentType)';
}


}

/// @nodoc
abstract mixin class $GradeBookModelWorkCopyWith<$Res>  {
  factory $GradeBookModelWorkCopyWith(GradeBookModelWork value, $Res Function(GradeBookModelWork) _then) = _$GradeBookModelWorkCopyWithImpl;
@useResult
$Res call({
 int workId, String name, String createdate, GradeBookWorkType workType, GradeBookWorkStudentType studentType
});




}
/// @nodoc
class _$GradeBookModelWorkCopyWithImpl<$Res>
    implements $GradeBookModelWorkCopyWith<$Res> {
  _$GradeBookModelWorkCopyWithImpl(this._self, this._then);

  final GradeBookModelWork _self;
  final $Res Function(GradeBookModelWork) _then;

/// Create a copy of GradeBookModelWork
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? workId = null,Object? name = null,Object? createdate = null,Object? workType = null,Object? studentType = null,}) {
  return _then(_self.copyWith(
workId: null == workId ? _self.workId : workId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,createdate: null == createdate ? _self.createdate : createdate // ignore: cast_nullable_to_non_nullable
as String,workType: null == workType ? _self.workType : workType // ignore: cast_nullable_to_non_nullable
as GradeBookWorkType,studentType: null == studentType ? _self.studentType : studentType // ignore: cast_nullable_to_non_nullable
as GradeBookWorkStudentType,
  ));
}

}


/// Adds pattern-matching-related methods to [GradeBookModelWork].
extension GradeBookModelWorkPatterns on GradeBookModelWork {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GradeBookModelWork value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GradeBookModelWork() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GradeBookModelWork value)  $default,){
final _that = this;
switch (_that) {
case _GradeBookModelWork():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GradeBookModelWork value)?  $default,){
final _that = this;
switch (_that) {
case _GradeBookModelWork() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int workId,  String name,  String createdate,  GradeBookWorkType workType,  GradeBookWorkStudentType studentType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GradeBookModelWork() when $default != null:
return $default(_that.workId,_that.name,_that.createdate,_that.workType,_that.studentType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int workId,  String name,  String createdate,  GradeBookWorkType workType,  GradeBookWorkStudentType studentType)  $default,) {final _that = this;
switch (_that) {
case _GradeBookModelWork():
return $default(_that.workId,_that.name,_that.createdate,_that.workType,_that.studentType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int workId,  String name,  String createdate,  GradeBookWorkType workType,  GradeBookWorkStudentType studentType)?  $default,) {final _that = this;
switch (_that) {
case _GradeBookModelWork() when $default != null:
return $default(_that.workId,_that.name,_that.createdate,_that.workType,_that.studentType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GradeBookModelWork with DiagnosticableTreeMixin implements GradeBookModelWork {
  const _GradeBookModelWork({required this.workId, required this.name, required this.createdate, required this.workType, required this.studentType});
  factory _GradeBookModelWork.fromJson(Map<String, dynamic> json) => _$GradeBookModelWorkFromJson(json);

@override final  int workId;
@override final  String name;
@override final  String createdate;
@override final  GradeBookWorkType workType;
@override final  GradeBookWorkStudentType studentType;

/// Create a copy of GradeBookModelWork
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GradeBookModelWorkCopyWith<_GradeBookModelWork> get copyWith => __$GradeBookModelWorkCopyWithImpl<_GradeBookModelWork>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GradeBookModelWorkToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GradeBookModelWork'))
    ..add(DiagnosticsProperty('workId', workId))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('createdate', createdate))..add(DiagnosticsProperty('workType', workType))..add(DiagnosticsProperty('studentType', studentType));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GradeBookModelWork&&(identical(other.workId, workId) || other.workId == workId)&&(identical(other.name, name) || other.name == name)&&(identical(other.createdate, createdate) || other.createdate == createdate)&&(identical(other.workType, workType) || other.workType == workType)&&(identical(other.studentType, studentType) || other.studentType == studentType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,workId,name,createdate,workType,studentType);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GradeBookModelWork(workId: $workId, name: $name, createdate: $createdate, workType: $workType, studentType: $studentType)';
}


}

/// @nodoc
abstract mixin class _$GradeBookModelWorkCopyWith<$Res> implements $GradeBookModelWorkCopyWith<$Res> {
  factory _$GradeBookModelWorkCopyWith(_GradeBookModelWork value, $Res Function(_GradeBookModelWork) _then) = __$GradeBookModelWorkCopyWithImpl;
@override @useResult
$Res call({
 int workId, String name, String createdate, GradeBookWorkType workType, GradeBookWorkStudentType studentType
});




}
/// @nodoc
class __$GradeBookModelWorkCopyWithImpl<$Res>
    implements _$GradeBookModelWorkCopyWith<$Res> {
  __$GradeBookModelWorkCopyWithImpl(this._self, this._then);

  final _GradeBookModelWork _self;
  final $Res Function(_GradeBookModelWork) _then;

/// Create a copy of GradeBookModelWork
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? workId = null,Object? name = null,Object? createdate = null,Object? workType = null,Object? studentType = null,}) {
  return _then(_GradeBookModelWork(
workId: null == workId ? _self.workId : workId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,createdate: null == createdate ? _self.createdate : createdate // ignore: cast_nullable_to_non_nullable
as String,workType: null == workType ? _self.workType : workType // ignore: cast_nullable_to_non_nullable
as GradeBookWorkType,studentType: null == studentType ? _self.studentType : studentType // ignore: cast_nullable_to_non_nullable
as GradeBookWorkStudentType,
  ));
}


}

// dart format on
