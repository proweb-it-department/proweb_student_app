// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'material_student_relation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MaterialStudentRelation implements DiagnosticableTreeMixin {

@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'created_by') UserIdDefault? get createdBy;@JsonKey(name: 'updated_by') UserIdDefault? get updatedBy;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'module_id') int? get moduleId;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'description') String? get description;@JsonKey(name: 'sort') int? get sort;@JsonKey(name: 'status') String? get status;@JsonKey(name: 'assigned_date') String? get assignedDate;@JsonKey(name: 'attached_data') List<AttachedData>? get attachedData;
/// Create a copy of MaterialStudentRelation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaterialStudentRelationCopyWith<MaterialStudentRelation> get copyWith => _$MaterialStudentRelationCopyWithImpl<MaterialStudentRelation>(this as MaterialStudentRelation, _$identity);

  /// Serializes this MaterialStudentRelation to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MaterialStudentRelation'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdBy', createdBy))..add(DiagnosticsProperty('updatedBy', updatedBy))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('moduleId', moduleId))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('sort', sort))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('assignedDate', assignedDate))..add(DiagnosticsProperty('attachedData', attachedData));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaterialStudentRelation&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.id, id) || other.id == id)&&(identical(other.moduleId, moduleId) || other.moduleId == moduleId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.status, status) || other.status == status)&&(identical(other.assignedDate, assignedDate) || other.assignedDate == assignedDate)&&const DeepCollectionEquality().equals(other.attachedData, attachedData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdBy,updatedBy,id,moduleId,name,description,sort,status,assignedDate,const DeepCollectionEquality().hash(attachedData));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MaterialStudentRelation(createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, updatedBy: $updatedBy, id: $id, moduleId: $moduleId, name: $name, description: $description, sort: $sort, status: $status, assignedDate: $assignedDate, attachedData: $attachedData)';
}


}

/// @nodoc
abstract mixin class $MaterialStudentRelationCopyWith<$Res>  {
  factory $MaterialStudentRelationCopyWith(MaterialStudentRelation value, $Res Function(MaterialStudentRelation) _then) = _$MaterialStudentRelationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by') UserIdDefault? createdBy,@JsonKey(name: 'updated_by') UserIdDefault? updatedBy,@JsonKey(name: 'id') int? id,@JsonKey(name: 'module_id') int? moduleId,@JsonKey(name: 'name') String? name,@JsonKey(name: 'description') String? description,@JsonKey(name: 'sort') int? sort,@JsonKey(name: 'status') String? status,@JsonKey(name: 'assigned_date') String? assignedDate,@JsonKey(name: 'attached_data') List<AttachedData>? attachedData
});


$UserIdDefaultCopyWith<$Res>? get createdBy;$UserIdDefaultCopyWith<$Res>? get updatedBy;

}
/// @nodoc
class _$MaterialStudentRelationCopyWithImpl<$Res>
    implements $MaterialStudentRelationCopyWith<$Res> {
  _$MaterialStudentRelationCopyWithImpl(this._self, this._then);

  final MaterialStudentRelation _self;
  final $Res Function(MaterialStudentRelation) _then;

/// Create a copy of MaterialStudentRelation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? updatedBy = freezed,Object? id = freezed,Object? moduleId = freezed,Object? name = freezed,Object? description = freezed,Object? sort = freezed,Object? status = freezed,Object? assignedDate = freezed,Object? attachedData = freezed,}) {
  return _then(_self.copyWith(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,moduleId: freezed == moduleId ? _self.moduleId : moduleId // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,sort: freezed == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,assignedDate: freezed == assignedDate ? _self.assignedDate : assignedDate // ignore: cast_nullable_to_non_nullable
as String?,attachedData: freezed == attachedData ? _self.attachedData : attachedData // ignore: cast_nullable_to_non_nullable
as List<AttachedData>?,
  ));
}
/// Create a copy of MaterialStudentRelation
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
}/// Create a copy of MaterialStudentRelation
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


