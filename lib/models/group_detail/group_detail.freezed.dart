// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GroupDetail implements DiagnosticableTreeMixin {

@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'created_by') UserIdDefault? get createdBy;@JsonKey(name: 'updated_by') UserIdDefault? get updatedBy;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'format') String? get format;@JsonKey(name: 'type') String? get type;@JsonKey(name: 'start_date') String? get startDate;@JsonKey(name: 'graduated_date') String? get graduatedDate;@JsonKey(name: 'disbanded_date') String? get disbandedDate;@JsonKey(name: 'has_double_lesson') bool? get hasDoubleLesson;@JsonKey(name: 'status') MyGroupStatus? get status;@JsonKey(name: 'study_time') String? get studyTime;@JsonKey(name: 'days') List<int>? get days;@JsonKey(name: 'start_lesson_number') int? get startLessonNumber;@JsonKey(name: 'course') Course? get course;@JsonKey(name: 'version') Version? get version;@JsonKey(name: 'cabinet') Cabinet? get cabinet;@JsonKey(name: 'launch') Launch? get launch;@JsonKey(name: 'main_teacher') MainUser? get mainTeacher;@JsonKey(name: 'main_admin') MainUser? get mainAdmin;@JsonKey(name: 'lessons') List<Lessons>? get lessons;@JsonKey(name: 'schedules') List<Schedules>? get schedules;@JsonKey(name: 'discount') Discount? get discount;@JsonKey(name: 'online_discount') OnlineDiscount? get onlineDiscount;@JsonKey(name: 'course_version') CourseVersion? get courseVersion;
/// Create a copy of GroupDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupDetailCopyWith<GroupDetail> get copyWith => _$GroupDetailCopyWithImpl<GroupDetail>(this as GroupDetail, _$identity);

  /// Serializes this GroupDetail to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GroupDetail'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdBy', createdBy))..add(DiagnosticsProperty('updatedBy', updatedBy))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('format', format))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('startDate', startDate))..add(DiagnosticsProperty('graduatedDate', graduatedDate))..add(DiagnosticsProperty('disbandedDate', disbandedDate))..add(DiagnosticsProperty('hasDoubleLesson', hasDoubleLesson))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('studyTime', studyTime))..add(DiagnosticsProperty('days', days))..add(DiagnosticsProperty('startLessonNumber', startLessonNumber))..add(DiagnosticsProperty('course', course))..add(DiagnosticsProperty('version', version))..add(DiagnosticsProperty('cabinet', cabinet))..add(DiagnosticsProperty('launch', launch))..add(DiagnosticsProperty('mainTeacher', mainTeacher))..add(DiagnosticsProperty('mainAdmin', mainAdmin))..add(DiagnosticsProperty('lessons', lessons))..add(DiagnosticsProperty('schedules', schedules))..add(DiagnosticsProperty('discount', discount))..add(DiagnosticsProperty('onlineDiscount', onlineDiscount))..add(DiagnosticsProperty('courseVersion', courseVersion));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupDetail&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.id, id) || other.id == id)&&(identical(other.format, format) || other.format == format)&&(identical(other.type, type) || other.type == type)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.graduatedDate, graduatedDate) || other.graduatedDate == graduatedDate)&&(identical(other.disbandedDate, disbandedDate) || other.disbandedDate == disbandedDate)&&(identical(other.hasDoubleLesson, hasDoubleLesson) || other.hasDoubleLesson == hasDoubleLesson)&&(identical(other.status, status) || other.status == status)&&(identical(other.studyTime, studyTime) || other.studyTime == studyTime)&&const DeepCollectionEquality().equals(other.days, days)&&(identical(other.startLessonNumber, startLessonNumber) || other.startLessonNumber == startLessonNumber)&&(identical(other.course, course) || other.course == course)&&(identical(other.version, version) || other.version == version)&&(identical(other.cabinet, cabinet) || other.cabinet == cabinet)&&(identical(other.launch, launch) || other.launch == launch)&&(identical(other.mainTeacher, mainTeacher) || other.mainTeacher == mainTeacher)&&(identical(other.mainAdmin, mainAdmin) || other.mainAdmin == mainAdmin)&&const DeepCollectionEquality().equals(other.lessons, lessons)&&const DeepCollectionEquality().equals(other.schedules, schedules)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.onlineDiscount, onlineDiscount) || other.onlineDiscount == onlineDiscount)&&(identical(other.courseVersion, courseVersion) || other.courseVersion == courseVersion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,createdAt,updatedAt,createdBy,updatedBy,id,format,type,startDate,graduatedDate,disbandedDate,hasDoubleLesson,status,studyTime,const DeepCollectionEquality().hash(days),startLessonNumber,course,version,cabinet,launch,mainTeacher,mainAdmin,const DeepCollectionEquality().hash(lessons),const DeepCollectionEquality().hash(schedules),discount,onlineDiscount,courseVersion]);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GroupDetail(createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, updatedBy: $updatedBy, id: $id, format: $format, type: $type, startDate: $startDate, graduatedDate: $graduatedDate, disbandedDate: $disbandedDate, hasDoubleLesson: $hasDoubleLesson, status: $status, studyTime: $studyTime, days: $days, startLessonNumber: $startLessonNumber, course: $course, version: $version, cabinet: $cabinet, launch: $launch, mainTeacher: $mainTeacher, mainAdmin: $mainAdmin, lessons: $lessons, schedules: $schedules, discount: $discount, onlineDiscount: $onlineDiscount, courseVersion: $courseVersion)';
}


}

/// @nodoc
abstract mixin class $GroupDetailCopyWith<$Res>  {
  factory $GroupDetailCopyWith(GroupDetail value, $Res Function(GroupDetail) _then) = _$GroupDetailCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by') UserIdDefault? createdBy,@JsonKey(name: 'updated_by') UserIdDefault? updatedBy,@JsonKey(name: 'id') int? id,@JsonKey(name: 'format') String? format,@JsonKey(name: 'type') String? type,@JsonKey(name: 'start_date') String? startDate,@JsonKey(name: 'graduated_date') String? graduatedDate,@JsonKey(name: 'disbanded_date') String? disbandedDate,@JsonKey(name: 'has_double_lesson') bool? hasDoubleLesson,@JsonKey(name: 'status') MyGroupStatus? status,@JsonKey(name: 'study_time') String? studyTime,@JsonKey(name: 'days') List<int>? days,@JsonKey(name: 'start_lesson_number') int? startLessonNumber,@JsonKey(name: 'course') Course? course,@JsonKey(name: 'version') Version? version,@JsonKey(name: 'cabinet') Cabinet? cabinet,@JsonKey(name: 'launch') Launch? launch,@JsonKey(name: 'main_teacher') MainUser? mainTeacher,@JsonKey(name: 'main_admin') MainUser? mainAdmin,@JsonKey(name: 'lessons') List<Lessons>? lessons,@JsonKey(name: 'schedules') List<Schedules>? schedules,@JsonKey(name: 'discount') Discount? discount,@JsonKey(name: 'online_discount') OnlineDiscount? onlineDiscount,@JsonKey(name: 'course_version') CourseVersion? courseVersion
});


$UserIdDefaultCopyWith<$Res>? get createdBy;$UserIdDefaultCopyWith<$Res>? get updatedBy;$CourseCopyWith<$Res>? get course;$VersionCopyWith<$Res>? get version;$CabinetCopyWith<$Res>? get cabinet;$LaunchCopyWith<$Res>? get launch;$MainUserCopyWith<$Res>? get mainTeacher;$MainUserCopyWith<$Res>? get mainAdmin;$DiscountCopyWith<$Res>? get discount;$OnlineDiscountCopyWith<$Res>? get onlineDiscount;$CourseVersionCopyWith<$Res>? get courseVersion;

}
/// @nodoc
class _$GroupDetailCopyWithImpl<$Res>
    implements $GroupDetailCopyWith<$Res> {
  _$GroupDetailCopyWithImpl(this._self, this._then);

  final GroupDetail _self;
  final $Res Function(GroupDetail) _then;

/// Create a copy of GroupDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? updatedBy = freezed,Object? id = freezed,Object? format = freezed,Object? type = freezed,Object? startDate = freezed,Object? graduatedDate = freezed,Object? disbandedDate = freezed,Object? hasDoubleLesson = freezed,Object? status = freezed,Object? studyTime = freezed,Object? days = freezed,Object? startLessonNumber = freezed,Object? course = freezed,Object? version = freezed,Object? cabinet = freezed,Object? launch = freezed,Object? mainTeacher = freezed,Object? mainAdmin = freezed,Object? lessons = freezed,Object? schedules = freezed,Object? discount = freezed,Object? onlineDiscount = freezed,Object? courseVersion = freezed,}) {
  return _then(_self.copyWith(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,format: freezed == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,graduatedDate: freezed == graduatedDate ? _self.graduatedDate : graduatedDate // ignore: cast_nullable_to_non_nullable
as String?,disbandedDate: freezed == disbandedDate ? _self.disbandedDate : disbandedDate // ignore: cast_nullable_to_non_nullable
as String?,hasDoubleLesson: freezed == hasDoubleLesson ? _self.hasDoubleLesson : hasDoubleLesson // ignore: cast_nullable_to_non_nullable
as bool?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MyGroupStatus?,studyTime: freezed == studyTime ? _self.studyTime : studyTime // ignore: cast_nullable_to_non_nullable
as String?,days: freezed == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as List<int>?,startLessonNumber: freezed == startLessonNumber ? _self.startLessonNumber : startLessonNumber // ignore: cast_nullable_to_non_nullable
as int?,course: freezed == course ? _self.course : course // ignore: cast_nullable_to_non_nullable
as Course?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as Version?,cabinet: freezed == cabinet ? _self.cabinet : cabinet // ignore: cast_nullable_to_non_nullable
as Cabinet?,launch: freezed == launch ? _self.launch : launch // ignore: cast_nullable_to_non_nullable
as Launch?,mainTeacher: freezed == mainTeacher ? _self.mainTeacher : mainTeacher // ignore: cast_nullable_to_non_nullable
as MainUser?,mainAdmin: freezed == mainAdmin ? _self.mainAdmin : mainAdmin // ignore: cast_nullable_to_non_nullable
as MainUser?,lessons: freezed == lessons ? _self.lessons : lessons // ignore: cast_nullable_to_non_nullable
as List<Lessons>?,schedules: freezed == schedules ? _self.schedules : schedules // ignore: cast_nullable_to_non_nullable
as List<Schedules>?,discount: freezed == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as Discount?,onlineDiscount: freezed == onlineDiscount ? _self.onlineDiscount : onlineDiscount // ignore: cast_nullable_to_non_nullable
as OnlineDiscount?,courseVersion: freezed == courseVersion ? _self.courseVersion : courseVersion // ignore: cast_nullable_to_non_nullable
as CourseVersion?,
  ));
}
/// Create a copy of GroupDetail
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
}/// Create a copy of GroupDetail
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
}/// Create a copy of GroupDetail
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
}/// Create a copy of GroupDetail
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
}/// Create a copy of GroupDetail
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
}/// Create a copy of GroupDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LaunchCopyWith<$Res>? get launch {
    if (_self.launch == null) {
    return null;
  }

  return $LaunchCopyWith<$Res>(_self.launch!, (value) {
    return _then(_self.copyWith(launch: value));
  });
}/// Create a copy of GroupDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MainUserCopyWith<$Res>? get mainTeacher {
    if (_self.mainTeacher == null) {
    return null;
  }

  return $MainUserCopyWith<$Res>(_self.mainTeacher!, (value) {
    return _then(_self.copyWith(mainTeacher: value));
  });
}/// Create a copy of GroupDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MainUserCopyWith<$Res>? get mainAdmin {
    if (_self.mainAdmin == null) {
    return null;
  }

  return $MainUserCopyWith<$Res>(_self.mainAdmin!, (value) {
    return _then(_self.copyWith(mainAdmin: value));
  });
}/// Create a copy of GroupDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DiscountCopyWith<$Res>? get discount {
    if (_self.discount == null) {
    return null;
  }

  return $DiscountCopyWith<$Res>(_self.discount!, (value) {
    return _then(_self.copyWith(discount: value));
  });
}/// Create a copy of GroupDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OnlineDiscountCopyWith<$Res>? get onlineDiscount {
    if (_self.onlineDiscount == null) {
    return null;
  }

  return $OnlineDiscountCopyWith<$Res>(_self.onlineDiscount!, (value) {
    return _then(_self.copyWith(onlineDiscount: value));
  });
}/// Create a copy of GroupDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CourseVersionCopyWith<$Res>? get courseVersion {
    if (_self.courseVersion == null) {
    return null;
  }

  return $CourseVersionCopyWith<$Res>(_self.courseVersion!, (value) {
    return _then(_self.copyWith(courseVersion: value));
  });
}
}


