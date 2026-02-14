// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_center.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ServiceCenter implements DiagnosticableTreeMixin {

@JsonKey(name: 'branch_name') String? get branchName;@JsonKey(name: 'student') Student? get student;@JsonKey(name: 'student_pc_services') List<StudentPcServices>? get studentPcServices;@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'created_by_id') int? get createdById;@JsonKey(name: 'updated_by_id') int? get updatedById;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'status') ServiceCenterStatus? get status;@JsonKey(name: 'branch_id') int? get branchId;@JsonKey(name: 'responsible_user_id') int? get responsibleUserId; User? get user;@JsonKey(name: 'received_at') String? get receivedAt;@JsonKey(name: 'returned_at') String? get returnedAt;
/// Create a copy of ServiceCenter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceCenterCopyWith<ServiceCenter> get copyWith => _$ServiceCenterCopyWithImpl<ServiceCenter>(this as ServiceCenter, _$identity);

  /// Serializes this ServiceCenter to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ServiceCenter'))
    ..add(DiagnosticsProperty('branchName', branchName))..add(DiagnosticsProperty('student', student))..add(DiagnosticsProperty('studentPcServices', studentPcServices))..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdById', createdById))..add(DiagnosticsProperty('updatedById', updatedById))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('branchId', branchId))..add(DiagnosticsProperty('responsibleUserId', responsibleUserId))..add(DiagnosticsProperty('user', user))..add(DiagnosticsProperty('receivedAt', receivedAt))..add(DiagnosticsProperty('returnedAt', returnedAt));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceCenter&&(identical(other.branchName, branchName) || other.branchName == branchName)&&(identical(other.student, student) || other.student == student)&&const DeepCollectionEquality().equals(other.studentPcServices, studentPcServices)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.updatedById, updatedById) || other.updatedById == updatedById)&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.responsibleUserId, responsibleUserId) || other.responsibleUserId == responsibleUserId)&&(identical(other.user, user) || other.user == user)&&(identical(other.receivedAt, receivedAt) || other.receivedAt == receivedAt)&&(identical(other.returnedAt, returnedAt) || other.returnedAt == returnedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,branchName,student,const DeepCollectionEquality().hash(studentPcServices),createdAt,updatedAt,createdById,updatedById,id,status,branchId,responsibleUserId,user,receivedAt,returnedAt);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ServiceCenter(branchName: $branchName, student: $student, studentPcServices: $studentPcServices, createdAt: $createdAt, updatedAt: $updatedAt, createdById: $createdById, updatedById: $updatedById, id: $id, status: $status, branchId: $branchId, responsibleUserId: $responsibleUserId, user: $user, receivedAt: $receivedAt, returnedAt: $returnedAt)';
}


}

/// @nodoc
abstract mixin class $ServiceCenterCopyWith<$Res>  {
  factory $ServiceCenterCopyWith(ServiceCenter value, $Res Function(ServiceCenter) _then) = _$ServiceCenterCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'branch_name') String? branchName,@JsonKey(name: 'student') Student? student,@JsonKey(name: 'student_pc_services') List<StudentPcServices>? studentPcServices,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by_id') int? createdById,@JsonKey(name: 'updated_by_id') int? updatedById,@JsonKey(name: 'id') int? id,@JsonKey(name: 'status') ServiceCenterStatus? status,@JsonKey(name: 'branch_id') int? branchId,@JsonKey(name: 'responsible_user_id') int? responsibleUserId, User? user,@JsonKey(name: 'received_at') String? receivedAt,@JsonKey(name: 'returned_at') String? returnedAt
});