/// Adds pattern-matching-related methods to [MaterialStudentRelation].
extension MaterialStudentRelationPatterns on MaterialStudentRelation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MaterialStudentRelation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MaterialStudentRelation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MaterialStudentRelation value)  $default,){
final _that = this;
switch (_that) {
case _MaterialStudentRelation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MaterialStudentRelation value)?  $default,){
final _that = this;
switch (_that) {
case _MaterialStudentRelation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'module_id')  int? moduleId, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'sort')  int? sort, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'assigned_date')  String? assignedDate, @JsonKey(name: 'attached_data')  List<AttachedData>? attachedData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MaterialStudentRelation() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.id,_that.moduleId,_that.name,_that.description,_that.sort,_that.status,_that.assignedDate,_that.attachedData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'module_id')  int? moduleId, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'sort')  int? sort, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'assigned_date')  String? assignedDate, @JsonKey(name: 'attached_data')  List<AttachedData>? attachedData)  $default,) {final _that = this;
switch (_that) {
case _MaterialStudentRelation():
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.id,_that.moduleId,_that.name,_that.description,_that.sort,_that.status,_that.assignedDate,_that.attachedData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'module_id')  int? moduleId, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'sort')  int? sort, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'assigned_date')  String? assignedDate, @JsonKey(name: 'attached_data')  List<AttachedData>? attachedData)?  $default,) {final _that = this;
switch (_that) {
case _MaterialStudentRelation() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.id,_that.moduleId,_that.name,_that.description,_that.sort,_that.status,_that.assignedDate,_that.attachedData);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MaterialStudentRelation with DiagnosticableTreeMixin implements MaterialStudentRelation {
  const _MaterialStudentRelation({@JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'created_by') this.createdBy, @JsonKey(name: 'updated_by') this.updatedBy, @JsonKey(name: 'id') this.id, @JsonKey(name: 'module_id') this.moduleId, @JsonKey(name: 'name') this.name, @JsonKey(name: 'description') this.description, @JsonKey(name: 'sort') this.sort, @JsonKey(name: 'status') this.status, @JsonKey(name: 'assigned_date') this.assignedDate, @JsonKey(name: 'attached_data') final  List<AttachedData>? attachedData}): _attachedData = attachedData;
  factory _MaterialStudentRelation.fromJson(Map<String, dynamic> json) => _$MaterialStudentRelationFromJson(json);

@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'created_by') final  UserIdDefault? createdBy;
@override@JsonKey(name: 'updated_by') final  UserIdDefault? updatedBy;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'module_id') final  int? moduleId;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'description') final  String? description;
@override@JsonKey(name: 'sort') final  int? sort;
@override@JsonKey(name: 'status') final  String? status;
@override@JsonKey(name: 'assigned_date') final  String? assignedDate;
 final  List<AttachedData>? _attachedData;
@override@JsonKey(name: 'attached_data') List<AttachedData>? get attachedData {
  final value = _attachedData;
  if (value == null) return null;
  if (_attachedData is EqualUnmodifiableListView) return _attachedData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of MaterialStudentRelation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MaterialStudentRelationCopyWith<_MaterialStudentRelation> get copyWith => __$MaterialStudentRelationCopyWithImpl<_MaterialStudentRelation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MaterialStudentRelationToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MaterialStudentRelation'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdBy', createdBy))..add(DiagnosticsProperty('updatedBy', updatedBy))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('moduleId', moduleId))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('sort', sort))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('assignedDate', assignedDate))..add(DiagnosticsProperty('attachedData', attachedData));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MaterialStudentRelation&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.id, id) || other.id == id)&&(identical(other.moduleId, moduleId) || other.moduleId == moduleId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.status, status) || other.status == status)&&(identical(other.assignedDate, assignedDate) || other.assignedDate == assignedDate)&&const DeepCollectionEquality().equals(other._attachedData, _attachedData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdBy,updatedBy,id,moduleId,name,description,sort,status,assignedDate,const DeepCollectionEquality().hash(_attachedData));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MaterialStudentRelation(createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, updatedBy: $updatedBy, id: $id, moduleId: $moduleId, name: $name, description: $description, sort: $sort, status: $status, assignedDate: $assignedDate, attachedData: $attachedData)';
}


}

/// @nodoc
abstract mixin class _$MaterialStudentRelationCopyWith<$Res> implements $MaterialStudentRelationCopyWith<$Res> {
  factory _$MaterialStudentRelationCopyWith(_MaterialStudentRelation value, $Res Function(_MaterialStudentRelation) _then) = __$MaterialStudentRelationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by') UserIdDefault? createdBy,@JsonKey(name: 'updated_by') UserIdDefault? updatedBy,@JsonKey(name: 'id') int? id,@JsonKey(name: 'module_id') int? moduleId,@JsonKey(name: 'name') String? name,@JsonKey(name: 'description') String? description,@JsonKey(name: 'sort') int? sort,@JsonKey(name: 'status') String? status,@JsonKey(name: 'assigned_date') String? assignedDate,@JsonKey(name: 'attached_data') List<AttachedData>? attachedData
});


@override $UserIdDefaultCopyWith<$Res>? get createdBy;@override $UserIdDefaultCopyWith<$Res>? get updatedBy;

}
/// @nodoc
class __$MaterialStudentRelationCopyWithImpl<$Res>
    implements _$MaterialStudentRelationCopyWith<$Res> {
  __$MaterialStudentRelationCopyWithImpl(this._self, this._then);

  final _MaterialStudentRelation _self;
  final $Res Function(_MaterialStudentRelation) _then;

/// Create a copy of MaterialStudentRelation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? updatedBy = freezed,Object? id = freezed,Object? moduleId = freezed,Object? name = freezed,Object? description = freezed,Object? sort = freezed,Object? status = freezed,Object? assignedDate = freezed,Object? attachedData = freezed,}) {
  return _then(_MaterialStudentRelation(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,moduleId: freezed == moduleId ? _self.moduleId : moduleId // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,sort: freezed == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,assignedDate: freezed == assignedDate ? _self.assignedDate : assignedDate // ignore: cast_nullable_to_non_nullable
as String?,attachedData: freezed == attachedData ? _self._attachedData : attachedData // ignore: cast_nullable_to_non_nullable
as List<AttachedData>?,
  ));
}

/// Create a copy of MaterialStudentRelation
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
}/// Create a copy of MaterialStudentRelation
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

// dart format on