/// Adds pattern-matching-related methods to [GroupDetail].
extension GroupDetailPatterns on GroupDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GroupDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GroupDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GroupDetail value)  $default,){
final _that = this;
switch (_that) {
case _GroupDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GroupDetail value)?  $default,){
final _that = this;
switch (_that) {
case _GroupDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'format')  String? format, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'start_date')  String? startDate, @JsonKey(name: 'graduated_date')  String? graduatedDate, @JsonKey(name: 'disbanded_date')  String? disbandedDate, @JsonKey(name: 'has_double_lesson')  bool? hasDoubleLesson, @JsonKey(name: 'status')  MyGroupStatus? status, @JsonKey(name: 'study_time')  String? studyTime, @JsonKey(name: 'days')  List<int>? days, @JsonKey(name: 'start_lesson_number')  int? startLessonNumber, @JsonKey(name: 'course')  Course? course, @JsonKey(name: 'version')  Version? version, @JsonKey(name: 'cabinet')  Cabinet? cabinet, @JsonKey(name: 'launch')  Launch? launch, @JsonKey(name: 'main_teacher')  MainUser? mainTeacher, @JsonKey(name: 'main_admin')  MainUser? mainAdmin, @JsonKey(name: 'lessons')  List<Lessons>? lessons, @JsonKey(name: 'schedules')  List<Schedules>? schedules, @JsonKey(name: 'discount')  Discount? discount, @JsonKey(name: 'online_discount')  OnlineDiscount? onlineDiscount, @JsonKey(name: 'course_version')  CourseVersion? courseVersion)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GroupDetail() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.id,_that.format,_that.type,_that.startDate,_that.graduatedDate,_that.disbandedDate,_that.hasDoubleLesson,_that.status,_that.studyTime,_that.days,_that.startLessonNumber,_that.course,_that.version,_that.cabinet,_that.launch,_that.mainTeacher,_that.mainAdmin,_that.lessons,_that.schedules,_that.discount,_that.onlineDiscount,_that.courseVersion);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'format')  String? format, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'start_date')  String? startDate, @JsonKey(name: 'graduated_date')  String? graduatedDate, @JsonKey(name: 'disbanded_date')  String? disbandedDate, @JsonKey(name: 'has_double_lesson')  bool? hasDoubleLesson, @JsonKey(name: 'status')  MyGroupStatus? status, @JsonKey(name: 'study_time')  String? studyTime, @JsonKey(name: 'days')  List<int>? days, @JsonKey(name: 'start_lesson_number')  int? startLessonNumber, @JsonKey(name: 'course')  Course? course, @JsonKey(name: 'version')  Version? version, @JsonKey(name: 'cabinet')  Cabinet? cabinet, @JsonKey(name: 'launch')  Launch? launch, @JsonKey(name: 'main_teacher')  MainUser? mainTeacher, @JsonKey(name: 'main_admin')  MainUser? mainAdmin, @JsonKey(name: 'lessons')  List<Lessons>? lessons, @JsonKey(name: 'schedules')  List<Schedules>? schedules, @JsonKey(name: 'discount')  Discount? discount, @JsonKey(name: 'online_discount')  OnlineDiscount? onlineDiscount, @JsonKey(name: 'course_version')  CourseVersion? courseVersion)  $default,) {final _that = this;
switch (_that) {
case _GroupDetail():
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.id,_that.format,_that.type,_that.startDate,_that.graduatedDate,_that.disbandedDate,_that.hasDoubleLesson,_that.status,_that.studyTime,_that.days,_that.startLessonNumber,_that.course,_that.version,_that.cabinet,_that.launch,_that.mainTeacher,_that.mainAdmin,_that.lessons,_that.schedules,_that.discount,_that.onlineDiscount,_that.courseVersion);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'format')  String? format, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'start_date')  String? startDate, @JsonKey(name: 'graduated_date')  String? graduatedDate, @JsonKey(name: 'disbanded_date')  String? disbandedDate, @JsonKey(name: 'has_double_lesson')  bool? hasDoubleLesson, @JsonKey(name: 'status')  MyGroupStatus? status, @JsonKey(name: 'study_time')  String? studyTime, @JsonKey(name: 'days')  List<int>? days, @JsonKey(name: 'start_lesson_number')  int? startLessonNumber, @JsonKey(name: 'course')  Course? course, @JsonKey(name: 'version')  Version? version, @JsonKey(name: 'cabinet')  Cabinet? cabinet, @JsonKey(name: 'launch')  Launch? launch, @JsonKey(name: 'main_teacher')  MainUser? mainTeacher, @JsonKey(name: 'main_admin')  MainUser? mainAdmin, @JsonKey(name: 'lessons')  List<Lessons>? lessons, @JsonKey(name: 'schedules')  List<Schedules>? schedules, @JsonKey(name: 'discount')  Discount? discount, @JsonKey(name: 'online_discount')  OnlineDiscount? onlineDiscount, @JsonKey(name: 'course_version')  CourseVersion? courseVersion)?  $default,) {final _that = this;
switch (_that) {
case _GroupDetail() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.id,_that.format,_that.type,_that.startDate,_that.graduatedDate,_that.disbandedDate,_that.hasDoubleLesson,_that.status,_that.studyTime,_that.days,_that.startLessonNumber,_that.course,_that.version,_that.cabinet,_that.launch,_that.mainTeacher,_that.mainAdmin,_that.lessons,_that.schedules,_that.discount,_that.onlineDiscount,_that.courseVersion);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GroupDetail with DiagnosticableTreeMixin implements GroupDetail {
  const _GroupDetail({@JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'created_by') this.createdBy, @JsonKey(name: 'updated_by') this.updatedBy, @JsonKey(name: 'id') this.id, @JsonKey(name: 'format') this.format, @JsonKey(name: 'type') this.type, @JsonKey(name: 'start_date') this.startDate, @JsonKey(name: 'graduated_date') this.graduatedDate, @JsonKey(name: 'disbanded_date') this.disbandedDate, @JsonKey(name: 'has_double_lesson') this.hasDoubleLesson, @JsonKey(name: 'status') this.status, @JsonKey(name: 'study_time') this.studyTime, @JsonKey(name: 'days') final  List<int>? days, @JsonKey(name: 'start_lesson_number') this.startLessonNumber, @JsonKey(name: 'course') this.course, @JsonKey(name: 'version') this.version, @JsonKey(name: 'cabinet') this.cabinet, @JsonKey(name: 'launch') this.launch, @JsonKey(name: 'main_teacher') this.mainTeacher, @JsonKey(name: 'main_admin') this.mainAdmin, @JsonKey(name: 'lessons') final  List<Lessons>? lessons, @JsonKey(name: 'schedules') final  List<Schedules>? schedules, @JsonKey(name: 'discount') this.discount, @JsonKey(name: 'online_discount') this.onlineDiscount, @JsonKey(name: 'course_version') this.courseVersion}): _days = days,_lessons = lessons,_schedules = schedules;
  factory _GroupDetail.fromJson(Map<String, dynamic> json) => _$GroupDetailFromJson(json);

@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'created_by') final  UserIdDefault? createdBy;
@override@JsonKey(name: 'updated_by') final  UserIdDefault? updatedBy;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'format') final  String? format;
@override@JsonKey(name: 'type') final  String? type;
@override@JsonKey(name: 'start_date') final  String? startDate;
@override@JsonKey(name: 'graduated_date') final  String? graduatedDate;
@override@JsonKey(name: 'disbanded_date') final  String? disbandedDate;
@override@JsonKey(name: 'has_double_lesson') final  bool? hasDoubleLesson;
@override@JsonKey(name: 'status') final  MyGroupStatus? status;
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
@override@JsonKey(name: 'course') final  Course? course;
@override@JsonKey(name: 'version') final  Version? version;
@override@JsonKey(name: 'cabinet') final  Cabinet? cabinet;
@override@JsonKey(name: 'launch') final  Launch? launch;
@override@JsonKey(name: 'main_teacher') final  MainUser? mainTeacher;
@override@JsonKey(name: 'main_admin') final  MainUser? mainAdmin;
 final  List<Lessons>? _lessons;
@override@JsonKey(name: 'lessons') List<Lessons>? get lessons {
  final value = _lessons;
  if (value == null) return null;
  if (_lessons is EqualUnmodifiableListView) return _lessons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Schedules>? _schedules;
@override@JsonKey(name: 'schedules') List<Schedules>? get schedules {
  final value = _schedules;
  if (value == null) return null;
  if (_schedules is EqualUnmodifiableListView) return _schedules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'discount') final  Discount? discount;
@override@JsonKey(name: 'online_discount') final  OnlineDiscount? onlineDiscount;
@override@JsonKey(name: 'course_version') final  CourseVersion? courseVersion;

/// Create a copy of GroupDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroupDetailCopyWith<_GroupDetail> get copyWith => __$GroupDetailCopyWithImpl<_GroupDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GroupDetailToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GroupDetail'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdBy', createdBy))..add(DiagnosticsProperty('updatedBy', updatedBy))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('format', format))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('startDate', startDate))..add(DiagnosticsProperty('graduatedDate', graduatedDate))..add(DiagnosticsProperty('disbandedDate', disbandedDate))..add(DiagnosticsProperty('hasDoubleLesson', hasDoubleLesson))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('studyTime', studyTime))..add(DiagnosticsProperty('days', days))..add(DiagnosticsProperty('startLessonNumber', startLessonNumber))..add(DiagnosticsProperty('course', course))..add(DiagnosticsProperty('version', version))..add(DiagnosticsProperty('cabinet', cabinet))..add(DiagnosticsProperty('launch', launch))..add(DiagnosticsProperty('mainTeacher', mainTeacher))..add(DiagnosticsProperty('mainAdmin', mainAdmin))..add(DiagnosticsProperty('lessons', lessons))..add(DiagnosticsProperty('schedules', schedules))..add(DiagnosticsProperty('discount', discount))..add(DiagnosticsProperty('onlineDiscount', onlineDiscount))..add(DiagnosticsProperty('courseVersion', courseVersion));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroupDetail&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.id, id) || other.id == id)&&(identical(other.format, format) || other.format == format)&&(identical(other.type, type) || other.type == type)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.graduatedDate, graduatedDate) || other.graduatedDate == graduatedDate)&&(identical(other.disbandedDate, disbandedDate) || other.disbandedDate == disbandedDate)&&(identical(other.hasDoubleLesson, hasDoubleLesson) || other.hasDoubleLesson == hasDoubleLesson)&&(identical(other.status, status) || other.status == status)&&(identical(other.studyTime, studyTime) || other.studyTime == studyTime)&&const DeepCollectionEquality().equals(other._days, _days)&&(identical(other.startLessonNumber, startLessonNumber) || other.startLessonNumber == startLessonNumber)&&(identical(other.course, course) || other.course == course)&&(identical(other.version, version) || other.version == version)&&(identical(other.cabinet, cabinet) || other.cabinet == cabinet)&&(identical(other.launch, launch) || other.launch == launch)&&(identical(other.mainTeacher, mainTeacher) || other.mainTeacher == mainTeacher)&&(identical(other.mainAdmin, mainAdmin) || other.mainAdmin == mainAdmin)&&const DeepCollectionEquality().equals(other._lessons, _lessons)&&const DeepCollectionEquality().equals(other._schedules, _schedules)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.onlineDiscount, onlineDiscount) || other.onlineDiscount == onlineDiscount)&&(identical(other.courseVersion, courseVersion) || other.courseVersion == courseVersion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,createdAt,updatedAt,createdBy,updatedBy,id,format,type,startDate,graduatedDate,disbandedDate,hasDoubleLesson,status,studyTime,const DeepCollectionEquality().hash(_days),startLessonNumber,course,version,cabinet,launch,mainTeacher,mainAdmin,const DeepCollectionEquality().hash(_lessons),const DeepCollectionEquality().hash(_schedules),discount,onlineDiscount,courseVersion]);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GroupDetail(createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, updatedBy: $updatedBy, id: $id, format: $format, type: $type, startDate: $startDate, graduatedDate: $graduatedDate, disbandedDate: $disbandedDate, hasDoubleLesson: $hasDoubleLesson, status: $status, studyTime: $studyTime, days: $days, startLessonNumber: $startLessonNumber, course: $course, version: $version, cabinet: $cabinet, launch: $launch, mainTeacher: $mainTeacher, mainAdmin: $mainAdmin, lessons: $lessons, schedules: $schedules, discount: $discount, onlineDiscount: $onlineDiscount, courseVersion: $courseVersion)';
}


}

/// @nodoc
abstract mixin class _$GroupDetailCopyWith<$Res> implements $GroupDetailCopyWith<$Res> {
  factory _$GroupDetailCopyWith(_GroupDetail value, $Res Function(_GroupDetail) _then) = __$GroupDetailCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by') UserIdDefault? createdBy,@JsonKey(name: 'updated_by') UserIdDefault? updatedBy,@JsonKey(name: 'id') int? id,@JsonKey(name: 'format') String? format,@JsonKey(name: 'type') String? type,@JsonKey(name: 'start_date') String? startDate,@JsonKey(name: 'graduated_date') String? graduatedDate,@JsonKey(name: 'disbanded_date') String? disbandedDate,@JsonKey(name: 'has_double_lesson') bool? hasDoubleLesson,@JsonKey(name: 'status') MyGroupStatus? status,@JsonKey(name: 'study_time') String? studyTime,@JsonKey(name: 'days') List<int>? days,@JsonKey(name: 'start_lesson_number') int? startLessonNumber,@JsonKey(name: 'course') Course? course,@JsonKey(name: 'version') Version? version,@JsonKey(name: 'cabinet') Cabinet? cabinet,@JsonKey(name: 'launch') Launch? launch,@JsonKey(name: 'main_teacher') MainUser? mainTeacher,@JsonKey(name: 'main_admin') MainUser? mainAdmin,@JsonKey(name: 'lessons') List<Lessons>? lessons,@JsonKey(name: 'schedules') List<Schedules>? schedules,@JsonKey(name: 'discount') Discount? discount,@JsonKey(name: 'online_discount') OnlineDiscount? onlineDiscount,@JsonKey(name: 'course_version') CourseVersion? courseVersion
});