$StudentCopyWith<$Res>? get student;$UserCopyWith<$Res>? get user;

}
/// @nodoc
class _$ServiceCenterCopyWithImpl<$Res>
    implements $ServiceCenterCopyWith<$Res> {
  _$ServiceCenterCopyWithImpl(this._self, this._then);

  final ServiceCenter _self;
  final $Res Function(ServiceCenter) _then;

/// Create a copy of ServiceCenter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? branchName = freezed,Object? student = freezed,Object? studentPcServices = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdById = freezed,Object? updatedById = freezed,Object? id = freezed,Object? status = freezed,Object? branchId = freezed,Object? responsibleUserId = freezed,Object? user = freezed,Object? receivedAt = freezed,Object? returnedAt = freezed,}) {
  return _then(_self.copyWith(
branchName: freezed == branchName ? _self.branchName : branchName // ignore: cast_nullable_to_non_nullable
as String?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as Student?,studentPcServices: freezed == studentPcServices ? _self.studentPcServices : studentPcServices // ignore: cast_nullable_to_non_nullable
as List<StudentPcServices>?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdById: freezed == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as int?,updatedById: freezed == updatedById ? _self.updatedById : updatedById // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ServiceCenterStatus?,branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as int?,responsibleUserId: freezed == responsibleUserId ? _self.responsibleUserId : responsibleUserId // ignore: cast_nullable_to_non_nullable
as int?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,receivedAt: freezed == receivedAt ? _self.receivedAt : receivedAt // ignore: cast_nullable_to_non_nullable
as String?,returnedAt: freezed == returnedAt ? _self.returnedAt : returnedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ServiceCenter
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
}/// Create a copy of ServiceCenter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [ServiceCenter].
extension ServiceCenterPatterns on ServiceCenter {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ServiceCenter value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServiceCenter() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ServiceCenter value)  $default,){
final _that = this;
switch (_that) {
case _ServiceCenter():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ServiceCenter value)?  $default,){
final _that = this;
switch (_that) {
case _ServiceCenter() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'branch_name')  String? branchName, @JsonKey(name: 'student')  Student? student, @JsonKey(name: 'student_pc_services')  List<StudentPcServices>? studentPcServices, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'status')  ServiceCenterStatus? status, @JsonKey(name: 'branch_id')  int? branchId, @JsonKey(name: 'responsible_user_id')  int? responsibleUserId,  User? user, @JsonKey(name: 'received_at')  String? receivedAt, @JsonKey(name: 'returned_at')  String? returnedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServiceCenter() when $default != null:
return $default(_that.branchName,_that.student,_that.studentPcServices,_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.id,_that.status,_that.branchId,_that.responsibleUserId,_that.user,_that.receivedAt,_that.returnedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'branch_name')  String? branchName, @JsonKey(name: 'student')  Student? student, @JsonKey(name: 'student_pc_services')  List<StudentPcServices>? studentPcServices, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'status')  ServiceCenterStatus? status, @JsonKey(name: 'branch_id')  int? branchId, @JsonKey(name: 'responsible_user_id')  int? responsibleUserId,  User? user, @JsonKey(name: 'received_at')  String? receivedAt, @JsonKey(name: 'returned_at')  String? returnedAt)  $default,) {final _that = this;
switch (_that) {
case _ServiceCenter():
return $default(_that.branchName,_that.student,_that.studentPcServices,_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.id,_that.status,_that.branchId,_that.responsibleUserId,_that.user,_that.receivedAt,_that.returnedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'branch_name')  String? branchName, @JsonKey(name: 'student')  Student? student, @JsonKey(name: 'student_pc_services')  List<StudentPcServices>? studentPcServices, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'status')  ServiceCenterStatus? status, @JsonKey(name: 'branch_id')  int? branchId, @JsonKey(name: 'responsible_user_id')  int? responsibleUserId,  User? user, @JsonKey(name: 'received_at')  String? receivedAt, @JsonKey(name: 'returned_at')  String? returnedAt)?  $default,) {final _that = this;
switch (_that) {
case _ServiceCenter() when $default != null:
return $default(_that.branchName,_that.student,_that.studentPcServices,_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.id,_that.status,_that.branchId,_that.responsibleUserId,_that.user,_that.receivedAt,_that.returnedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ServiceCenter with DiagnosticableTreeMixin implements ServiceCenter {
  const _ServiceCenter({@JsonKey(name: 'branch_name') this.branchName, @JsonKey(name: 'student') this.student, @JsonKey(name: 'student_pc_services') final  List<StudentPcServices>? studentPcServices, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'created_by_id') this.createdById, @JsonKey(name: 'updated_by_id') this.updatedById, @JsonKey(name: 'id') this.id, @JsonKey(name: 'status') this.status, @JsonKey(name: 'branch_id') this.branchId, @JsonKey(name: 'responsible_user_id') this.responsibleUserId, this.user, @JsonKey(name: 'received_at') this.receivedAt, @JsonKey(name: 'returned_at') this.returnedAt}): _studentPcServices = studentPcServices;
  factory _ServiceCenter.fromJson(Map<String, dynamic> json) => _$ServiceCenterFromJson(json);

@override@JsonKey(name: 'branch_name') final  String? branchName;
@override@JsonKey(name: 'student') final  Student? student;
 final  List<StudentPcServices>? _studentPcServices;
@override@JsonKey(name: 'student_pc_services') List<StudentPcServices>? get studentPcServices {
  final value = _studentPcServices;
  if (value == null) return null;
  if (_studentPcServices is EqualUnmodifiableListView) return _studentPcServices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'created_by_id') final  int? createdById;
@override@JsonKey(name: 'updated_by_id') final  int? updatedById;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'status') final  ServiceCenterStatus? status;
@override@JsonKey(name: 'branch_id') final  int? branchId;
@override@JsonKey(name: 'responsible_user_id') final  int? responsibleUserId;
@override final  User? user;
@override@JsonKey(name: 'received_at') final  String? receivedAt;
@override@JsonKey(name: 'returned_at') final  String? returnedAt;

/// Create a copy of ServiceCenter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServiceCenterCopyWith<_ServiceCenter> get copyWith => __$ServiceCenterCopyWithImpl<_ServiceCenter>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServiceCenterToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ServiceCenter'))
    ..add(DiagnosticsProperty('branchName', branchName))..add(DiagnosticsProperty('student', student))..add(DiagnosticsProperty('studentPcServices', studentPcServices))..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdById', createdById))..add(DiagnosticsProperty('updatedById', updatedById))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('branchId', branchId))..add(DiagnosticsProperty('responsibleUserId', responsibleUserId))..add(DiagnosticsProperty('user', user))..add(DiagnosticsProperty('receivedAt', receivedAt))..add(DiagnosticsProperty('returnedAt', returnedAt));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServiceCenter&&(identical(other.branchName, branchName) || other.branchName == branchName)&&(identical(other.student, student) || other.student == student)&&const DeepCollectionEquality().equals(other._studentPcServices, _studentPcServices)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.updatedById, updatedById) || other.updatedById == updatedById)&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.responsibleUserId, responsibleUserId) || other.responsibleUserId == responsibleUserId)&&(identical(other.user, user) || other.user == user)&&(identical(other.receivedAt, receivedAt) || other.receivedAt == receivedAt)&&(identical(other.returnedAt, returnedAt) || other.returnedAt == returnedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,branchName,student,const DeepCollectionEquality().hash(_studentPcServices),createdAt,updatedAt,createdById,updatedById,id,status,branchId,responsibleUserId,user,receivedAt,returnedAt);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ServiceCenter(branchName: $branchName, student: $student, studentPcServices: $studentPcServices, createdAt: $createdAt, updatedAt: $updatedAt, createdById: $createdById, updatedById: $updatedById, id: $id, status: $status, branchId: $branchId, responsibleUserId: $responsibleUserId, user: $user, receivedAt: $receivedAt, returnedAt: $returnedAt)';
}


}

/// @nodoc
abstract mixin class _$ServiceCenterCopyWith<$Res> implements $ServiceCenterCopyWith<$Res> {
  factory _$ServiceCenterCopyWith(_ServiceCenter value, $Res Function(_ServiceCenter) _then) = __$ServiceCenterCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'branch_name') String? branchName,@JsonKey(name: 'student') Student? student,@JsonKey(name: 'student_pc_services') List<StudentPcServices>? studentPcServices,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by_id') int? createdById,@JsonKey(name: 'updated_by_id') int? updatedById,@JsonKey(name: 'id') int? id,@JsonKey(name: 'status') ServiceCenterStatus? status,@JsonKey(name: 'branch_id') int? branchId,@JsonKey(name: 'responsible_user_id') int? responsibleUserId, User? user,@JsonKey(name: 'received_at') String? receivedAt,@JsonKey(name: 'returned_at') String? returnedAt
});


@override $StudentCopyWith<$Res>? get student;@override $UserCopyWith<$Res>? get user;

}
/// @nodoc
class __$ServiceCenterCopyWithImpl<$Res>
    implements _$ServiceCenterCopyWith<$Res> {
  __$ServiceCenterCopyWithImpl(this._self, this._then);

  final _ServiceCenter _self;
  final $Res Function(_ServiceCenter) _then;

/// Create a copy of ServiceCenter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? branchName = freezed,Object? student = freezed,Object? studentPcServices = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdById = freezed,Object? updatedById = freezed,Object? id = freezed,Object? status = freezed,Object? branchId = freezed,Object? responsibleUserId = freezed,Object? user = freezed,Object? receivedAt = freezed,Object? returnedAt = freezed,}) {
  return _then(_ServiceCenter(
branchName: freezed == branchName ? _self.branchName : branchName // ignore: cast_nullable_to_non_nullable
as String?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as Student?,studentPcServices: freezed == studentPcServices ? _self._studentPcServices : studentPcServices // ignore: cast_nullable_to_non_nullable
as List<StudentPcServices>?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdById: freezed == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as int?,updatedById: freezed == updatedById ? _self.updatedById : updatedById // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ServiceCenterStatus?,branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as int?,responsibleUserId: freezed == responsibleUserId ? _self.responsibleUserId : responsibleUserId // ignore: cast_nullable_to_non_nullable
as int?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,receivedAt: freezed == receivedAt ? _self.receivedAt : receivedAt // ignore: cast_nullable_to_non_nullable
as String?,returnedAt: freezed == returnedAt ? _self.returnedAt : returnedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ServiceCenter
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
}/// Create a copy of ServiceCenter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
mixin _$Student implements DiagnosticableTreeMixin {

@JsonKey(name: 'group') Group? get group;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'user_id') int? get userId;@JsonKey(name: 'status') String? get status;@JsonKey(name: 'group_role') String? get groupRole;@JsonKey(name: 'format') String? get format;@JsonKey(name: 'lead_id') int? get leadId;@JsonKey(name: 'auto_activate_lesson') int? get autoActivateLesson;@JsonKey(name: 'middle_rating') String? get middleRating;@JsonKey(name: 'coworking_access_last_date') String? get coworkingAccessLastDate;@JsonKey(name: 'video_access_last_date') String? get videoAccessLastDate;@JsonKey(name: 'access_to_video') bool? get accessToVideo;@JsonKey(name: 'has_package') bool? get hasPackage;@JsonKey(name: 'payment_type') String? get paymentType;@JsonKey(name: 'partially_completed_date') String? get partiallyCompletedDate;@JsonKey(name: 'partially_completed_lesson') int? get partiallyCompletedLesson;
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
    ..add(DiagnosticsProperty('group', group))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('groupRole', groupRole))..add(DiagnosticsProperty('format', format))..add(DiagnosticsProperty('leadId', leadId))..add(DiagnosticsProperty('autoActivateLesson', autoActivateLesson))..add(DiagnosticsProperty('middleRating', middleRating))..add(DiagnosticsProperty('coworkingAccessLastDate', coworkingAccessLastDate))..add(DiagnosticsProperty('videoAccessLastDate', videoAccessLastDate))..add(DiagnosticsProperty('accessToVideo', accessToVideo))..add(DiagnosticsProperty('hasPackage', hasPackage))..add(DiagnosticsProperty('paymentType', paymentType))..add(DiagnosticsProperty('partiallyCompletedDate', partiallyCompletedDate))..add(DiagnosticsProperty('partiallyCompletedLesson', partiallyCompletedLesson));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Student&&(identical(other.group, group) || other.group == group)&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.status, status) || other.status == status)&&(identical(other.groupRole, groupRole) || other.groupRole == groupRole)&&(identical(other.format, format) || other.format == format)&&(identical(other.leadId, leadId) || other.leadId == leadId)&&(identical(other.autoActivateLesson, autoActivateLesson) || other.autoActivateLesson == autoActivateLesson)&&(identical(other.middleRating, middleRating) || other.middleRating == middleRating)&&(identical(other.coworkingAccessLastDate, coworkingAccessLastDate) || other.coworkingAccessLastDate == coworkingAccessLastDate)&&(identical(other.videoAccessLastDate, videoAccessLastDate) || other.videoAccessLastDate == videoAccessLastDate)&&(identical(other.accessToVideo, accessToVideo) || other.accessToVideo == accessToVideo)&&(identical(other.hasPackage, hasPackage) || other.hasPackage == hasPackage)&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType)&&(identical(other.partiallyCompletedDate, partiallyCompletedDate) || other.partiallyCompletedDate == partiallyCompletedDate)&&(identical(other.partiallyCompletedLesson, partiallyCompletedLesson) || other.partiallyCompletedLesson == partiallyCompletedLesson));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,group,id,userId,status,groupRole,format,leadId,autoActivateLesson,middleRating,coworkingAccessLastDate,videoAccessLastDate,accessToVideo,hasPackage,paymentType,partiallyCompletedDate,partiallyCompletedLesson);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Student(group: $group, id: $id, userId: $userId, status: $status, groupRole: $groupRole, format: $format, leadId: $leadId, autoActivateLesson: $autoActivateLesson, middleRating: $middleRating, coworkingAccessLastDate: $coworkingAccessLastDate, videoAccessLastDate: $videoAccessLastDate, accessToVideo: $accessToVideo, hasPackage: $hasPackage, paymentType: $paymentType, partiallyCompletedDate: $partiallyCompletedDate, partiallyCompletedLesson: $partiallyCompletedLesson)';
}


}