@override $UserIdDefaultCopyWith<$Res>? get createdBy;@override $UserIdDefaultCopyWith<$Res>? get updatedBy;@override $CourseCopyWith<$Res>? get course;@override $VersionCopyWith<$Res>? get version;@override $CabinetCopyWith<$Res>? get cabinet;@override $LaunchCopyWith<$Res>? get launch;@override $MainUserCopyWith<$Res>? get mainTeacher;@override $MainUserCopyWith<$Res>? get mainAdmin;@override $DiscountCopyWith<$Res>? get discount;@override $OnlineDiscountCopyWith<$Res>? get onlineDiscount;@override $CourseVersionCopyWith<$Res>? get courseVersion;

}
/// @nodoc
class __$GroupDetailCopyWithImpl<$Res>
    implements _$GroupDetailCopyWith<$Res> {
  __$GroupDetailCopyWithImpl(this._self, this._then);

  final _GroupDetail _self;
  final $Res Function(_GroupDetail) _then;

/// Create a copy of GroupDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? updatedBy = freezed,Object? id = freezed,Object? format = freezed,Object? type = freezed,Object? startDate = freezed,Object? graduatedDate = freezed,Object? disbandedDate = freezed,Object? hasDoubleLesson = freezed,Object? status = freezed,Object? studyTime = freezed,Object? days = freezed,Object? startLessonNumber = freezed,Object? course = freezed,Object? version = freezed,Object? cabinet = freezed,Object? launch = freezed,Object? mainTeacher = freezed,Object? mainAdmin = freezed,Object? lessons = freezed,Object? schedules = freezed,Object? discount = freezed,Object? onlineDiscount = freezed,Object? courseVersion = freezed,}) {
  return _then(_GroupDetail(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,format: freezed == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,graduatedDate: freezed == graduatedDate ? _self.graduatedDate : graduatedDate // ignore: cast_nullable_to_non_nullable
as String?,disbandedDate: freezed == disbandedDate ? _self.disbandedDate : disbandedDate // ignore: cast_nullable_to_non_nullable
as String?,hasDoubleLesson: freezed == hasDoubleLesson ? _self.hasDoubleLesson : hasDoubleLesson // ignore: cast_nullable_to_non_nullable
as bool?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MyGroupStatus?,studyTime: freezed == studyTime ? _self.studyTime : studyTime // ignore: cast_nullable_to_non_nullable
as String?,days: freezed == days ? _self._days : days // ignore: cast_nullable_to_non_nullable
as List<int>?,startLessonNumber: freezed == startLessonNumber ? _self.startLessonNumber : startLessonNumber // ignore: cast_nullable_to_non_nullable
as int?,course: freezed == course ? _self.course : course // ignore: cast_nullable_to_non_nullable
as Course?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as Version?,cabinet: freezed == cabinet ? _self.cabinet : cabinet // ignore: cast_nullable_to_non_nullable
as Cabinet?,launch: freezed == launch ? _self.launch : launch // ignore: cast_nullable_to_non_nullable
as Launch?,mainTeacher: freezed == mainTeacher ? _self.mainTeacher : mainTeacher // ignore: cast_nullable_to_non_nullable
as MainUser?,mainAdmin: freezed == mainAdmin ? _self.mainAdmin : mainAdmin // ignore: cast_nullable_to_non_nullable
as MainUser?,lessons: freezed == lessons ? _self._lessons : lessons // ignore: cast_nullable_to_non_nullable
as List<Lessons>?,schedules: freezed == schedules ? _self._schedules : schedules // ignore: cast_nullable_to_non_nullable
as List<Schedules>?,discount: freezed == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as Discount?,onlineDiscount: freezed == onlineDiscount ? _self.onlineDiscount : onlineDiscount // ignore: cast_nullable_to_non_nullable
as OnlineDiscount?,courseVersion: freezed == courseVersion ? _self.courseVersion : courseVersion // ignore: cast_nullable_to_non_nullable
as CourseVersion?,
  ));
}

/// Create a copy of GroupDetail
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
}/// Create a copy of GroupDetail
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
}/// Create a copy of GroupDetail
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
}/// Create a copy of GroupDetail
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
}/// Create a copy of GroupDetail
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
}/// Create a copy of GroupDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LaunchCopyWith<$Res>? get launch {
    if (_self.launch == null) {
    return null;
  }

  return $LaunchCopyWith<$Res>(_self.launch!, (value) {
    return _then(_self.copyWith(launch: value));
  });
}/// Create a copy of GroupDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MainUserCopyWith<$Res>? get mainTeacher {
    if (_self.mainTeacher == null) {
    return null;
  }

  return $MainUserCopyWith<$Res>(_self.mainTeacher!, (value) {
    return _then(_self.copyWith(mainTeacher: value));
  });
}/// Create a copy of GroupDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MainUserCopyWith<$Res>? get mainAdmin {
    if (_self.mainAdmin == null) {
    return null;
  }

  return $MainUserCopyWith<$Res>(_self.mainAdmin!, (value) {
    return _then(_self.copyWith(mainAdmin: value));
  });
}/// Create a copy of GroupDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DiscountCopyWith<$Res>? get discount {
    if (_self.discount == null) {
    return null;
  }

  return $DiscountCopyWith<$Res>(_self.discount!, (value) {
    return _then(_self.copyWith(discount: value));
  });
}/// Create a copy of GroupDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OnlineDiscountCopyWith<$Res>? get onlineDiscount {
    if (_self.onlineDiscount == null) {
    return null;
  }

  return $OnlineDiscountCopyWith<$Res>(_self.onlineDiscount!, (value) {
    return _then(_self.copyWith(onlineDiscount: value));
  });
}/// Create a copy of GroupDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CourseVersionCopyWith<$Res>? get courseVersion {
    if (_self.courseVersion == null) {
    return null;
  }

  return $CourseVersionCopyWith<$Res>(_self.courseVersion!, (value) {
    return _then(_self.copyWith(courseVersion: value));
  });
}
}


/// @nodoc
mixin _$Course implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'icon') String? get icon;@JsonKey(name: 'color') String? get color;@JsonKey(name: 'banner') String? get banner;@JsonKey(name: 'language') String? get language;@JsonKey(name: 'posters') List<Posters>? get posters;
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
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('icon', icon))..add(DiagnosticsProperty('color', color))..add(DiagnosticsProperty('banner', banner))..add(DiagnosticsProperty('language', language))..add(DiagnosticsProperty('posters', posters));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Course&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.color, color) || other.color == color)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.language, language) || other.language == language)&&const DeepCollectionEquality().equals(other.posters, posters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,icon,color,banner,language,const DeepCollectionEquality().hash(posters));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Course(id: $id, name: $name, icon: $icon, color: $color, banner: $banner, language: $language, posters: $posters)';
}


}

/// @nodoc
abstract mixin class $CourseCopyWith<$Res>  {
  factory $CourseCopyWith(Course value, $Res Function(Course) _then) = _$CourseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'icon') String? icon,@JsonKey(name: 'color') String? color,@JsonKey(name: 'banner') String? banner,@JsonKey(name: 'language') String? language,@JsonKey(name: 'posters') List<Posters>? posters
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? icon = freezed,Object? color = freezed,Object? banner = freezed,Object? language = freezed,Object? posters = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,posters: freezed == posters ? _self.posters : posters // ignore: cast_nullable_to_non_nullable
as List<Posters>?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'icon')  String? icon, @JsonKey(name: 'color')  String? color, @JsonKey(name: 'banner')  String? banner, @JsonKey(name: 'language')  String? language, @JsonKey(name: 'posters')  List<Posters>? posters)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Course() when $default != null:
return $default(_that.id,_that.name,_that.icon,_that.color,_that.banner,_that.language,_that.posters);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'icon')  String? icon, @JsonKey(name: 'color')  String? color, @JsonKey(name: 'banner')  String? banner, @JsonKey(name: 'language')  String? language, @JsonKey(name: 'posters')  List<Posters>? posters)  $default,) {final _that = this;
switch (_that) {
case _Course():
return $default(_that.id,_that.name,_that.icon,_that.color,_that.banner,_that.language,_that.posters);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'icon')  String? icon, @JsonKey(name: 'color')  String? color, @JsonKey(name: 'banner')  String? banner, @JsonKey(name: 'language')  String? language, @JsonKey(name: 'posters')  List<Posters>? posters)?  $default,) {final _that = this;
switch (_that) {
case _Course() when $default != null:
return $default(_that.id,_that.name,_that.icon,_that.color,_that.banner,_that.language,_that.posters);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Course with DiagnosticableTreeMixin implements Course {
  const _Course({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'icon') this.icon, @JsonKey(name: 'color') this.color, @JsonKey(name: 'banner') this.banner, @JsonKey(name: 'language') this.language, @JsonKey(name: 'posters') final  List<Posters>? posters}): _posters = posters;
  factory _Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'icon') final  String? icon;
@override@JsonKey(name: 'color') final  String? color;
@override@JsonKey(name: 'banner') final  String? banner;
@override@JsonKey(name: 'language') final  String? language;
 final  List<Posters>? _posters;
@override@JsonKey(name: 'posters') List<Posters>? get posters {
  final value = _posters;
  if (value == null) return null;
  if (_posters is EqualUnmodifiableListView) return _posters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


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
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('icon', icon))..add(DiagnosticsProperty('color', color))..add(DiagnosticsProperty('banner', banner))..add(DiagnosticsProperty('language', language))..add(DiagnosticsProperty('posters', posters));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Course&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.color, color) || other.color == color)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.language, language) || other.language == language)&&const DeepCollectionEquality().equals(other._posters, _posters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,icon,color,banner,language,const DeepCollectionEquality().hash(_posters));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Course(id: $id, name: $name, icon: $icon, color: $color, banner: $banner, language: $language, posters: $posters)';
}


}

/// @nodoc
abstract mixin class _$CourseCopyWith<$Res> implements $CourseCopyWith<$Res> {
  factory _$CourseCopyWith(_Course value, $Res Function(_Course) _then) = __$CourseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'icon') String? icon,@JsonKey(name: 'color') String? color,@JsonKey(name: 'banner') String? banner,@JsonKey(name: 'language') String? language,@JsonKey(name: 'posters') List<Posters>? posters
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? icon = freezed,Object? color = freezed,Object? banner = freezed,Object? language = freezed,Object? posters = freezed,}) {
  return _then(_Course(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,posters: freezed == posters ? _self._posters : posters // ignore: cast_nullable_to_non_nullable
as List<Posters>?,
  ));
}


}


/// @nodoc
mixin _$Posters implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'course_id') int? get courseId;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'image') String? get image;
/// Create a copy of Posters
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostersCopyWith<Posters> get copyWith => _$PostersCopyWithImpl<Posters>(this as Posters, _$identity);

  /// Serializes this Posters to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Posters'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('courseId', courseId))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('image', image));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Posters&&(identical(other.id, id) || other.id == id)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,courseId,name,image);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Posters(id: $id, courseId: $courseId, name: $name, image: $image)';
}


}

/// @nodoc
abstract mixin class $PostersCopyWith<$Res>  {
  factory $PostersCopyWith(Posters value, $Res Function(Posters) _then) = _$PostersCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'course_id') int? courseId,@JsonKey(name: 'name') String? name,@JsonKey(name: 'image') String? image
});




}
/// @nodoc
class _$PostersCopyWithImpl<$Res>
    implements $PostersCopyWith<$Res> {
  _$PostersCopyWithImpl(this._self, this._then);

  final Posters _self;
  final $Res Function(Posters) _then;

/// Create a copy of Posters
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? courseId = freezed,Object? name = freezed,Object? image = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,courseId: freezed == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Posters].
extension PostersPatterns on Posters {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Posters value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Posters() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Posters value)  $default,){
final _that = this;
switch (_that) {
case _Posters():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Posters value)?  $default,){
final _that = this;
switch (_that) {
case _Posters() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'course_id')  int? courseId, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'image')  String? image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Posters() when $default != null:
return $default(_that.id,_that.courseId,_that.name,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'course_id')  int? courseId, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'image')  String? image)  $default,) {final _that = this;
switch (_that) {
case _Posters():
return $default(_that.id,_that.courseId,_that.name,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'course_id')  int? courseId, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'image')  String? image)?  $default,) {final _that = this;
switch (_that) {
case _Posters() when $default != null:
return $default(_that.id,_that.courseId,_that.name,_that.image);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Posters with DiagnosticableTreeMixin implements Posters {
  const _Posters({@JsonKey(name: 'id') this.id, @JsonKey(name: 'course_id') this.courseId, @JsonKey(name: 'name') this.name, @JsonKey(name: 'image') this.image});
  factory _Posters.fromJson(Map<String, dynamic> json) => _$PostersFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'course_id') final  int? courseId;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'image') final  String? image;

/// Create a copy of Posters
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostersCopyWith<_Posters> get copyWith => __$PostersCopyWithImpl<_Posters>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostersToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Posters'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('courseId', courseId))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('image', image));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Posters&&(identical(other.id, id) || other.id == id)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,courseId,name,image);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Posters(id: $id, courseId: $courseId, name: $name, image: $image)';
}


}

/// @nodoc
abstract mixin class _$PostersCopyWith<$Res> implements $PostersCopyWith<$Res> {
  factory _$PostersCopyWith(_Posters value, $Res Function(_Posters) _then) = __$PostersCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'course_id') int? courseId,@JsonKey(name: 'name') String? name,@JsonKey(name: 'image') String? image
});




}
/// @nodoc
class __$PostersCopyWithImpl<$Res>
    implements _$PostersCopyWith<$Res> {
  __$PostersCopyWithImpl(this._self, this._then);

  final _Posters _self;
  final $Res Function(_Posters) _then;

/// Create a copy of Posters
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? courseId = freezed,Object? name = freezed,Object? image = freezed,}) {
  return _then(_Posters(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,courseId: freezed == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Version implements DiagnosticableTreeMixin {

@JsonKey(name: 'version_id') int? get versionId;@JsonKey(name: 'version') int? get version;@JsonKey(name: 'version_number') int? get versionNumber;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'lesson_count') int? get lessonCount;@JsonKey(name: 'lesson_duration') int? get lessonDuration;@JsonKey(name: 'block_count') int? get blockCount;@JsonKey(name: 'block_lesson_count') int? get blockLessonCount;
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
    ..add(DiagnosticsProperty('versionId', versionId))..add(DiagnosticsProperty('version', version))..add(DiagnosticsProperty('versionNumber', versionNumber))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('lessonCount', lessonCount))..add(DiagnosticsProperty('lessonDuration', lessonDuration))..add(DiagnosticsProperty('blockCount', blockCount))..add(DiagnosticsProperty('blockLessonCount', blockLessonCount));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Version&&(identical(other.versionId, versionId) || other.versionId == versionId)&&(identical(other.version, version) || other.version == version)&&(identical(other.versionNumber, versionNumber) || other.versionNumber == versionNumber)&&(identical(other.name, name) || other.name == name)&&(identical(other.lessonCount, lessonCount) || other.lessonCount == lessonCount)&&(identical(other.lessonDuration, lessonDuration) || other.lessonDuration == lessonDuration)&&(identical(other.blockCount, blockCount) || other.blockCount == blockCount)&&(identical(other.blockLessonCount, blockLessonCount) || other.blockLessonCount == blockLessonCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,versionId,version,versionNumber,name,lessonCount,lessonDuration,blockCount,blockLessonCount);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Version(versionId: $versionId, version: $version, versionNumber: $versionNumber, name: $name, lessonCount: $lessonCount, lessonDuration: $lessonDuration, blockCount: $blockCount, blockLessonCount: $blockLessonCount)';
}


}

/// @nodoc
abstract mixin class $VersionCopyWith<$Res>  {
  factory $VersionCopyWith(Version value, $Res Function(Version) _then) = _$VersionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'version_id') int? versionId,@JsonKey(name: 'version') int? version,@JsonKey(name: 'version_number') int? versionNumber,@JsonKey(name: 'name') String? name,@JsonKey(name: 'lesson_count') int? lessonCount,@JsonKey(name: 'lesson_duration') int? lessonDuration,@JsonKey(name: 'block_count') int? blockCount,@JsonKey(name: 'block_lesson_count') int? blockLessonCount
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
@pragma('vm:prefer-inline') @override $Res call({Object? versionId = freezed,Object? version = freezed,Object? versionNumber = freezed,Object? name = freezed,Object? lessonCount = freezed,Object? lessonDuration = freezed,Object? blockCount = freezed,Object? blockLessonCount = freezed,}) {
  return _then(_self.copyWith(
versionId: freezed == versionId ? _self.versionId : versionId // ignore: cast_nullable_to_non_nullable
as int?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,versionNumber: freezed == versionNumber ? _self.versionNumber : versionNumber // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,lessonCount: freezed == lessonCount ? _self.lessonCount : lessonCount // ignore: cast_nullable_to_non_nullable
as int?,lessonDuration: freezed == lessonDuration ? _self.lessonDuration : lessonDuration // ignore: cast_nullable_to_non_nullable
as int?,blockCount: freezed == blockCount ? _self.blockCount : blockCount // ignore: cast_nullable_to_non_nullable
as int?,blockLessonCount: freezed == blockLessonCount ? _self.blockLessonCount : blockLessonCount // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'version_id')  int? versionId, @JsonKey(name: 'version')  int? version, @JsonKey(name: 'version_number')  int? versionNumber, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'lesson_count')  int? lessonCount, @JsonKey(name: 'lesson_duration')  int? lessonDuration, @JsonKey(name: 'block_count')  int? blockCount, @JsonKey(name: 'block_lesson_count')  int? blockLessonCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Version() when $default != null:
return $default(_that.versionId,_that.version,_that.versionNumber,_that.name,_that.lessonCount,_that.lessonDuration,_that.blockCount,_that.blockLessonCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'version_id')  int? versionId, @JsonKey(name: 'version')  int? version, @JsonKey(name: 'version_number')  int? versionNumber, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'lesson_count')  int? lessonCount, @JsonKey(name: 'lesson_duration')  int? lessonDuration, @JsonKey(name: 'block_count')  int? blockCount, @JsonKey(name: 'block_lesson_count')  int? blockLessonCount)  $default,) {final _that = this;
switch (_that) {
case _Version():
return $default(_that.versionId,_that.version,_that.versionNumber,_that.name,_that.lessonCount,_that.lessonDuration,_that.blockCount,_that.blockLessonCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'version_id')  int? versionId, @JsonKey(name: 'version')  int? version, @JsonKey(name: 'version_number')  int? versionNumber, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'lesson_count')  int? lessonCount, @JsonKey(name: 'lesson_duration')  int? lessonDuration, @JsonKey(name: 'block_count')  int? blockCount, @JsonKey(name: 'block_lesson_count')  int? blockLessonCount)?  $default,) {final _that = this;
switch (_that) {
case _Version() when $default != null:
return $default(_that.versionId,_that.version,_that.versionNumber,_that.name,_that.lessonCount,_that.lessonDuration,_that.blockCount,_that.blockLessonCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Version with DiagnosticableTreeMixin implements Version {
  const _Version({@JsonKey(name: 'version_id') this.versionId, @JsonKey(name: 'version') this.version, @JsonKey(name: 'version_number') this.versionNumber, @JsonKey(name: 'name') this.name, @JsonKey(name: 'lesson_count') this.lessonCount, @JsonKey(name: 'lesson_duration') this.lessonDuration, @JsonKey(name: 'block_count') this.blockCount, @JsonKey(name: 'block_lesson_count') this.blockLessonCount});
  factory _Version.fromJson(Map<String, dynamic> json) => _$VersionFromJson(json);

@override@JsonKey(name: 'version_id') final  int? versionId;
@override@JsonKey(name: 'version') final  int? version;
@override@JsonKey(name: 'version_number') final  int? versionNumber;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'lesson_count') final  int? lessonCount;
@override@JsonKey(name: 'lesson_duration') final  int? lessonDuration;
@override@JsonKey(name: 'block_count') final  int? blockCount;
@override@JsonKey(name: 'block_lesson_count') final  int? blockLessonCount;

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
    ..add(DiagnosticsProperty('versionId', versionId))..add(DiagnosticsProperty('version', version))..add(DiagnosticsProperty('versionNumber', versionNumber))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('lessonCount', lessonCount))..add(DiagnosticsProperty('lessonDuration', lessonDuration))..add(DiagnosticsProperty('blockCount', blockCount))..add(DiagnosticsProperty('blockLessonCount', blockLessonCount));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Version&&(identical(other.versionId, versionId) || other.versionId == versionId)&&(identical(other.version, version) || other.version == version)&&(identical(other.versionNumber, versionNumber) || other.versionNumber == versionNumber)&&(identical(other.name, name) || other.name == name)&&(identical(other.lessonCount, lessonCount) || other.lessonCount == lessonCount)&&(identical(other.lessonDuration, lessonDuration) || other.lessonDuration == lessonDuration)&&(identical(other.blockCount, blockCount) || other.blockCount == blockCount)&&(identical(other.blockLessonCount, blockLessonCount) || other.blockLessonCount == blockLessonCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,versionId,version,versionNumber,name,lessonCount,lessonDuration,blockCount,blockLessonCount);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Version(versionId: $versionId, version: $version, versionNumber: $versionNumber, name: $name, lessonCount: $lessonCount, lessonDuration: $lessonDuration, blockCount: $blockCount, blockLessonCount: $blockLessonCount)';
}


}

/// @nodoc
abstract mixin class _$VersionCopyWith<$Res> implements $VersionCopyWith<$Res> {
  factory _$VersionCopyWith(_Version value, $Res Function(_Version) _then) = __$VersionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'version_id') int? versionId,@JsonKey(name: 'version') int? version,@JsonKey(name: 'version_number') int? versionNumber,@JsonKey(name: 'name') String? name,@JsonKey(name: 'lesson_count') int? lessonCount,@JsonKey(name: 'lesson_duration') int? lessonDuration,@JsonKey(name: 'block_count') int? blockCount,@JsonKey(name: 'block_lesson_count') int? blockLessonCount
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
@override @pragma('vm:prefer-inline') $Res call({Object? versionId = freezed,Object? version = freezed,Object? versionNumber = freezed,Object? name = freezed,Object? lessonCount = freezed,Object? lessonDuration = freezed,Object? blockCount = freezed,Object? blockLessonCount = freezed,}) {
  return _then(_Version(
versionId: freezed == versionId ? _self.versionId : versionId // ignore: cast_nullable_to_non_nullable
as int?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,versionNumber: freezed == versionNumber ? _self.versionNumber : versionNumber // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,lessonCount: freezed == lessonCount ? _self.lessonCount : lessonCount // ignore: cast_nullable_to_non_nullable
as int?,lessonDuration: freezed == lessonDuration ? _self.lessonDuration : lessonDuration // ignore: cast_nullable_to_non_nullable
as int?,blockCount: freezed == blockCount ? _self.blockCount : blockCount // ignore: cast_nullable_to_non_nullable
as int?,blockLessonCount: freezed == blockLessonCount ? _self.blockLessonCount : blockLessonCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
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


/// @nodoc
mixin _$Launch implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'assigned_to') int? get assignedTo;
/// Create a copy of Launch
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LaunchCopyWith<Launch> get copyWith => _$LaunchCopyWithImpl<Launch>(this as Launch, _$identity);

  /// Serializes this Launch to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Launch'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('assignedTo', assignedTo));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Launch&&(identical(other.id, id) || other.id == id)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,assignedTo);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Launch(id: $id, assignedTo: $assignedTo)';
}


}

/// @nodoc
abstract mixin class $LaunchCopyWith<$Res>  {
  factory $LaunchCopyWith(Launch value, $Res Function(Launch) _then) = _$LaunchCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'assigned_to') int? assignedTo
});




}
/// @nodoc
class _$LaunchCopyWithImpl<$Res>
    implements $LaunchCopyWith<$Res> {
  _$LaunchCopyWithImpl(this._self, this._then);

  final Launch _self;
  final $Res Function(Launch) _then;

/// Create a copy of Launch
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? assignedTo = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,assignedTo: freezed == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Launch].
extension LaunchPatterns on Launch {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Launch value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Launch() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Launch value)  $default,){
final _that = this;
switch (_that) {
case _Launch():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Launch value)?  $default,){
final _that = this;
switch (_that) {
case _Launch() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'assigned_to')  int? assignedTo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Launch() when $default != null:
return $default(_that.id,_that.assignedTo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'assigned_to')  int? assignedTo)  $default,) {final _that = this;
switch (_that) {
case _Launch():
return $default(_that.id,_that.assignedTo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'assigned_to')  int? assignedTo)?  $default,) {final _that = this;
switch (_that) {
case _Launch() when $default != null:
return $default(_that.id,_that.assignedTo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Launch with DiagnosticableTreeMixin implements Launch {
  const _Launch({@JsonKey(name: 'id') this.id, @JsonKey(name: 'assigned_to') this.assignedTo});
  factory _Launch.fromJson(Map<String, dynamic> json) => _$LaunchFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'assigned_to') final  int? assignedTo;

/// Create a copy of Launch
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LaunchCopyWith<_Launch> get copyWith => __$LaunchCopyWithImpl<_Launch>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LaunchToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Launch'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('assignedTo', assignedTo));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Launch&&(identical(other.id, id) || other.id == id)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,assignedTo);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Launch(id: $id, assignedTo: $assignedTo)';
}


}

/// @nodoc
abstract mixin class _$LaunchCopyWith<$Res> implements $LaunchCopyWith<$Res> {
  factory _$LaunchCopyWith(_Launch value, $Res Function(_Launch) _then) = __$LaunchCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'assigned_to') int? assignedTo
});




}
/// @nodoc
class __$LaunchCopyWithImpl<$Res>
    implements _$LaunchCopyWith<$Res> {
  __$LaunchCopyWithImpl(this._self, this._then);

  final _Launch _self;
  final $Res Function(_Launch) _then;

/// Create a copy of Launch
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? assignedTo = freezed,}) {
  return _then(_Launch(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,assignedTo: freezed == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$MainUser implements DiagnosticableTreeMixin {

@JsonKey(name: 'group_user_id') int? get groupUserId;@JsonKey(name: 'user_id') int? get userId;@JsonKey(name: 'user') User? get user;
/// Create a copy of MainUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MainUserCopyWith<MainUser> get copyWith => _$MainUserCopyWithImpl<MainUser>(this as MainUser, _$identity);

  /// Serializes this MainUser to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MainUser'))
    ..add(DiagnosticsProperty('groupUserId', groupUserId))..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('user', user));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainUser&&(identical(other.groupUserId, groupUserId) || other.groupUserId == groupUserId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,groupUserId,userId,user);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MainUser(groupUserId: $groupUserId, userId: $userId, user: $user)';
}


}

/// @nodoc
abstract mixin class $MainUserCopyWith<$Res>  {
  factory $MainUserCopyWith(MainUser value, $Res Function(MainUser) _then) = _$MainUserCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'group_user_id') int? groupUserId,@JsonKey(name: 'user_id') int? userId,@JsonKey(name: 'user') User? user
});