/// @nodoc
abstract mixin class $StudentCopyWith<$Res>  {
  factory $StudentCopyWith(Student value, $Res Function(Student) _then) = _$StudentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'group') Group? group,@JsonKey(name: 'id') int? id,@JsonKey(name: 'user_id') int? userId,@JsonKey(name: 'status') String? status,@JsonKey(name: 'group_role') String? groupRole,@JsonKey(name: 'format') String? format,@JsonKey(name: 'lead_id') int? leadId,@JsonKey(name: 'auto_activate_lesson') int? autoActivateLesson,@JsonKey(name: 'middle_rating') String? middleRating,@JsonKey(name: 'coworking_access_last_date') String? coworkingAccessLastDate,@JsonKey(name: 'video_access_last_date') String? videoAccessLastDate,@JsonKey(name: 'access_to_video') bool? accessToVideo,@JsonKey(name: 'has_package') bool? hasPackage,@JsonKey(name: 'payment_type') String? paymentType,@JsonKey(name: 'partially_completed_date') String? partiallyCompletedDate,@JsonKey(name: 'partially_completed_lesson') int? partiallyCompletedLesson
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
@pragma('vm:prefer-inline') @override $Res call({Object? group = freezed,Object? id = freezed,Object? userId = freezed,Object? status = freezed,Object? groupRole = freezed,Object? format = freezed,Object? leadId = freezed,Object? autoActivateLesson = freezed,Object? middleRating = freezed,Object? coworkingAccessLastDate = freezed,Object? videoAccessLastDate = freezed,Object? accessToVideo = freezed,Object? hasPackage = freezed,Object? paymentType = freezed,Object? partiallyCompletedDate = freezed,Object? partiallyCompletedLesson = freezed,}) {
  return _then(_self.copyWith(
group: freezed == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as Group?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,groupRole: freezed == groupRole ? _self.groupRole : groupRole // ignore: cast_nullable_to_non_nullable
as String?,format: freezed == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String?,leadId: freezed == leadId ? _self.leadId : leadId // ignore: cast_nullable_to_non_nullable
as int?,autoActivateLesson: freezed == autoActivateLesson ? _self.autoActivateLesson : autoActivateLesson // ignore: cast_nullable_to_non_nullable
as int?,middleRating: freezed == middleRating ? _self.middleRating : middleRating // ignore: cast_nullable_to_non_nullable
as String?,coworkingAccessLastDate: freezed == coworkingAccessLastDate ? _self.coworkingAccessLastDate : coworkingAccessLastDate // ignore: cast_nullable_to_non_nullable
as String?,videoAccessLastDate: freezed == videoAccessLastDate ? _self.videoAccessLastDate : videoAccessLastDate // ignore: cast_nullable_to_non_nullable
as String?,accessToVideo: freezed == accessToVideo ? _self.accessToVideo : accessToVideo // ignore: cast_nullable_to_non_nullable
as bool?,hasPackage: freezed == hasPackage ? _self.hasPackage : hasPackage // ignore: cast_nullable_to_non_nullable
as bool?,paymentType: freezed == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as String?,partiallyCompletedDate: freezed == partiallyCompletedDate ? _self.partiallyCompletedDate : partiallyCompletedDate // ignore: cast_nullable_to_non_nullable
as String?,partiallyCompletedLesson: freezed == partiallyCompletedLesson ? _self.partiallyCompletedLesson : partiallyCompletedLesson // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'group')  Group? group, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'group_role')  String? groupRole, @JsonKey(name: 'format')  String? format, @JsonKey(name: 'lead_id')  int? leadId, @JsonKey(name: 'auto_activate_lesson')  int? autoActivateLesson, @JsonKey(name: 'middle_rating')  String? middleRating, @JsonKey(name: 'coworking_access_last_date')  String? coworkingAccessLastDate, @JsonKey(name: 'video_access_last_date')  String? videoAccessLastDate, @JsonKey(name: 'access_to_video')  bool? accessToVideo, @JsonKey(name: 'has_package')  bool? hasPackage, @JsonKey(name: 'payment_type')  String? paymentType, @JsonKey(name: 'partially_completed_date')  String? partiallyCompletedDate, @JsonKey(name: 'partially_completed_lesson')  int? partiallyCompletedLesson)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Student() when $default != null:
return $default(_that.group,_that.id,_that.userId,_that.status,_that.groupRole,_that.format,_that.leadId,_that.autoActivateLesson,_that.middleRating,_that.coworkingAccessLastDate,_that.videoAccessLastDate,_that.accessToVideo,_that.hasPackage,_that.paymentType,_that.partiallyCompletedDate,_that.partiallyCompletedLesson);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'group')  Group? group, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'group_role')  String? groupRole, @JsonKey(name: 'format')  String? format, @JsonKey(name: 'lead_id')  int? leadId, @JsonKey(name: 'auto_activate_lesson')  int? autoActivateLesson, @JsonKey(name: 'middle_rating')  String? middleRating, @JsonKey(name: 'coworking_access_last_date')  String? coworkingAccessLastDate, @JsonKey(name: 'video_access_last_date')  String? videoAccessLastDate, @JsonKey(name: 'access_to_video')  bool? accessToVideo, @JsonKey(name: 'has_package')  bool? hasPackage, @JsonKey(name: 'payment_type')  String? paymentType, @JsonKey(name: 'partially_completed_date')  String? partiallyCompletedDate, @JsonKey(name: 'partially_completed_lesson')  int? partiallyCompletedLesson)  $default,) {final _that = this;
switch (_that) {
case _Student():
return $default(_that.group,_that.id,_that.userId,_that.status,_that.groupRole,_that.format,_that.leadId,_that.autoActivateLesson,_that.middleRating,_that.coworkingAccessLastDate,_that.videoAccessLastDate,_that.accessToVideo,_that.hasPackage,_that.paymentType,_that.partiallyCompletedDate,_that.partiallyCompletedLesson);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'group')  Group? group, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'group_role')  String? groupRole, @JsonKey(name: 'format')  String? format, @JsonKey(name: 'lead_id')  int? leadId, @JsonKey(name: 'auto_activate_lesson')  int? autoActivateLesson, @JsonKey(name: 'middle_rating')  String? middleRating, @JsonKey(name: 'coworking_access_last_date')  String? coworkingAccessLastDate, @JsonKey(name: 'video_access_last_date')  String? videoAccessLastDate, @JsonKey(name: 'access_to_video')  bool? accessToVideo, @JsonKey(name: 'has_package')  bool? hasPackage, @JsonKey(name: 'payment_type')  String? paymentType, @JsonKey(name: 'partially_completed_date')  String? partiallyCompletedDate, @JsonKey(name: 'partially_completed_lesson')  int? partiallyCompletedLesson)?  $default,) {final _that = this;
switch (_that) {
case _Student() when $default != null:
return $default(_that.group,_that.id,_that.userId,_that.status,_that.groupRole,_that.format,_that.leadId,_that.autoActivateLesson,_that.middleRating,_that.coworkingAccessLastDate,_that.videoAccessLastDate,_that.accessToVideo,_that.hasPackage,_that.paymentType,_that.partiallyCompletedDate,_that.partiallyCompletedLesson);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Student with DiagnosticableTreeMixin implements Student {
  const _Student({@JsonKey(name: 'group') this.group, @JsonKey(name: 'id') this.id, @JsonKey(name: 'user_id') this.userId, @JsonKey(name: 'status') this.status, @JsonKey(name: 'group_role') this.groupRole, @JsonKey(name: 'format') this.format, @JsonKey(name: 'lead_id') this.leadId, @JsonKey(name: 'auto_activate_lesson') this.autoActivateLesson, @JsonKey(name: 'middle_rating') this.middleRating, @JsonKey(name: 'coworking_access_last_date') this.coworkingAccessLastDate, @JsonKey(name: 'video_access_last_date') this.videoAccessLastDate, @JsonKey(name: 'access_to_video') this.accessToVideo, @JsonKey(name: 'has_package') this.hasPackage, @JsonKey(name: 'payment_type') this.paymentType, @JsonKey(name: 'partially_completed_date') this.partiallyCompletedDate, @JsonKey(name: 'partially_completed_lesson') this.partiallyCompletedLesson});
  factory _Student.fromJson(Map<String, dynamic> json) => _$StudentFromJson(json);

@override@JsonKey(name: 'group') final  Group? group;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'user_id') final  int? userId;
@override@JsonKey(name: 'status') final  String? status;
@override@JsonKey(name: 'group_role') final  String? groupRole;
@override@JsonKey(name: 'format') final  String? format;
@override@JsonKey(name: 'lead_id') final  int? leadId;
@override@JsonKey(name: 'auto_activate_lesson') final  int? autoActivateLesson;
@override@JsonKey(name: 'middle_rating') final  String? middleRating;
@override@JsonKey(name: 'coworking_access_last_date') final  String? coworkingAccessLastDate;
@override@JsonKey(name: 'video_access_last_date') final  String? videoAccessLastDate;
@override@JsonKey(name: 'access_to_video') final  bool? accessToVideo;
@override@JsonKey(name: 'has_package') final  bool? hasPackage;
@override@JsonKey(name: 'payment_type') final  String? paymentType;
@override@JsonKey(name: 'partially_completed_date') final  String? partiallyCompletedDate;
@override@JsonKey(name: 'partially_completed_lesson') final  int? partiallyCompletedLesson;

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
    ..add(DiagnosticsProperty('group', group))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('groupRole', groupRole))..add(DiagnosticsProperty('format', format))..add(DiagnosticsProperty('leadId', leadId))..add(DiagnosticsProperty('autoActivateLesson', autoActivateLesson))..add(DiagnosticsProperty('middleRating', middleRating))..add(DiagnosticsProperty('coworkingAccessLastDate', coworkingAccessLastDate))..add(DiagnosticsProperty('videoAccessLastDate', videoAccessLastDate))..add(DiagnosticsProperty('accessToVideo', accessToVideo))..add(DiagnosticsProperty('hasPackage', hasPackage))..add(DiagnosticsProperty('paymentType', paymentType))..add(DiagnosticsProperty('partiallyCompletedDate', partiallyCompletedDate))..add(DiagnosticsProperty('partiallyCompletedLesson', partiallyCompletedLesson));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Student&&(identical(other.group, group) || other.group == group)&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.status, status) || other.status == status)&&(identical(other.groupRole, groupRole) || other.groupRole == groupRole)&&(identical(other.format, format) || other.format == format)&&(identical(other.leadId, leadId) || other.leadId == leadId)&&(identical(other.autoActivateLesson, autoActivateLesson) || other.autoActivateLesson == autoActivateLesson)&&(identical(other.middleRating, middleRating) || other.middleRating == middleRating)&&(identical(other.coworkingAccessLastDate, coworkingAccessLastDate) || other.coworkingAccessLastDate == coworkingAccessLastDate)&&(identical(other.videoAccessLastDate, videoAccessLastDate) || other.videoAccessLastDate == videoAccessLastDate)&&(identical(other.accessToVideo, accessToVideo) || other.accessToVideo == accessToVideo)&&(identical(other.hasPackage, hasPackage) || other.hasPackage == hasPackage)&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType)&&(identical(other.partiallyCompletedDate, partiallyCompletedDate) || other.partiallyCompletedDate == partiallyCompletedDate)&&(identical(other.partiallyCompletedLesson, partiallyCompletedLesson) || other.partiallyCompletedLesson == partiallyCompletedLesson));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,group,id,userId,status,groupRole,format,leadId,autoActivateLesson,middleRating,coworkingAccessLastDate,videoAccessLastDate,accessToVideo,hasPackage,paymentType,partiallyCompletedDate,partiallyCompletedLesson);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Student(group: $group, id: $id, userId: $userId, status: $status, groupRole: $groupRole, format: $format, leadId: $leadId, autoActivateLesson: $autoActivateLesson, middleRating: $middleRating, coworkingAccessLastDate: $coworkingAccessLastDate, videoAccessLastDate: $videoAccessLastDate, accessToVideo: $accessToVideo, hasPackage: $hasPackage, paymentType: $paymentType, partiallyCompletedDate: $partiallyCompletedDate, partiallyCompletedLesson: $partiallyCompletedLesson)';
}


}

/// @nodoc
abstract mixin class _$StudentCopyWith<$Res> implements $StudentCopyWith<$Res> {
  factory _$StudentCopyWith(_Student value, $Res Function(_Student) _then) = __$StudentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'group') Group? group,@JsonKey(name: 'id') int? id,@JsonKey(name: 'user_id') int? userId,@JsonKey(name: 'status') String? status,@JsonKey(name: 'group_role') String? groupRole,@JsonKey(name: 'format') String? format,@JsonKey(name: 'lead_id') int? leadId,@JsonKey(name: 'auto_activate_lesson') int? autoActivateLesson,@JsonKey(name: 'middle_rating') String? middleRating,@JsonKey(name: 'coworking_access_last_date') String? coworkingAccessLastDate,@JsonKey(name: 'video_access_last_date') String? videoAccessLastDate,@JsonKey(name: 'access_to_video') bool? accessToVideo,@JsonKey(name: 'has_package') bool? hasPackage,@JsonKey(name: 'payment_type') String? paymentType,@JsonKey(name: 'partially_completed_date') String? partiallyCompletedDate,@JsonKey(name: 'partially_completed_lesson') int? partiallyCompletedLesson
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
@override @pragma('vm:prefer-inline') $Res call({Object? group = freezed,Object? id = freezed,Object? userId = freezed,Object? status = freezed,Object? groupRole = freezed,Object? format = freezed,Object? leadId = freezed,Object? autoActivateLesson = freezed,Object? middleRating = freezed,Object? coworkingAccessLastDate = freezed,Object? videoAccessLastDate = freezed,Object? accessToVideo = freezed,Object? hasPackage = freezed,Object? paymentType = freezed,Object? partiallyCompletedDate = freezed,Object? partiallyCompletedLesson = freezed,}) {
  return _then(_Student(
group: freezed == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as Group?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,groupRole: freezed == groupRole ? _self.groupRole : groupRole // ignore: cast_nullable_to_non_nullable
as String?,format: freezed == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String?,leadId: freezed == leadId ? _self.leadId : leadId // ignore: cast_nullable_to_non_nullable
as int?,autoActivateLesson: freezed == autoActivateLesson ? _self.autoActivateLesson : autoActivateLesson // ignore: cast_nullable_to_non_nullable
as int?,middleRating: freezed == middleRating ? _self.middleRating : middleRating // ignore: cast_nullable_to_non_nullable
as String?,coworkingAccessLastDate: freezed == coworkingAccessLastDate ? _self.coworkingAccessLastDate : coworkingAccessLastDate // ignore: cast_nullable_to_non_nullable
as String?,videoAccessLastDate: freezed == videoAccessLastDate ? _self.videoAccessLastDate : videoAccessLastDate // ignore: cast_nullable_to_non_nullable
as String?,accessToVideo: freezed == accessToVideo ? _self.accessToVideo : accessToVideo // ignore: cast_nullable_to_non_nullable
as bool?,hasPackage: freezed == hasPackage ? _self.hasPackage : hasPackage // ignore: cast_nullable_to_non_nullable
as bool?,paymentType: freezed == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as String?,partiallyCompletedDate: freezed == partiallyCompletedDate ? _self.partiallyCompletedDate : partiallyCompletedDate // ignore: cast_nullable_to_non_nullable
as String?,partiallyCompletedLesson: freezed == partiallyCompletedLesson ? _self.partiallyCompletedLesson : partiallyCompletedLesson // ignore: cast_nullable_to_non_nullable
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

@JsonKey(name: 'main_teacher_user_id') int? get mainTeacherUserId;@JsonKey(name: 'course') Course? get course;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'format') String? get format;@JsonKey(name: 'type') String? get type;@JsonKey(name: 'start_date') String? get startDate;@JsonKey(name: 'graduated_date') String? get graduatedDate;@JsonKey(name: 'disbanded_date') String? get disbandedDate;@JsonKey(name: 'has_double_lesson') bool? get hasDoubleLesson;@JsonKey(name: 'status') String? get status;@JsonKey(name: 'study_time') String? get studyTime;@JsonKey(name: 'days') List<int>? get days;@JsonKey(name: 'start_lesson_number') int? get startLessonNumber;@JsonKey(name: 'video_deleted') bool? get videoDeleted;@JsonKey(name: 'course_id') int? get courseId;@JsonKey(name: 'launch_id') int? get launchId;@JsonKey(name: 'cabinet_id') int? get cabinetId;
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
    ..add(DiagnosticsProperty('mainTeacherUserId', mainTeacherUserId))..add(DiagnosticsProperty('course', course))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('format', format))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('startDate', startDate))..add(DiagnosticsProperty('graduatedDate', graduatedDate))..add(DiagnosticsProperty('disbandedDate', disbandedDate))..add(DiagnosticsProperty('hasDoubleLesson', hasDoubleLesson))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('studyTime', studyTime))..add(DiagnosticsProperty('days', days))..add(DiagnosticsProperty('startLessonNumber', startLessonNumber))..add(DiagnosticsProperty('videoDeleted', videoDeleted))..add(DiagnosticsProperty('courseId', courseId))..add(DiagnosticsProperty('launchId', launchId))..add(DiagnosticsProperty('cabinetId', cabinetId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Group&&(identical(other.mainTeacherUserId, mainTeacherUserId) || other.mainTeacherUserId == mainTeacherUserId)&&(identical(other.course, course) || other.course == course)&&(identical(other.id, id) || other.id == id)&&(identical(other.format, format) || other.format == format)&&(identical(other.type, type) || other.type == type)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.graduatedDate, graduatedDate) || other.graduatedDate == graduatedDate)&&(identical(other.disbandedDate, disbandedDate) || other.disbandedDate == disbandedDate)&&(identical(other.hasDoubleLesson, hasDoubleLesson) || other.hasDoubleLesson == hasDoubleLesson)&&(identical(other.status, status) || other.status == status)&&(identical(other.studyTime, studyTime) || other.studyTime == studyTime)&&const DeepCollectionEquality().equals(other.days, days)&&(identical(other.startLessonNumber, startLessonNumber) || other.startLessonNumber == startLessonNumber)&&(identical(other.videoDeleted, videoDeleted) || other.videoDeleted == videoDeleted)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.launchId, launchId) || other.launchId == launchId)&&(identical(other.cabinetId, cabinetId) || other.cabinetId == cabinetId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mainTeacherUserId,course,id,format,type,startDate,graduatedDate,disbandedDate,hasDoubleLesson,status,studyTime,const DeepCollectionEquality().hash(days),startLessonNumber,videoDeleted,courseId,launchId,cabinetId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Group(mainTeacherUserId: $mainTeacherUserId, course: $course, id: $id, format: $format, type: $type, startDate: $startDate, graduatedDate: $graduatedDate, disbandedDate: $disbandedDate, hasDoubleLesson: $hasDoubleLesson, status: $status, studyTime: $studyTime, days: $days, startLessonNumber: $startLessonNumber, videoDeleted: $videoDeleted, courseId: $courseId, launchId: $launchId, cabinetId: $cabinetId)';
}


}