$UserCopyWith<$Res>? get user;

}
/// @nodoc
class _$MainUserCopyWithImpl<$Res>
    implements $MainUserCopyWith<$Res> {
  _$MainUserCopyWithImpl(this._self, this._then);

  final MainUser _self;
  final $Res Function(MainUser) _then;

/// Create a copy of MainUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? groupUserId = freezed,Object? userId = freezed,Object? user = freezed,}) {
  return _then(_self.copyWith(
groupUserId: freezed == groupUserId ? _self.groupUserId : groupUserId // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,
  ));
}
/// Create a copy of MainUser
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


/// Adds pattern-matching-related methods to [MainUser].
extension MainUserPatterns on MainUser {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MainUser value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MainUser() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MainUser value)  $default,){
final _that = this;
switch (_that) {
case _MainUser():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MainUser value)?  $default,){
final _that = this;
switch (_that) {
case _MainUser() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'group_user_id')  int? groupUserId, @JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'user')  User? user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MainUser() when $default != null:
return $default(_that.groupUserId,_that.userId,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'group_user_id')  int? groupUserId, @JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'user')  User? user)  $default,) {final _that = this;
switch (_that) {
case _MainUser():
return $default(_that.groupUserId,_that.userId,_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'group_user_id')  int? groupUserId, @JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'user')  User? user)?  $default,) {final _that = this;
switch (_that) {
case _MainUser() when $default != null:
return $default(_that.groupUserId,_that.userId,_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MainUser with DiagnosticableTreeMixin implements MainUser {
  const _MainUser({@JsonKey(name: 'group_user_id') this.groupUserId, @JsonKey(name: 'user_id') this.userId, @JsonKey(name: 'user') this.user});
  factory _MainUser.fromJson(Map<String, dynamic> json) => _$MainUserFromJson(json);

@override@JsonKey(name: 'group_user_id') final  int? groupUserId;
@override@JsonKey(name: 'user_id') final  int? userId;
@override@JsonKey(name: 'user') final  User? user;

/// Create a copy of MainUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MainUserCopyWith<_MainUser> get copyWith => __$MainUserCopyWithImpl<_MainUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MainUserToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MainUser'))
    ..add(DiagnosticsProperty('groupUserId', groupUserId))..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('user', user));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MainUser&&(identical(other.groupUserId, groupUserId) || other.groupUserId == groupUserId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,groupUserId,userId,user);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MainUser(groupUserId: $groupUserId, userId: $userId, user: $user)';
}


}

/// @nodoc
abstract mixin class _$MainUserCopyWith<$Res> implements $MainUserCopyWith<$Res> {
  factory _$MainUserCopyWith(_MainUser value, $Res Function(_MainUser) _then) = __$MainUserCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'group_user_id') int? groupUserId,@JsonKey(name: 'user_id') int? userId,@JsonKey(name: 'user') User? user
});


@override $UserCopyWith<$Res>? get user;

}
/// @nodoc
class __$MainUserCopyWithImpl<$Res>
    implements _$MainUserCopyWith<$Res> {
  __$MainUserCopyWithImpl(this._self, this._then);

  final _MainUser _self;
  final $Res Function(_MainUser) _then;

/// Create a copy of MainUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? groupUserId = freezed,Object? userId = freezed,Object? user = freezed,}) {
  return _then(_MainUser(
groupUserId: freezed == groupUserId ? _self.groupUserId : groupUserId // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,
  ));
}

/// Create a copy of MainUser
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
mixin _$Lessons implements DiagnosticableTreeMixin {

@JsonKey(name: 'lesson_id') int? get lessonId;@JsonKey(name: 'datetime') String? get datetime;@JsonKey(name: 'status') String? get status;@JsonKey(name: 'rescheduled_reason') String? get rescheduledReason;@JsonKey(name: 'lesson_number') int? get lessonNumber;
/// Create a copy of Lessons
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LessonsCopyWith<Lessons> get copyWith => _$LessonsCopyWithImpl<Lessons>(this as Lessons, _$identity);

  /// Serializes this Lessons to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Lessons'))
    ..add(DiagnosticsProperty('lessonId', lessonId))..add(DiagnosticsProperty('datetime', datetime))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('rescheduledReason', rescheduledReason))..add(DiagnosticsProperty('lessonNumber', lessonNumber));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Lessons&&(identical(other.lessonId, lessonId) || other.lessonId == lessonId)&&(identical(other.datetime, datetime) || other.datetime == datetime)&&(identical(other.status, status) || other.status == status)&&(identical(other.rescheduledReason, rescheduledReason) || other.rescheduledReason == rescheduledReason)&&(identical(other.lessonNumber, lessonNumber) || other.lessonNumber == lessonNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lessonId,datetime,status,rescheduledReason,lessonNumber);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Lessons(lessonId: $lessonId, datetime: $datetime, status: $status, rescheduledReason: $rescheduledReason, lessonNumber: $lessonNumber)';
}


}

/// @nodoc
abstract mixin class $LessonsCopyWith<$Res>  {
  factory $LessonsCopyWith(Lessons value, $Res Function(Lessons) _then) = _$LessonsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'lesson_id') int? lessonId,@JsonKey(name: 'datetime') String? datetime,@JsonKey(name: 'status') String? status,@JsonKey(name: 'rescheduled_reason') String? rescheduledReason,@JsonKey(name: 'lesson_number') int? lessonNumber
});




}
/// @nodoc
class _$LessonsCopyWithImpl<$Res>
    implements $LessonsCopyWith<$Res> {
  _$LessonsCopyWithImpl(this._self, this._then);

  final Lessons _self;
  final $Res Function(Lessons) _then;

/// Create a copy of Lessons
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lessonId = freezed,Object? datetime = freezed,Object? status = freezed,Object? rescheduledReason = freezed,Object? lessonNumber = freezed,}) {
  return _then(_self.copyWith(
lessonId: freezed == lessonId ? _self.lessonId : lessonId // ignore: cast_nullable_to_non_nullable
as int?,datetime: freezed == datetime ? _self.datetime : datetime // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,rescheduledReason: freezed == rescheduledReason ? _self.rescheduledReason : rescheduledReason // ignore: cast_nullable_to_non_nullable
as String?,lessonNumber: freezed == lessonNumber ? _self.lessonNumber : lessonNumber // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Lessons].
extension LessonsPatterns on Lessons {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Lessons value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Lessons() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Lessons value)  $default,){
final _that = this;
switch (_that) {
case _Lessons():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Lessons value)?  $default,){
final _that = this;
switch (_that) {
case _Lessons() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'lesson_id')  int? lessonId, @JsonKey(name: 'datetime')  String? datetime, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'rescheduled_reason')  String? rescheduledReason, @JsonKey(name: 'lesson_number')  int? lessonNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Lessons() when $default != null:
return $default(_that.lessonId,_that.datetime,_that.status,_that.rescheduledReason,_that.lessonNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'lesson_id')  int? lessonId, @JsonKey(name: 'datetime')  String? datetime, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'rescheduled_reason')  String? rescheduledReason, @JsonKey(name: 'lesson_number')  int? lessonNumber)  $default,) {final _that = this;
switch (_that) {
case _Lessons():
return $default(_that.lessonId,_that.datetime,_that.status,_that.rescheduledReason,_that.lessonNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'lesson_id')  int? lessonId, @JsonKey(name: 'datetime')  String? datetime, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'rescheduled_reason')  String? rescheduledReason, @JsonKey(name: 'lesson_number')  int? lessonNumber)?  $default,) {final _that = this;
switch (_that) {
case _Lessons() when $default != null:
return $default(_that.lessonId,_that.datetime,_that.status,_that.rescheduledReason,_that.lessonNumber);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Lessons with DiagnosticableTreeMixin implements Lessons {
  const _Lessons({@JsonKey(name: 'lesson_id') this.lessonId, @JsonKey(name: 'datetime') this.datetime, @JsonKey(name: 'status') this.status, @JsonKey(name: 'rescheduled_reason') this.rescheduledReason, @JsonKey(name: 'lesson_number') this.lessonNumber});
  factory _Lessons.fromJson(Map<String, dynamic> json) => _$LessonsFromJson(json);

@override@JsonKey(name: 'lesson_id') final  int? lessonId;
@override@JsonKey(name: 'datetime') final  String? datetime;
@override@JsonKey(name: 'status') final  String? status;
@override@JsonKey(name: 'rescheduled_reason') final  String? rescheduledReason;
@override@JsonKey(name: 'lesson_number') final  int? lessonNumber;

/// Create a copy of Lessons
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LessonsCopyWith<_Lessons> get copyWith => __$LessonsCopyWithImpl<_Lessons>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LessonsToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Lessons'))
    ..add(DiagnosticsProperty('lessonId', lessonId))..add(DiagnosticsProperty('datetime', datetime))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('rescheduledReason', rescheduledReason))..add(DiagnosticsProperty('lessonNumber', lessonNumber));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Lessons&&(identical(other.lessonId, lessonId) || other.lessonId == lessonId)&&(identical(other.datetime, datetime) || other.datetime == datetime)&&(identical(other.status, status) || other.status == status)&&(identical(other.rescheduledReason, rescheduledReason) || other.rescheduledReason == rescheduledReason)&&(identical(other.lessonNumber, lessonNumber) || other.lessonNumber == lessonNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lessonId,datetime,status,rescheduledReason,lessonNumber);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Lessons(lessonId: $lessonId, datetime: $datetime, status: $status, rescheduledReason: $rescheduledReason, lessonNumber: $lessonNumber)';
}


}

/// @nodoc
abstract mixin class _$LessonsCopyWith<$Res> implements $LessonsCopyWith<$Res> {
  factory _$LessonsCopyWith(_Lessons value, $Res Function(_Lessons) _then) = __$LessonsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'lesson_id') int? lessonId,@JsonKey(name: 'datetime') String? datetime,@JsonKey(name: 'status') String? status,@JsonKey(name: 'rescheduled_reason') String? rescheduledReason,@JsonKey(name: 'lesson_number') int? lessonNumber
});




}
/// @nodoc
class __$LessonsCopyWithImpl<$Res>
    implements _$LessonsCopyWith<$Res> {
  __$LessonsCopyWithImpl(this._self, this._then);

  final _Lessons _self;
  final $Res Function(_Lessons) _then;

/// Create a copy of Lessons
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lessonId = freezed,Object? datetime = freezed,Object? status = freezed,Object? rescheduledReason = freezed,Object? lessonNumber = freezed,}) {
  return _then(_Lessons(
lessonId: freezed == lessonId ? _self.lessonId : lessonId // ignore: cast_nullable_to_non_nullable
as int?,datetime: freezed == datetime ? _self.datetime : datetime // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,rescheduledReason: freezed == rescheduledReason ? _self.rescheduledReason : rescheduledReason // ignore: cast_nullable_to_non_nullable
as String?,lessonNumber: freezed == lessonNumber ? _self.lessonNumber : lessonNumber // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$Schedules implements DiagnosticableTreeMixin {

@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'created_by') UserIdDefault? get createdBy;@JsonKey(name: 'updated_by') UserIdDefault? get updatedBy;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'day') int? get day;@JsonKey(name: 'time') String? get time;@JsonKey(name: 'cabinet') Cabinet? get cabinet;
/// Create a copy of Schedules
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SchedulesCopyWith<Schedules> get copyWith => _$SchedulesCopyWithImpl<Schedules>(this as Schedules, _$identity);

  /// Serializes this Schedules to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Schedules'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdBy', createdBy))..add(DiagnosticsProperty('updatedBy', updatedBy))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('day', day))..add(DiagnosticsProperty('time', time))..add(DiagnosticsProperty('cabinet', cabinet));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Schedules&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.id, id) || other.id == id)&&(identical(other.day, day) || other.day == day)&&(identical(other.time, time) || other.time == time)&&(identical(other.cabinet, cabinet) || other.cabinet == cabinet));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdBy,updatedBy,id,day,time,cabinet);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Schedules(createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, updatedBy: $updatedBy, id: $id, day: $day, time: $time, cabinet: $cabinet)';
}


}

/// @nodoc
abstract mixin class $SchedulesCopyWith<$Res>  {
  factory $SchedulesCopyWith(Schedules value, $Res Function(Schedules) _then) = _$SchedulesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by') UserIdDefault? createdBy,@JsonKey(name: 'updated_by') UserIdDefault? updatedBy,@JsonKey(name: 'id') int? id,@JsonKey(name: 'day') int? day,@JsonKey(name: 'time') String? time,@JsonKey(name: 'cabinet') Cabinet? cabinet
});


$UserIdDefaultCopyWith<$Res>? get createdBy;$UserIdDefaultCopyWith<$Res>? get updatedBy;$CabinetCopyWith<$Res>? get cabinet;

}
/// @nodoc
class _$SchedulesCopyWithImpl<$Res>
    implements $SchedulesCopyWith<$Res> {
  _$SchedulesCopyWithImpl(this._self, this._then);

  final Schedules _self;
  final $Res Function(Schedules) _then;

/// Create a copy of Schedules
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? updatedBy = freezed,Object? id = freezed,Object? day = freezed,Object? time = freezed,Object? cabinet = freezed,}) {
  return _then(_self.copyWith(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,day: freezed == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as int?,time: freezed == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String?,cabinet: freezed == cabinet ? _self.cabinet : cabinet // ignore: cast_nullable_to_non_nullable
as Cabinet?,
  ));
}
/// Create a copy of Schedules
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
}/// Create a copy of Schedules
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
}/// Create a copy of Schedules
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


/// Adds pattern-matching-related methods to [Schedules].
extension SchedulesPatterns on Schedules {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Schedules value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Schedules() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Schedules value)  $default,){
final _that = this;
switch (_that) {
case _Schedules():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Schedules value)?  $default,){
final _that = this;
switch (_that) {
case _Schedules() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'day')  int? day, @JsonKey(name: 'time')  String? time, @JsonKey(name: 'cabinet')  Cabinet? cabinet)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Schedules() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.id,_that.day,_that.time,_that.cabinet);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'day')  int? day, @JsonKey(name: 'time')  String? time, @JsonKey(name: 'cabinet')  Cabinet? cabinet)  $default,) {final _that = this;
switch (_that) {
case _Schedules():
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.id,_that.day,_that.time,_that.cabinet);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'day')  int? day, @JsonKey(name: 'time')  String? time, @JsonKey(name: 'cabinet')  Cabinet? cabinet)?  $default,) {final _that = this;
switch (_that) {
case _Schedules() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.id,_that.day,_that.time,_that.cabinet);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Schedules with DiagnosticableTreeMixin implements Schedules {
  const _Schedules({@JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'created_by') this.createdBy, @JsonKey(name: 'updated_by') this.updatedBy, @JsonKey(name: 'id') this.id, @JsonKey(name: 'day') this.day, @JsonKey(name: 'time') this.time, @JsonKey(name: 'cabinet') this.cabinet});
  factory _Schedules.fromJson(Map<String, dynamic> json) => _$SchedulesFromJson(json);

@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'created_by') final  UserIdDefault? createdBy;
@override@JsonKey(name: 'updated_by') final  UserIdDefault? updatedBy;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'day') final  int? day;
@override@JsonKey(name: 'time') final  String? time;
@override@JsonKey(name: 'cabinet') final  Cabinet? cabinet;

/// Create a copy of Schedules
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SchedulesCopyWith<_Schedules> get copyWith => __$SchedulesCopyWithImpl<_Schedules>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SchedulesToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Schedules'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdBy', createdBy))..add(DiagnosticsProperty('updatedBy', updatedBy))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('day', day))..add(DiagnosticsProperty('time', time))..add(DiagnosticsProperty('cabinet', cabinet));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Schedules&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.id, id) || other.id == id)&&(identical(other.day, day) || other.day == day)&&(identical(other.time, time) || other.time == time)&&(identical(other.cabinet, cabinet) || other.cabinet == cabinet));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdBy,updatedBy,id,day,time,cabinet);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Schedules(createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, updatedBy: $updatedBy, id: $id, day: $day, time: $time, cabinet: $cabinet)';
}


}

/// @nodoc
abstract mixin class _$SchedulesCopyWith<$Res> implements $SchedulesCopyWith<$Res> {
  factory _$SchedulesCopyWith(_Schedules value, $Res Function(_Schedules) _then) = __$SchedulesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by') UserIdDefault? createdBy,@JsonKey(name: 'updated_by') UserIdDefault? updatedBy,@JsonKey(name: 'id') int? id,@JsonKey(name: 'day') int? day,@JsonKey(name: 'time') String? time,@JsonKey(name: 'cabinet') Cabinet? cabinet
});


@override $UserIdDefaultCopyWith<$Res>? get createdBy;@override $UserIdDefaultCopyWith<$Res>? get updatedBy;@override $CabinetCopyWith<$Res>? get cabinet;

}
/// @nodoc
class __$SchedulesCopyWithImpl<$Res>
    implements _$SchedulesCopyWith<$Res> {
  __$SchedulesCopyWithImpl(this._self, this._then);

  final _Schedules _self;
  final $Res Function(_Schedules) _then;

/// Create a copy of Schedules
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? updatedBy = freezed,Object? id = freezed,Object? day = freezed,Object? time = freezed,Object? cabinet = freezed,}) {
  return _then(_Schedules(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,day: freezed == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as int?,time: freezed == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String?,cabinet: freezed == cabinet ? _self.cabinet : cabinet // ignore: cast_nullable_to_non_nullable
as Cabinet?,
  ));
}

/// Create a copy of Schedules
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
}/// Create a copy of Schedules
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
}/// Create a copy of Schedules
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
mixin _$Discount implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'uuid') String? get uuid;@JsonKey(name: 'is_group') bool? get isGroup;@JsonKey(name: 'discount_percent') String? get discountPercent;@JsonKey(name: 'type') String? get type;@JsonKey(name: 'amount') String? get amount;@JsonKey(name: 'format') String? get format;@JsonKey(name: 'description') String? get description;@JsonKey(name: 'combine') Combine? get combine;
/// Create a copy of Discount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DiscountCopyWith<Discount> get copyWith => _$DiscountCopyWithImpl<Discount>(this as Discount, _$identity);

  /// Serializes this Discount to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Discount'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('uuid', uuid))..add(DiagnosticsProperty('isGroup', isGroup))..add(DiagnosticsProperty('discountPercent', discountPercent))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('amount', amount))..add(DiagnosticsProperty('format', format))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('combine', combine));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Discount&&(identical(other.id, id) || other.id == id)&&(identical(other.uuid, uuid) || other.uuid == uuid)&&(identical(other.isGroup, isGroup) || other.isGroup == isGroup)&&(identical(other.discountPercent, discountPercent) || other.discountPercent == discountPercent)&&(identical(other.type, type) || other.type == type)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.format, format) || other.format == format)&&(identical(other.description, description) || other.description == description)&&(identical(other.combine, combine) || other.combine == combine));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,uuid,isGroup,discountPercent,type,amount,format,description,combine);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Discount(id: $id, uuid: $uuid, isGroup: $isGroup, discountPercent: $discountPercent, type: $type, amount: $amount, format: $format, description: $description, combine: $combine)';
}


}

/// @nodoc
abstract mixin class $DiscountCopyWith<$Res>  {
  factory $DiscountCopyWith(Discount value, $Res Function(Discount) _then) = _$DiscountCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'uuid') String? uuid,@JsonKey(name: 'is_group') bool? isGroup,@JsonKey(name: 'discount_percent') String? discountPercent,@JsonKey(name: 'type') String? type,@JsonKey(name: 'amount') String? amount,@JsonKey(name: 'format') String? format,@JsonKey(name: 'description') String? description,@JsonKey(name: 'combine') Combine? combine
});


$CombineCopyWith<$Res>? get combine;

}
/// @nodoc
class _$DiscountCopyWithImpl<$Res>
    implements $DiscountCopyWith<$Res> {
  _$DiscountCopyWithImpl(this._self, this._then);

  final Discount _self;
  final $Res Function(Discount) _then;

/// Create a copy of Discount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? uuid = freezed,Object? isGroup = freezed,Object? discountPercent = freezed,Object? type = freezed,Object? amount = freezed,Object? format = freezed,Object? description = freezed,Object? combine = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,uuid: freezed == uuid ? _self.uuid : uuid // ignore: cast_nullable_to_non_nullable
as String?,isGroup: freezed == isGroup ? _self.isGroup : isGroup // ignore: cast_nullable_to_non_nullable
as bool?,discountPercent: freezed == discountPercent ? _self.discountPercent : discountPercent // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,format: freezed == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,combine: freezed == combine ? _self.combine : combine // ignore: cast_nullable_to_non_nullable
as Combine?,
  ));
}
/// Create a copy of Discount
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CombineCopyWith<$Res>? get combine {
    if (_self.combine == null) {
    return null;
  }

  return $CombineCopyWith<$Res>(_self.combine!, (value) {
    return _then(_self.copyWith(combine: value));
  });
}
}


/// Adds pattern-matching-related methods to [Discount].
extension DiscountPatterns on Discount {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Discount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Discount() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Discount value)  $default,){
final _that = this;
switch (_that) {
case _Discount():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Discount value)?  $default,){
final _that = this;
switch (_that) {
case _Discount() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'uuid')  String? uuid, @JsonKey(name: 'is_group')  bool? isGroup, @JsonKey(name: 'discount_percent')  String? discountPercent, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'amount')  String? amount, @JsonKey(name: 'format')  String? format, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'combine')  Combine? combine)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Discount() when $default != null:
return $default(_that.id,_that.uuid,_that.isGroup,_that.discountPercent,_that.type,_that.amount,_that.format,_that.description,_that.combine);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'uuid')  String? uuid, @JsonKey(name: 'is_group')  bool? isGroup, @JsonKey(name: 'discount_percent')  String? discountPercent, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'amount')  String? amount, @JsonKey(name: 'format')  String? format, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'combine')  Combine? combine)  $default,) {final _that = this;
switch (_that) {
case _Discount():
return $default(_that.id,_that.uuid,_that.isGroup,_that.discountPercent,_that.type,_that.amount,_that.format,_that.description,_that.combine);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'uuid')  String? uuid, @JsonKey(name: 'is_group')  bool? isGroup, @JsonKey(name: 'discount_percent')  String? discountPercent, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'amount')  String? amount, @JsonKey(name: 'format')  String? format, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'combine')  Combine? combine)?  $default,) {final _that = this;
switch (_that) {
case _Discount() when $default != null:
return $default(_that.id,_that.uuid,_that.isGroup,_that.discountPercent,_that.type,_that.amount,_that.format,_that.description,_that.combine);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Discount with DiagnosticableTreeMixin implements Discount {
  const _Discount({@JsonKey(name: 'id') this.id, @JsonKey(name: 'uuid') this.uuid, @JsonKey(name: 'is_group') this.isGroup, @JsonKey(name: 'discount_percent') this.discountPercent, @JsonKey(name: 'type') this.type, @JsonKey(name: 'amount') this.amount, @JsonKey(name: 'format') this.format, @JsonKey(name: 'description') this.description, @JsonKey(name: 'combine') this.combine});
  factory _Discount.fromJson(Map<String, dynamic> json) => _$DiscountFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'uuid') final  String? uuid;
@override@JsonKey(name: 'is_group') final  bool? isGroup;
@override@JsonKey(name: 'discount_percent') final  String? discountPercent;
@override@JsonKey(name: 'type') final  String? type;
@override@JsonKey(name: 'amount') final  String? amount;
@override@JsonKey(name: 'format') final  String? format;
@override@JsonKey(name: 'description') final  String? description;
@override@JsonKey(name: 'combine') final  Combine? combine;

/// Create a copy of Discount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DiscountCopyWith<_Discount> get copyWith => __$DiscountCopyWithImpl<_Discount>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DiscountToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Discount'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('uuid', uuid))..add(DiagnosticsProperty('isGroup', isGroup))..add(DiagnosticsProperty('discountPercent', discountPercent))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('amount', amount))..add(DiagnosticsProperty('format', format))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('combine', combine));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Discount&&(identical(other.id, id) || other.id == id)&&(identical(other.uuid, uuid) || other.uuid == uuid)&&(identical(other.isGroup, isGroup) || other.isGroup == isGroup)&&(identical(other.discountPercent, discountPercent) || other.discountPercent == discountPercent)&&(identical(other.type, type) || other.type == type)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.format, format) || other.format == format)&&(identical(other.description, description) || other.description == description)&&(identical(other.combine, combine) || other.combine == combine));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,uuid,isGroup,discountPercent,type,amount,format,description,combine);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Discount(id: $id, uuid: $uuid, isGroup: $isGroup, discountPercent: $discountPercent, type: $type, amount: $amount, format: $format, description: $description, combine: $combine)';
}


}

/// @nodoc
abstract mixin class _$DiscountCopyWith<$Res> implements $DiscountCopyWith<$Res> {
  factory _$DiscountCopyWith(_Discount value, $Res Function(_Discount) _then) = __$DiscountCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'uuid') String? uuid,@JsonKey(name: 'is_group') bool? isGroup,@JsonKey(name: 'discount_percent') String? discountPercent,@JsonKey(name: 'type') String? type,@JsonKey(name: 'amount') String? amount,@JsonKey(name: 'format') String? format,@JsonKey(name: 'description') String? description,@JsonKey(name: 'combine') Combine? combine
});


@override $CombineCopyWith<$Res>? get combine;

}
/// @nodoc
class __$DiscountCopyWithImpl<$Res>
    implements _$DiscountCopyWith<$Res> {
  __$DiscountCopyWithImpl(this._self, this._then);

  final _Discount _self;
  final $Res Function(_Discount) _then;

/// Create a copy of Discount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? uuid = freezed,Object? isGroup = freezed,Object? discountPercent = freezed,Object? type = freezed,Object? amount = freezed,Object? format = freezed,Object? description = freezed,Object? combine = freezed,}) {
  return _then(_Discount(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,uuid: freezed == uuid ? _self.uuid : uuid // ignore: cast_nullable_to_non_nullable
as String?,isGroup: freezed == isGroup ? _self.isGroup : isGroup // ignore: cast_nullable_to_non_nullable
as bool?,discountPercent: freezed == discountPercent ? _self.discountPercent : discountPercent // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,format: freezed == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,combine: freezed == combine ? _self.combine : combine // ignore: cast_nullable_to_non_nullable
as Combine?,
  ));
}

/// Create a copy of Discount
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CombineCopyWith<$Res>? get combine {
    if (_self.combine == null) {
    return null;
  }

  return $CombineCopyWith<$Res>(_self.combine!, (value) {
    return _then(_self.copyWith(combine: value));
  });
}
}