/// @nodoc
abstract mixin class $GroupCopyWith<$Res>  {
  factory $GroupCopyWith(Group value, $Res Function(Group) _then) = _$GroupCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'main_teacher_user_id') int? mainTeacherUserId,@JsonKey(name: 'course') Course? course,@JsonKey(name: 'id') int? id,@JsonKey(name: 'format') String? format,@JsonKey(name: 'type') String? type,@JsonKey(name: 'start_date') String? startDate,@JsonKey(name: 'graduated_date') String? graduatedDate,@JsonKey(name: 'disbanded_date') String? disbandedDate,@JsonKey(name: 'has_double_lesson') bool? hasDoubleLesson,@JsonKey(name: 'status') String? status,@JsonKey(name: 'study_time') String? studyTime,@JsonKey(name: 'days') List<int>? days,@JsonKey(name: 'start_lesson_number') int? startLessonNumber,@JsonKey(name: 'video_deleted') bool? videoDeleted,@JsonKey(name: 'course_id') int? courseId,@JsonKey(name: 'launch_id') int? launchId,@JsonKey(name: 'cabinet_id') int? cabinetId
});


$CourseCopyWith<$Res>? get course;

}
/// @nodoc
class _$GroupCopyWithImpl<$Res>
    implements $GroupCopyWith<$Res> {
  _$GroupCopyWithImpl(this._self, this._then);

  final Group _self;
  final $Res Function(Group) _then;

/// Create a copy of Group
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mainTeacherUserId = freezed,Object? course = freezed,Object? id = freezed,Object? format = freezed,Object? type = freezed,Object? startDate = freezed,Object? graduatedDate = freezed,Object? disbandedDate = freezed,Object? hasDoubleLesson = freezed,Object? status = freezed,Object? studyTime = freezed,Object? days = freezed,Object? startLessonNumber = freezed,Object? videoDeleted = freezed,Object? courseId = freezed,Object? launchId = freezed,Object? cabinetId = freezed,}) {
  return _then(_self.copyWith(
mainTeacherUserId: freezed == mainTeacherUserId ? _self.mainTeacherUserId : mainTeacherUserId // ignore: cast_nullable_to_non_nullable
as int?,course: freezed == course ? _self.course : course // ignore: cast_nullable_to_non_nullable
as Course?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,format: freezed == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,graduatedDate: freezed == graduatedDate ? _self.graduatedDate : graduatedDate // ignore: cast_nullable_to_non_nullable
as String?,disbandedDate: freezed == disbandedDate ? _self.disbandedDate : disbandedDate // ignore: cast_nullable_to_non_nullable
as String?,hasDoubleLesson: freezed == hasDoubleLesson ? _self.hasDoubleLesson : hasDoubleLesson // ignore: cast_nullable_to_non_nullable
as bool?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,studyTime: freezed == studyTime ? _self.studyTime : studyTime // ignore: cast_nullable_to_non_nullable
as String?,days: freezed == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as List<int>?,startLessonNumber: freezed == startLessonNumber ? _self.startLessonNumber : startLessonNumber // ignore: cast_nullable_to_non_nullable
as int?,videoDeleted: freezed == videoDeleted ? _self.videoDeleted : videoDeleted // ignore: cast_nullable_to_non_nullable
as bool?,courseId: freezed == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as int?,launchId: freezed == launchId ? _self.launchId : launchId // ignore: cast_nullable_to_non_nullable
as int?,cabinetId: freezed == cabinetId ? _self.cabinetId : cabinetId // ignore: cast_nullable_to_non_nullable
as int?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'main_teacher_user_id')  int? mainTeacherUserId, @JsonKey(name: 'course')  Course? course, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'format')  String? format, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'start_date')  String? startDate, @JsonKey(name: 'graduated_date')  String? graduatedDate, @JsonKey(name: 'disbanded_date')  String? disbandedDate, @JsonKey(name: 'has_double_lesson')  bool? hasDoubleLesson, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'study_time')  String? studyTime, @JsonKey(name: 'days')  List<int>? days, @JsonKey(name: 'start_lesson_number')  int? startLessonNumber, @JsonKey(name: 'video_deleted')  bool? videoDeleted, @JsonKey(name: 'course_id')  int? courseId, @JsonKey(name: 'launch_id')  int? launchId, @JsonKey(name: 'cabinet_id')  int? cabinetId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Group() when $default != null:
return $default(_that.mainTeacherUserId,_that.course,_that.id,_that.format,_that.type,_that.startDate,_that.graduatedDate,_that.disbandedDate,_that.hasDoubleLesson,_that.status,_that.studyTime,_that.days,_that.startLessonNumber,_that.videoDeleted,_that.courseId,_that.launchId,_that.cabinetId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'main_teacher_user_id')  int? mainTeacherUserId, @JsonKey(name: 'course')  Course? course, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'format')  String? format, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'start_date')  String? startDate, @JsonKey(name: 'graduated_date')  String? graduatedDate, @JsonKey(name: 'disbanded_date')  String? disbandedDate, @JsonKey(name: 'has_double_lesson')  bool? hasDoubleLesson, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'study_time')  String? studyTime, @JsonKey(name: 'days')  List<int>? days, @JsonKey(name: 'start_lesson_number')  int? startLessonNumber, @JsonKey(name: 'video_deleted')  bool? videoDeleted, @JsonKey(name: 'course_id')  int? courseId, @JsonKey(name: 'launch_id')  int? launchId, @JsonKey(name: 'cabinet_id')  int? cabinetId)  $default,) {final _that = this;
switch (_that) {
case _Group():
return $default(_that.mainTeacherUserId,_that.course,_that.id,_that.format,_that.type,_that.startDate,_that.graduatedDate,_that.disbandedDate,_that.hasDoubleLesson,_that.status,_that.studyTime,_that.days,_that.startLessonNumber,_that.videoDeleted,_that.courseId,_that.launchId,_that.cabinetId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'main_teacher_user_id')  int? mainTeacherUserId, @JsonKey(name: 'course')  Course? course, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'format')  String? format, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'start_date')  String? startDate, @JsonKey(name: 'graduated_date')  String? graduatedDate, @JsonKey(name: 'disbanded_date')  String? disbandedDate, @JsonKey(name: 'has_double_lesson')  bool? hasDoubleLesson, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'study_time')  String? studyTime, @JsonKey(name: 'days')  List<int>? days, @JsonKey(name: 'start_lesson_number')  int? startLessonNumber, @JsonKey(name: 'video_deleted')  bool? videoDeleted, @JsonKey(name: 'course_id')  int? courseId, @JsonKey(name: 'launch_id')  int? launchId, @JsonKey(name: 'cabinet_id')  int? cabinetId)?  $default,) {final _that = this;
switch (_that) {
case _Group() when $default != null:
return $default(_that.mainTeacherUserId,_that.course,_that.id,_that.format,_that.type,_that.startDate,_that.graduatedDate,_that.disbandedDate,_that.hasDoubleLesson,_that.status,_that.studyTime,_that.days,_that.startLessonNumber,_that.videoDeleted,_that.courseId,_that.launchId,_that.cabinetId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Group with DiagnosticableTreeMixin implements Group {
  const _Group({@JsonKey(name: 'main_teacher_user_id') this.mainTeacherUserId, @JsonKey(name: 'course') this.course, @JsonKey(name: 'id') this.id, @JsonKey(name: 'format') this.format, @JsonKey(name: 'type') this.type, @JsonKey(name: 'start_date') this.startDate, @JsonKey(name: 'graduated_date') this.graduatedDate, @JsonKey(name: 'disbanded_date') this.disbandedDate, @JsonKey(name: 'has_double_lesson') this.hasDoubleLesson, @JsonKey(name: 'status') this.status, @JsonKey(name: 'study_time') this.studyTime, @JsonKey(name: 'days') final  List<int>? days, @JsonKey(name: 'start_lesson_number') this.startLessonNumber, @JsonKey(name: 'video_deleted') this.videoDeleted, @JsonKey(name: 'course_id') this.courseId, @JsonKey(name: 'launch_id') this.launchId, @JsonKey(name: 'cabinet_id') this.cabinetId}): _days = days;
  factory _Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);

@override@JsonKey(name: 'main_teacher_user_id') final  int? mainTeacherUserId;
@override@JsonKey(name: 'course') final  Course? course;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'format') final  String? format;
@override@JsonKey(name: 'type') final  String? type;
@override@JsonKey(name: 'start_date') final  String? startDate;
@override@JsonKey(name: 'graduated_date') final  String? graduatedDate;
@override@JsonKey(name: 'disbanded_date') final  String? disbandedDate;
@override@JsonKey(name: 'has_double_lesson') final  bool? hasDoubleLesson;
@override@JsonKey(name: 'status') final  String? status;
@override@JsonKey(name: 'study_time') final  String? studyTime;
 final  List<int>? _days;
@override@JsonKey(name: 'days') List<int>? get days {
  final value = _days;
  if (value == null) return null;
  if (_days is EqualUnmodifiableListView) return _days;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'start_lesson_number') final  int? startLessonNumber;
@override@JsonKey(name: 'video_deleted') final  bool? videoDeleted;
@override@JsonKey(name: 'course_id') final  int? courseId;
@override@JsonKey(name: 'launch_id') final  int? launchId;
@override@JsonKey(name: 'cabinet_id') final  int? cabinetId;

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
    ..add(DiagnosticsProperty('mainTeacherUserId', mainTeacherUserId))..add(DiagnosticsProperty('course', course))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('format', format))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('startDate', startDate))..add(DiagnosticsProperty('graduatedDate', graduatedDate))..add(DiagnosticsProperty('disbandedDate', disbandedDate))..add(DiagnosticsProperty('hasDoubleLesson', hasDoubleLesson))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('studyTime', studyTime))..add(DiagnosticsProperty('days', days))..add(DiagnosticsProperty('startLessonNumber', startLessonNumber))..add(DiagnosticsProperty('videoDeleted', videoDeleted))..add(DiagnosticsProperty('courseId', courseId))..add(DiagnosticsProperty('launchId', launchId))..add(DiagnosticsProperty('cabinetId', cabinetId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Group&&(identical(other.mainTeacherUserId, mainTeacherUserId) || other.mainTeacherUserId == mainTeacherUserId)&&(identical(other.course, course) || other.course == course)&&(identical(other.id, id) || other.id == id)&&(identical(other.format, format) || other.format == format)&&(identical(other.type, type) || other.type == type)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.graduatedDate, graduatedDate) || other.graduatedDate == graduatedDate)&&(identical(other.disbandedDate, disbandedDate) || other.disbandedDate == disbandedDate)&&(identical(other.hasDoubleLesson, hasDoubleLesson) || other.hasDoubleLesson == hasDoubleLesson)&&(identical(other.status, status) || other.status == status)&&(identical(other.studyTime, studyTime) || other.studyTime == studyTime)&&const DeepCollectionEquality().equals(other._days, _days)&&(identical(other.startLessonNumber, startLessonNumber) || other.startLessonNumber == startLessonNumber)&&(identical(other.videoDeleted, videoDeleted) || other.videoDeleted == videoDeleted)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.launchId, launchId) || other.launchId == launchId)&&(identical(other.cabinetId, cabinetId) || other.cabinetId == cabinetId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mainTeacherUserId,course,id,format,type,startDate,graduatedDate,disbandedDate,hasDoubleLesson,status,studyTime,const DeepCollectionEquality().hash(_days),startLessonNumber,videoDeleted,courseId,launchId,cabinetId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Group(mainTeacherUserId: $mainTeacherUserId, course: $course, id: $id, format: $format, type: $type, startDate: $startDate, graduatedDate: $graduatedDate, disbandedDate: $disbandedDate, hasDoubleLesson: $hasDoubleLesson, status: $status, studyTime: $studyTime, days: $days, startLessonNumber: $startLessonNumber, videoDeleted: $videoDeleted, courseId: $courseId, launchId: $launchId, cabinetId: $cabinetId)';
}


}