/// @nodoc
mixin _$Combine implements DiagnosticableTreeMixin {

@JsonKey(name: 'additionalProp1') String? get additionalProp1;@JsonKey(name: 'additionalProp2') String? get additionalProp2;@JsonKey(name: 'additionalProp3') String? get additionalProp3;
/// Create a copy of Combine
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CombineCopyWith<Combine> get copyWith => _$CombineCopyWithImpl<Combine>(this as Combine, _$identity);

  /// Serializes this Combine to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Combine'))
    ..add(DiagnosticsProperty('additionalProp1', additionalProp1))..add(DiagnosticsProperty('additionalProp2', additionalProp2))..add(DiagnosticsProperty('additionalProp3', additionalProp3));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Combine&&(identical(other.additionalProp1, additionalProp1) || other.additionalProp1 == additionalProp1)&&(identical(other.additionalProp2, additionalProp2) || other.additionalProp2 == additionalProp2)&&(identical(other.additionalProp3, additionalProp3) || other.additionalProp3 == additionalProp3));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,additionalProp1,additionalProp2,additionalProp3);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Combine(additionalProp1: $additionalProp1, additionalProp2: $additionalProp2, additionalProp3: $additionalProp3)';
}


}

/// @nodoc
abstract mixin class $CombineCopyWith<$Res>  {
  factory $CombineCopyWith(Combine value, $Res Function(Combine) _then) = _$CombineCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'additionalProp1') String? additionalProp1,@JsonKey(name: 'additionalProp2') String? additionalProp2,@JsonKey(name: 'additionalProp3') String? additionalProp3
});




}
/// @nodoc
class _$CombineCopyWithImpl<$Res>
    implements $CombineCopyWith<$Res> {
  _$CombineCopyWithImpl(this._self, this._then);

  final Combine _self;
  final $Res Function(Combine) _then;

/// Create a copy of Combine
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? additionalProp1 = freezed,Object? additionalProp2 = freezed,Object? additionalProp3 = freezed,}) {
  return _then(_self.copyWith(
additionalProp1: freezed == additionalProp1 ? _self.additionalProp1 : additionalProp1 // ignore: cast_nullable_to_non_nullable
as String?,additionalProp2: freezed == additionalProp2 ? _self.additionalProp2 : additionalProp2 // ignore: cast_nullable_to_non_nullable
as String?,additionalProp3: freezed == additionalProp3 ? _self.additionalProp3 : additionalProp3 // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Combine].
extension CombinePatterns on Combine {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Combine value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Combine() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Combine value)  $default,){
final _that = this;
switch (_that) {
case _Combine():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Combine value)?  $default,){
final _that = this;
switch (_that) {
case _Combine() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'additionalProp1')  String? additionalProp1, @JsonKey(name: 'additionalProp2')  String? additionalProp2, @JsonKey(name: 'additionalProp3')  String? additionalProp3)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Combine() when $default != null:
return $default(_that.additionalProp1,_that.additionalProp2,_that.additionalProp3);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'additionalProp1')  String? additionalProp1, @JsonKey(name: 'additionalProp2')  String? additionalProp2, @JsonKey(name: 'additionalProp3')  String? additionalProp3)  $default,) {final _that = this;
switch (_that) {
case _Combine():
return $default(_that.additionalProp1,_that.additionalProp2,_that.additionalProp3);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'additionalProp1')  String? additionalProp1, @JsonKey(name: 'additionalProp2')  String? additionalProp2, @JsonKey(name: 'additionalProp3')  String? additionalProp3)?  $default,) {final _that = this;
switch (_that) {
case _Combine() when $default != null:
return $default(_that.additionalProp1,_that.additionalProp2,_that.additionalProp3);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Combine with DiagnosticableTreeMixin implements Combine {
  const _Combine({@JsonKey(name: 'additionalProp1') this.additionalProp1, @JsonKey(name: 'additionalProp2') this.additionalProp2, @JsonKey(name: 'additionalProp3') this.additionalProp3});
  factory _Combine.fromJson(Map<String, dynamic> json) => _$CombineFromJson(json);

@override@JsonKey(name: 'additionalProp1') final  String? additionalProp1;
@override@JsonKey(name: 'additionalProp2') final  String? additionalProp2;
@override@JsonKey(name: 'additionalProp3') final  String? additionalProp3;

/// Create a copy of Combine
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CombineCopyWith<_Combine> get copyWith => __$CombineCopyWithImpl<_Combine>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CombineToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Combine'))
    ..add(DiagnosticsProperty('additionalProp1', additionalProp1))..add(DiagnosticsProperty('additionalProp2', additionalProp2))..add(DiagnosticsProperty('additionalProp3', additionalProp3));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Combine&&(identical(other.additionalProp1, additionalProp1) || other.additionalProp1 == additionalProp1)&&(identical(other.additionalProp2, additionalProp2) || other.additionalProp2 == additionalProp2)&&(identical(other.additionalProp3, additionalProp3) || other.additionalProp3 == additionalProp3));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,additionalProp1,additionalProp2,additionalProp3);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Combine(additionalProp1: $additionalProp1, additionalProp2: $additionalProp2, additionalProp3: $additionalProp3)';
}


}

/// @nodoc
abstract mixin class _$CombineCopyWith<$Res> implements $CombineCopyWith<$Res> {
  factory _$CombineCopyWith(_Combine value, $Res Function(_Combine) _then) = __$CombineCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'additionalProp1') String? additionalProp1,@JsonKey(name: 'additionalProp2') String? additionalProp2,@JsonKey(name: 'additionalProp3') String? additionalProp3
});




}
/// @nodoc
class __$CombineCopyWithImpl<$Res>
    implements _$CombineCopyWith<$Res> {
  __$CombineCopyWithImpl(this._self, this._then);

  final _Combine _self;
  final $Res Function(_Combine) _then;

/// Create a copy of Combine
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? additionalProp1 = freezed,Object? additionalProp2 = freezed,Object? additionalProp3 = freezed,}) {
  return _then(_Combine(
additionalProp1: freezed == additionalProp1 ? _self.additionalProp1 : additionalProp1 // ignore: cast_nullable_to_non_nullable
as String?,additionalProp2: freezed == additionalProp2 ? _self.additionalProp2 : additionalProp2 // ignore: cast_nullable_to_non_nullable
as String?,additionalProp3: freezed == additionalProp3 ? _self.additionalProp3 : additionalProp3 // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$OnlineDiscount implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'uuid') String? get uuid;@JsonKey(name: 'is_group') bool? get isGroup;@JsonKey(name: 'discount_percent') String? get discountPercent;@JsonKey(name: 'type') String? get type;@JsonKey(name: 'amount') String? get amount;@JsonKey(name: 'format') String? get format;@JsonKey(name: 'description') String? get description;@JsonKey(name: 'combine') Combine? get combine;
/// Create a copy of OnlineDiscount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnlineDiscountCopyWith<OnlineDiscount> get copyWith => _$OnlineDiscountCopyWithImpl<OnlineDiscount>(this as OnlineDiscount, _$identity);

  /// Serializes this OnlineDiscount to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OnlineDiscount'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('uuid', uuid))..add(DiagnosticsProperty('isGroup', isGroup))..add(DiagnosticsProperty('discountPercent', discountPercent))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('amount', amount))..add(DiagnosticsProperty('format', format))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('combine', combine));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnlineDiscount&&(identical(other.id, id) || other.id == id)&&(identical(other.uuid, uuid) || other.uuid == uuid)&&(identical(other.isGroup, isGroup) || other.isGroup == isGroup)&&(identical(other.discountPercent, discountPercent) || other.discountPercent == discountPercent)&&(identical(other.type, type) || other.type == type)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.format, format) || other.format == format)&&(identical(other.description, description) || other.description == description)&&(identical(other.combine, combine) || other.combine == combine));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,uuid,isGroup,discountPercent,type,amount,format,description,combine);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OnlineDiscount(id: $id, uuid: $uuid, isGroup: $isGroup, discountPercent: $discountPercent, type: $type, amount: $amount, format: $format, description: $description, combine: $combine)';
}


}

/// @nodoc
abstract mixin class $OnlineDiscountCopyWith<$Res>  {
  factory $OnlineDiscountCopyWith(OnlineDiscount value, $Res Function(OnlineDiscount) _then) = _$OnlineDiscountCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'uuid') String? uuid,@JsonKey(name: 'is_group') bool? isGroup,@JsonKey(name: 'discount_percent') String? discountPercent,@JsonKey(name: 'type') String? type,@JsonKey(name: 'amount') String? amount,@JsonKey(name: 'format') String? format,@JsonKey(name: 'description') String? description,@JsonKey(name: 'combine') Combine? combine
});


$CombineCopyWith<$Res>? get combine;

}
/// @nodoc
class _$OnlineDiscountCopyWithImpl<$Res>
    implements $OnlineDiscountCopyWith<$Res> {
  _$OnlineDiscountCopyWithImpl(this._self, this._then);

  final OnlineDiscount _self;
  final $Res Function(OnlineDiscount) _then;

/// Create a copy of OnlineDiscount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? uuid = freezed,Object? isGroup = freezed,Object? discountPercent = freezed,Object? type = freezed,Object? amount = freezed,Object? format = freezed,Object? description = freezed,Object? combine = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,uuid: freezed == uuid ? _self.uuid : uuid // ignore: cast_nullable_to_non_nullable
as String?,isGroup: freezed == isGroup ? _self.isGroup : isGroup // ignore: cast_nullable_to_non_nullable
as bool?,discountPercent: freezed == discountPercent ? _self.discountPercent : discountPercent // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,format: freezed == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,combine: freezed == combine ? _self.combine : combine // ignore: cast_nullable_to_non_nullable
as Combine?,
  ));
}
/// Create a copy of OnlineDiscount
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CombineCopyWith<$Res>? get combine {
    if (_self.combine == null) {
    return null;
  }

  return $CombineCopyWith<$Res>(_self.combine!, (value) {
    return _then(_self.copyWith(combine: value));
  });
}
}


/// Adds pattern-matching-related methods to [OnlineDiscount].
extension OnlineDiscountPatterns on OnlineDiscount {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OnlineDiscount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OnlineDiscount() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OnlineDiscount value)  $default,){
final _that = this;
switch (_that) {
case _OnlineDiscount():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OnlineDiscount value)?  $default,){
final _that = this;
switch (_that) {
case _OnlineDiscount() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'uuid')  String? uuid, @JsonKey(name: 'is_group')  bool? isGroup, @JsonKey(name: 'discount_percent')  String? discountPercent, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'amount')  String? amount, @JsonKey(name: 'format')  String? format, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'combine')  Combine? combine)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OnlineDiscount() when $default != null:
return $default(_that.id,_that.uuid,_that.isGroup,_that.discountPercent,_that.type,_that.amount,_that.format,_that.description,_that.combine);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'uuid')  String? uuid, @JsonKey(name: 'is_group')  bool? isGroup, @JsonKey(name: 'discount_percent')  String? discountPercent, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'amount')  String? amount, @JsonKey(name: 'format')  String? format, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'combine')  Combine? combine)  $default,) {final _that = this;
switch (_that) {
case _OnlineDiscount():
return $default(_that.id,_that.uuid,_that.isGroup,_that.discountPercent,_that.type,_that.amount,_that.format,_that.description,_that.combine);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'uuid')  String? uuid, @JsonKey(name: 'is_group')  bool? isGroup, @JsonKey(name: 'discount_percent')  String? discountPercent, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'amount')  String? amount, @JsonKey(name: 'format')  String? format, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'combine')  Combine? combine)?  $default,) {final _that = this;
switch (_that) {
case _OnlineDiscount() when $default != null:
return $default(_that.id,_that.uuid,_that.isGroup,_that.discountPercent,_that.type,_that.amount,_that.format,_that.description,_that.combine);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OnlineDiscount with DiagnosticableTreeMixin implements OnlineDiscount {
  const _OnlineDiscount({@JsonKey(name: 'id') this.id, @JsonKey(name: 'uuid') this.uuid, @JsonKey(name: 'is_group') this.isGroup, @JsonKey(name: 'discount_percent') this.discountPercent, @JsonKey(name: 'type') this.type, @JsonKey(name: 'amount') this.amount, @JsonKey(name: 'format') this.format, @JsonKey(name: 'description') this.description, @JsonKey(name: 'combine') this.combine});
  factory _OnlineDiscount.fromJson(Map<String, dynamic> json) => _$OnlineDiscountFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'uuid') final  String? uuid;
@override@JsonKey(name: 'is_group') final  bool? isGroup;
@override@JsonKey(name: 'discount_percent') final  String? discountPercent;
@override@JsonKey(name: 'type') final  String? type;
@override@JsonKey(name: 'amount') final  String? amount;
@override@JsonKey(name: 'format') final  String? format;
@override@JsonKey(name: 'description') final  String? description;
@override@JsonKey(name: 'combine') final  Combine? combine;

/// Create a copy of OnlineDiscount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnlineDiscountCopyWith<_OnlineDiscount> get copyWith => __$OnlineDiscountCopyWithImpl<_OnlineDiscount>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OnlineDiscountToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OnlineDiscount'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('uuid', uuid))..add(DiagnosticsProperty('isGroup', isGroup))..add(DiagnosticsProperty('discountPercent', discountPercent))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('amount', amount))..add(DiagnosticsProperty('format', format))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('combine', combine));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnlineDiscount&&(identical(other.id, id) || other.id == id)&&(identical(other.uuid, uuid) || other.uuid == uuid)&&(identical(other.isGroup, isGroup) || other.isGroup == isGroup)&&(identical(other.discountPercent, discountPercent) || other.discountPercent == discountPercent)&&(identical(other.type, type) || other.type == type)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.format, format) || other.format == format)&&(identical(other.description, description) || other.description == description)&&(identical(other.combine, combine) || other.combine == combine));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,uuid,isGroup,discountPercent,type,amount,format,description,combine);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OnlineDiscount(id: $id, uuid: $uuid, isGroup: $isGroup, discountPercent: $discountPercent, type: $type, amount: $amount, format: $format, description: $description, combine: $combine)';
}


}