/// @nodoc
abstract mixin class _$GroupCopyWith<$Res> implements $GroupCopyWith<$Res> {
  factory _$GroupCopyWith(_Group value, $Res Function(_Group) _then) = __$GroupCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'main_teacher_user_id') int? mainTeacherUserId,@JsonKey(name: 'course') Course? course,@JsonKey(name: 'id') int? id,@JsonKey(name: 'format') String? format,@JsonKey(name: 'type') String? type,@JsonKey(name: 'start_date') String? startDate,@JsonKey(name: 'graduated_date') String? graduatedDate,@JsonKey(name: 'disbanded_date') String? disbandedDate,@JsonKey(name: 'has_double_lesson') bool? hasDoubleLesson,@JsonKey(name: 'status') String? status,@JsonKey(name: 'study_time') String? studyTime,@JsonKey(name: 'days') List<int>? days,@JsonKey(name: 'start_lesson_number') int? startLessonNumber,@JsonKey(name: 'video_deleted') bool? videoDeleted,@JsonKey(name: 'course_id') int? courseId,@JsonKey(name: 'launch_id') int? launchId,@JsonKey(name: 'cabinet_id') int? cabinetId
});


@override $CourseCopyWith<$Res>? get course;

}
/// @nodoc
class __$GroupCopyWithImpl<$Res>
    implements _$GroupCopyWith<$Res> {
  __$GroupCopyWithImpl(this._self, this._then);

  final _Group _self;
  final $Res Function(_Group) _then;

/// Create a copy of Group
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mainTeacherUserId = freezed,Object? course = freezed,Object? id = freezed,Object? format = freezed,Object? type = freezed,Object? startDate = freezed,Object? graduatedDate = freezed,Object? disbandedDate = freezed,Object? hasDoubleLesson = freezed,Object? status = freezed,Object? studyTime = freezed,Object? days = freezed,Object? startLessonNumber = freezed,Object? videoDeleted = freezed,Object? courseId = freezed,Object? launchId = freezed,Object? cabinetId = freezed,}) {
  return _then(_Group(
mainTeacherUserId: freezed == mainTeacherUserId ? _self.mainTeacherUserId : mainTeacherUserId // ignore: cast_nullable_to_non_nullable
as int?,course: freezed == course ? _self.course : course // ignore: cast_nullable_to_non_nullable
as Course?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,format: freezed == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,graduatedDate: freezed == graduatedDate ? _self.graduatedDate : graduatedDate // ignore: cast_nullable_to_non_nullable
as String?,disbandedDate: freezed == disbandedDate ? _self.disbandedDate : disbandedDate // ignore: cast_nullable_to_non_nullable
as String?,hasDoubleLesson: freezed == hasDoubleLesson ? _self.hasDoubleLesson : hasDoubleLesson // ignore: cast_nullable_to_non_nullable
as bool?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,studyTime: freezed == studyTime ? _self.studyTime : studyTime // ignore: cast_nullable_to_non_nullable
as String?,days: freezed == days ? _self._days : days // ignore: cast_nullable_to_non_nullable
as List<int>?,startLessonNumber: freezed == startLessonNumber ? _self.startLessonNumber : startLessonNumber // ignore: cast_nullable_to_non_nullable
as int?,videoDeleted: freezed == videoDeleted ? _self.videoDeleted : videoDeleted // ignore: cast_nullable_to_non_nullable
as bool?,courseId: freezed == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as int?,launchId: freezed == launchId ? _self.launchId : launchId // ignore: cast_nullable_to_non_nullable
as int?,cabinetId: freezed == cabinetId ? _self.cabinetId : cabinetId // ignore: cast_nullable_to_non_nullable
as int?,
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
mixin _$StudentPcServices implements DiagnosticableTreeMixin {

@JsonKey(name: 'maintenance_service_name') String? get maintenanceServiceName;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'maintenance_service_id') int? get maintenanceServiceId;
/// Create a copy of StudentPcServices
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentPcServicesCopyWith<StudentPcServices> get copyWith => _$StudentPcServicesCopyWithImpl<StudentPcServices>(this as StudentPcServices, _$identity);

  /// Serializes this StudentPcServices to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'StudentPcServices'))
    ..add(DiagnosticsProperty('maintenanceServiceName', maintenanceServiceName))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('maintenanceServiceId', maintenanceServiceId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentPcServices&&(identical(other.maintenanceServiceName, maintenanceServiceName) || other.maintenanceServiceName == maintenanceServiceName)&&(identical(other.id, id) || other.id == id)&&(identical(other.maintenanceServiceId, maintenanceServiceId) || other.maintenanceServiceId == maintenanceServiceId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,maintenanceServiceName,id,maintenanceServiceId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'StudentPcServices(maintenanceServiceName: $maintenanceServiceName, id: $id, maintenanceServiceId: $maintenanceServiceId)';
}


}

/// @nodoc
abstract mixin class $StudentPcServicesCopyWith<$Res>  {
  factory $StudentPcServicesCopyWith(StudentPcServices value, $Res Function(StudentPcServices) _then) = _$StudentPcServicesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'maintenance_service_name') String? maintenanceServiceName,@JsonKey(name: 'id') int? id,@JsonKey(name: 'maintenance_service_id') int? maintenanceServiceId
});




}
/// @nodoc
class _$StudentPcServicesCopyWithImpl<$Res>
    implements $StudentPcServicesCopyWith<$Res> {
  _$StudentPcServicesCopyWithImpl(this._self, this._then);

  final StudentPcServices _self;
  final $Res Function(StudentPcServices) _then;

/// Create a copy of StudentPcServices
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? maintenanceServiceName = freezed,Object? id = freezed,Object? maintenanceServiceId = freezed,}) {
  return _then(_self.copyWith(
maintenanceServiceName: freezed == maintenanceServiceName ? _self.maintenanceServiceName : maintenanceServiceName // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,maintenanceServiceId: freezed == maintenanceServiceId ? _self.maintenanceServiceId : maintenanceServiceId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [StudentPcServices].
extension StudentPcServicesPatterns on StudentPcServices {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentPcServices value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentPcServices() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentPcServices value)  $default,){
final _that = this;
switch (_that) {
case _StudentPcServices():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentPcServices value)?  $default,){
final _that = this;
switch (_that) {
case _StudentPcServices() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'maintenance_service_name')  String? maintenanceServiceName, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'maintenance_service_id')  int? maintenanceServiceId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentPcServices() when $default != null:
return $default(_that.maintenanceServiceName,_that.id,_that.maintenanceServiceId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'maintenance_service_name')  String? maintenanceServiceName, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'maintenance_service_id')  int? maintenanceServiceId)  $default,) {final _that = this;
switch (_that) {
case _StudentPcServices():
return $default(_that.maintenanceServiceName,_that.id,_that.maintenanceServiceId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'maintenance_service_name')  String? maintenanceServiceName, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'maintenance_service_id')  int? maintenanceServiceId)?  $default,) {final _that = this;
switch (_that) {
case _StudentPcServices() when $default != null:
return $default(_that.maintenanceServiceName,_that.id,_that.maintenanceServiceId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StudentPcServices with DiagnosticableTreeMixin implements StudentPcServices {
  const _StudentPcServices({@JsonKey(name: 'maintenance_service_name') this.maintenanceServiceName, @JsonKey(name: 'id') this.id, @JsonKey(name: 'maintenance_service_id') this.maintenanceServiceId});
  factory _StudentPcServices.fromJson(Map<String, dynamic> json) => _$StudentPcServicesFromJson(json);

@override@JsonKey(name: 'maintenance_service_name') final  String? maintenanceServiceName;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'maintenance_service_id') final  int? maintenanceServiceId;

/// Create a copy of StudentPcServices
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentPcServicesCopyWith<_StudentPcServices> get copyWith => __$StudentPcServicesCopyWithImpl<_StudentPcServices>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentPcServicesToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'StudentPcServices'))
    ..add(DiagnosticsProperty('maintenanceServiceName', maintenanceServiceName))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('maintenanceServiceId', maintenanceServiceId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentPcServices&&(identical(other.maintenanceServiceName, maintenanceServiceName) || other.maintenanceServiceName == maintenanceServiceName)&&(identical(other.id, id) || other.id == id)&&(identical(other.maintenanceServiceId, maintenanceServiceId) || other.maintenanceServiceId == maintenanceServiceId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,maintenanceServiceName,id,maintenanceServiceId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'StudentPcServices(maintenanceServiceName: $maintenanceServiceName, id: $id, maintenanceServiceId: $maintenanceServiceId)';
}


}

/// @nodoc
abstract mixin class _$StudentPcServicesCopyWith<$Res> implements $StudentPcServicesCopyWith<$Res> {
  factory _$StudentPcServicesCopyWith(_StudentPcServices value, $Res Function(_StudentPcServices) _then) = __$StudentPcServicesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'maintenance_service_name') String? maintenanceServiceName,@JsonKey(name: 'id') int? id,@JsonKey(name: 'maintenance_service_id') int? maintenanceServiceId
});




}
/// @nodoc
class __$StudentPcServicesCopyWithImpl<$Res>
    implements _$StudentPcServicesCopyWith<$Res> {
  __$StudentPcServicesCopyWithImpl(this._self, this._then);

  final _StudentPcServices _self;
  final $Res Function(_StudentPcServices) _then;

/// Create a copy of StudentPcServices
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? maintenanceServiceName = freezed,Object? id = freezed,Object? maintenanceServiceId = freezed,}) {
  return _then(_StudentPcServices(
maintenanceServiceName: freezed == maintenanceServiceName ? _self.maintenanceServiceName : maintenanceServiceName // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,maintenanceServiceId: freezed == maintenanceServiceId ? _self.maintenanceServiceId : maintenanceServiceId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