/// @nodoc
abstract mixin class _$OnlineDiscountCopyWith<$Res> implements $OnlineDiscountCopyWith<$Res> {
  factory _$OnlineDiscountCopyWith(_OnlineDiscount value, $Res Function(_OnlineDiscount) _then) = __$OnlineDiscountCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'uuid') String? uuid,@JsonKey(name: 'is_group') bool? isGroup,@JsonKey(name: 'discount_percent') String? discountPercent,@JsonKey(name: 'type') String? type,@JsonKey(name: 'amount') String? amount,@JsonKey(name: 'format') String? format,@JsonKey(name: 'description') String? description,@JsonKey(name: 'combine') Combine? combine
});


@override $CombineCopyWith<$Res>? get combine;

}
/// @nodoc
class __$OnlineDiscountCopyWithImpl<$Res>
    implements _$OnlineDiscountCopyWith<$Res> {
  __$OnlineDiscountCopyWithImpl(this._self, this._then);

  final _OnlineDiscount _self;
  final $Res Function(_OnlineDiscount) _then;

/// Create a copy of OnlineDiscount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? uuid = freezed,Object? isGroup = freezed,Object? discountPercent = freezed,Object? type = freezed,Object? amount = freezed,Object? format = freezed,Object? description = freezed,Object? combine = freezed,}) {
  return _then(_OnlineDiscount(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,uuid: freezed == uuid ? _self.uuid : uuid // ignore: cast_nullable_to_non_nullable
as String?,isGroup: freezed == isGroup ? _self.isGroup : isGroup // ignore: cast_nullable_to_non_nullable
as bool?,discountPercent: freezed == discountPercent ? _self.discountPercent : discountPercent // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,format: freezed == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,combine: freezed == combine ? _self.combine : combine // ignore: cast_nullable_to_non_nullable
as Combine?,
  ));
}

/// Create a copy of OnlineDiscount
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CombineCopyWith<$Res>? get combine {
    if (_self.combine == null) {
    return null;
  }

  return $CombineCopyWith<$Res>(_self.combine!, (value) {
    return _then(_self.copyWith(combine: value));
  });
}
}


/// @nodoc
mixin _$CourseVersion implements DiagnosticableTreeMixin {

@JsonKey(name: 'version_id') int? get versionId;@JsonKey(name: 'version') int? get version;@JsonKey(name: 'version_number') int? get versionNumber;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'lesson_count') int? get lessonCount;@JsonKey(name: 'lesson_duration') int? get lessonDuration;@JsonKey(name: 'block_count') int? get blockCount;@JsonKey(name: 'block_lesson_count') int? get blockLessonCount;
/// Create a copy of CourseVersion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseVersionCopyWith<CourseVersion> get copyWith => _$CourseVersionCopyWithImpl<CourseVersion>(this as CourseVersion, _$identity);

  /// Serializes this CourseVersion to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CourseVersion'))
    ..add(DiagnosticsProperty('versionId', versionId))..add(DiagnosticsProperty('version', version))..add(DiagnosticsProperty('versionNumber', versionNumber))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('lessonCount', lessonCount))..add(DiagnosticsProperty('lessonDuration', lessonDuration))..add(DiagnosticsProperty('blockCount', blockCount))..add(DiagnosticsProperty('blockLessonCount', blockLessonCount));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseVersion&&(identical(other.versionId, versionId) || other.versionId == versionId)&&(identical(other.version, version) || other.version == version)&&(identical(other.versionNumber, versionNumber) || other.versionNumber == versionNumber)&&(identical(other.name, name) || other.name == name)&&(identical(other.lessonCount, lessonCount) || other.lessonCount == lessonCount)&&(identical(other.lessonDuration, lessonDuration) || other.lessonDuration == lessonDuration)&&(identical(other.blockCount, blockCount) || other.blockCount == blockCount)&&(identical(other.blockLessonCount, blockLessonCount) || other.blockLessonCount == blockLessonCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,versionId,version,versionNumber,name,lessonCount,lessonDuration,blockCount,blockLessonCount);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CourseVersion(versionId: $versionId, version: $version, versionNumber: $versionNumber, name: $name, lessonCount: $lessonCount, lessonDuration: $lessonDuration, blockCount: $blockCount, blockLessonCount: $blockLessonCount)';
}


}

/// @nodoc
abstract mixin class $CourseVersionCopyWith<$Res>  {
  factory $CourseVersionCopyWith(CourseVersion value, $Res Function(CourseVersion) _then) = _$CourseVersionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'version_id') int? versionId,@JsonKey(name: 'version') int? version,@JsonKey(name: 'version_number') int? versionNumber,@JsonKey(name: 'name') String? name,@JsonKey(name: 'lesson_count') int? lessonCount,@JsonKey(name: 'lesson_duration') int? lessonDuration,@JsonKey(name: 'block_count') int? blockCount,@JsonKey(name: 'block_lesson_count') int? blockLessonCount
});




}
/// @nodoc
class _$CourseVersionCopyWithImpl<$Res>
    implements $CourseVersionCopyWith<$Res> {
  _$CourseVersionCopyWithImpl(this._self, this._then);

  final CourseVersion _self;
  final $Res Function(CourseVersion) _then;

/// Create a copy of CourseVersion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? versionId = freezed,Object? version = freezed,Object? versionNumber = freezed,Object? name = freezed,Object? lessonCount = freezed,Object? lessonDuration = freezed,Object? blockCount = freezed,Object? blockLessonCount = freezed,}) {
  return _then(_self.copyWith(
versionId: freezed == versionId ? _self.versionId : versionId // ignore: cast_nullable_to_non_nullable
as int?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,versionNumber: freezed == versionNumber ? _self.versionNumber : versionNumber // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,lessonCount: freezed == lessonCount ? _self.lessonCount : lessonCount // ignore: cast_nullable_to_non_nullable
as int?,lessonDuration: freezed == lessonDuration ? _self.lessonDuration : lessonDuration // ignore: cast_nullable_to_non_nullable
as int?,blockCount: freezed == blockCount ? _self.blockCount : blockCount // ignore: cast_nullable_to_non_nullable
as int?,blockLessonCount: freezed == blockLessonCount ? _self.blockLessonCount : blockLessonCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [CourseVersion].
extension CourseVersionPatterns on CourseVersion {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CourseVersion value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CourseVersion() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CourseVersion value)  $default,){
final _that = this;
switch (_that) {
case _CourseVersion():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CourseVersion value)?  $default,){
final _that = this;
switch (_that) {
case _CourseVersion() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'version_id')  int? versionId, @JsonKey(name: 'version')  int? version, @JsonKey(name: 'version_number')  int? versionNumber, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'lesson_count')  int? lessonCount, @JsonKey(name: 'lesson_duration')  int? lessonDuration, @JsonKey(name: 'block_count')  int? blockCount, @JsonKey(name: 'block_lesson_count')  int? blockLessonCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CourseVersion() when $default != null:
return $default(_that.versionId,_that.version,_that.versionNumber,_that.name,_that.lessonCount,_that.lessonDuration,_that.blockCount,_that.blockLessonCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'version_id')  int? versionId, @JsonKey(name: 'version')  int? version, @JsonKey(name: 'version_number')  int? versionNumber, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'lesson_count')  int? lessonCount, @JsonKey(name: 'lesson_duration')  int? lessonDuration, @JsonKey(name: 'block_count')  int? blockCount, @JsonKey(name: 'block_lesson_count')  int? blockLessonCount)  $default,) {final _that = this;
switch (_that) {
case _CourseVersion():
return $default(_that.versionId,_that.version,_that.versionNumber,_that.name,_that.lessonCount,_that.lessonDuration,_that.blockCount,_that.blockLessonCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'version_id')  int? versionId, @JsonKey(name: 'version')  int? version, @JsonKey(name: 'version_number')  int? versionNumber, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'lesson_count')  int? lessonCount, @JsonKey(name: 'lesson_duration')  int? lessonDuration, @JsonKey(name: 'block_count')  int? blockCount, @JsonKey(name: 'block_lesson_count')  int? blockLessonCount)?  $default,) {final _that = this;
switch (_that) {
case _CourseVersion() when $default != null:
return $default(_that.versionId,_that.version,_that.versionNumber,_that.name,_that.lessonCount,_that.lessonDuration,_that.blockCount,_that.blockLessonCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CourseVersion with DiagnosticableTreeMixin implements CourseVersion {
  const _CourseVersion({@JsonKey(name: 'version_id') this.versionId, @JsonKey(name: 'version') this.version, @JsonKey(name: 'version_number') this.versionNumber, @JsonKey(name: 'name') this.name, @JsonKey(name: 'lesson_count') this.lessonCount, @JsonKey(name: 'lesson_duration') this.lessonDuration, @JsonKey(name: 'block_count') this.blockCount, @JsonKey(name: 'block_lesson_count') this.blockLessonCount});
  factory _CourseVersion.fromJson(Map<String, dynamic> json) => _$CourseVersionFromJson(json);

@override@JsonKey(name: 'version_id') final  int? versionId;
@override@JsonKey(name: 'version') final  int? version;
@override@JsonKey(name: 'version_number') final  int? versionNumber;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'lesson_count') final  int? lessonCount;
@override@JsonKey(name: 'lesson_duration') final  int? lessonDuration;
@override@JsonKey(name: 'block_count') final  int? blockCount;
@override@JsonKey(name: 'block_lesson_count') final  int? blockLessonCount;

/// Create a copy of CourseVersion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CourseVersionCopyWith<_CourseVersion> get copyWith => __$CourseVersionCopyWithImpl<_CourseVersion>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CourseVersionToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CourseVersion'))
    ..add(DiagnosticsProperty('versionId', versionId))..add(DiagnosticsProperty('version', version))..add(DiagnosticsProperty('versionNumber', versionNumber))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('lessonCount', lessonCount))..add(DiagnosticsProperty('lessonDuration', lessonDuration))..add(DiagnosticsProperty('blockCount', blockCount))..add(DiagnosticsProperty('blockLessonCount', blockLessonCount));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CourseVersion&&(identical(other.versionId, versionId) || other.versionId == versionId)&&(identical(other.version, version) || other.version == version)&&(identical(other.versionNumber, versionNumber) || other.versionNumber == versionNumber)&&(identical(other.name, name) || other.name == name)&&(identical(other.lessonCount, lessonCount) || other.lessonCount == lessonCount)&&(identical(other.lessonDuration, lessonDuration) || other.lessonDuration == lessonDuration)&&(identical(other.blockCount, blockCount) || other.blockCount == blockCount)&&(identical(other.blockLessonCount, blockLessonCount) || other.blockLessonCount == blockLessonCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,versionId,version,versionNumber,name,lessonCount,lessonDuration,blockCount,blockLessonCount);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CourseVersion(versionId: $versionId, version: $version, versionNumber: $versionNumber, name: $name, lessonCount: $lessonCount, lessonDuration: $lessonDuration, blockCount: $blockCount, blockLessonCount: $blockLessonCount)';
}


}

/// @nodoc
abstract mixin class _$CourseVersionCopyWith<$Res> implements $CourseVersionCopyWith<$Res> {
  factory _$CourseVersionCopyWith(_CourseVersion value, $Res Function(_CourseVersion) _then) = __$CourseVersionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'version_id') int? versionId,@JsonKey(name: 'version') int? version,@JsonKey(name: 'version_number') int? versionNumber,@JsonKey(name: 'name') String? name,@JsonKey(name: 'lesson_count') int? lessonCount,@JsonKey(name: 'lesson_duration') int? lessonDuration,@JsonKey(name: 'block_count') int? blockCount,@JsonKey(name: 'block_lesson_count') int? blockLessonCount
});




}
/// @nodoc
class __$CourseVersionCopyWithImpl<$Res>
    implements _$CourseVersionCopyWith<$Res> {
  __$CourseVersionCopyWithImpl(this._self, this._then);

  final _CourseVersion _self;
  final $Res Function(_CourseVersion) _then;

/// Create a copy of CourseVersion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? versionId = freezed,Object? version = freezed,Object? versionNumber = freezed,Object? name = freezed,Object? lessonCount = freezed,Object? lessonDuration = freezed,Object? blockCount = freezed,Object? blockLessonCount = freezed,}) {
  return _then(_CourseVersion(
versionId: freezed == versionId ? _self.versionId : versionId // ignore: cast_nullable_to_non_nullable
as int?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,versionNumber: freezed == versionNumber ? _self.versionNumber : versionNumber // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,lessonCount: freezed == lessonCount ? _self.lessonCount : lessonCount // ignore: cast_nullable_to_non_nullable
as int?,lessonDuration: freezed == lessonDuration ? _self.lessonDuration : lessonDuration // ignore: cast_nullable_to_non_nullable
as int?,blockCount: freezed == blockCount ? _self.blockCount : blockCount // ignore: cast_nullable_to_non_nullable
as int?,blockLessonCount: freezed == blockLessonCount ? _self.blockLessonCount : blockLessonCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
