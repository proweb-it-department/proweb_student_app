// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feadbacks_page_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FeadbacksPageItem implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'opened_user') UserIdDefault? get openedUser;@JsonKey(name: 'closed_user') UserIdDefault? get closedUser;@JsonKey(name: 'responsible_user') UserIdDefault? get responsibleUser;@JsonKey(name: 'type') FeadbackType? get type;@JsonKey(name: 'status') FeadbackStatus? get status;@JsonKey(name: 'open_date') String? get openDate;@JsonKey(name: 'closed_date') String? get closedDate;@JsonKey(name: 'text') String? get text;@JsonKey(name: 'score') int? get score;@JsonKey(name: 'closing_offers') List<ClosingOffers>? get closingOffers;
/// Create a copy of FeadbacksPageItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeadbacksPageItemCopyWith<FeadbacksPageItem> get copyWith => _$FeadbacksPageItemCopyWithImpl<FeadbacksPageItem>(this as FeadbacksPageItem, _$identity);

  /// Serializes this FeadbacksPageItem to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'FeadbacksPageItem'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('openedUser', openedUser))..add(DiagnosticsProperty('closedUser', closedUser))..add(DiagnosticsProperty('responsibleUser', responsibleUser))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('openDate', openDate))..add(DiagnosticsProperty('closedDate', closedDate))..add(DiagnosticsProperty('text', text))..add(DiagnosticsProperty('score', score))..add(DiagnosticsProperty('closingOffers', closingOffers));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeadbacksPageItem&&(identical(other.id, id) || other.id == id)&&(identical(other.openedUser, openedUser) || other.openedUser == openedUser)&&(identical(other.closedUser, closedUser) || other.closedUser == closedUser)&&(identical(other.responsibleUser, responsibleUser) || other.responsibleUser == responsibleUser)&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.openDate, openDate) || other.openDate == openDate)&&(identical(other.closedDate, closedDate) || other.closedDate == closedDate)&&(identical(other.text, text) || other.text == text)&&(identical(other.score, score) || other.score == score)&&const DeepCollectionEquality().equals(other.closingOffers, closingOffers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,openedUser,closedUser,responsibleUser,type,status,openDate,closedDate,text,score,const DeepCollectionEquality().hash(closingOffers));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'FeadbacksPageItem(id: $id, openedUser: $openedUser, closedUser: $closedUser, responsibleUser: $responsibleUser, type: $type, status: $status, openDate: $openDate, closedDate: $closedDate, text: $text, score: $score, closingOffers: $closingOffers)';
}


}

/// @nodoc
abstract mixin class $FeadbacksPageItemCopyWith<$Res>  {
  factory $FeadbacksPageItemCopyWith(FeadbacksPageItem value, $Res Function(FeadbacksPageItem) _then) = _$FeadbacksPageItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'opened_user') UserIdDefault? openedUser,@JsonKey(name: 'closed_user') UserIdDefault? closedUser,@JsonKey(name: 'responsible_user') UserIdDefault? responsibleUser,@JsonKey(name: 'type') FeadbackType? type,@JsonKey(name: 'status') FeadbackStatus? status,@JsonKey(name: 'open_date') String? openDate,@JsonKey(name: 'closed_date') String? closedDate,@JsonKey(name: 'text') String? text,@JsonKey(name: 'score') int? score,@JsonKey(name: 'closing_offers') List<ClosingOffers>? closingOffers
});


$UserIdDefaultCopyWith<$Res>? get openedUser;$UserIdDefaultCopyWith<$Res>? get closedUser;$UserIdDefaultCopyWith<$Res>? get responsibleUser;

}
/// @nodoc
class _$FeadbacksPageItemCopyWithImpl<$Res>
    implements $FeadbacksPageItemCopyWith<$Res> {
  _$FeadbacksPageItemCopyWithImpl(this._self, this._then);

  final FeadbacksPageItem _self;
  final $Res Function(FeadbacksPageItem) _then;

/// Create a copy of FeadbacksPageItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? openedUser = freezed,Object? closedUser = freezed,Object? responsibleUser = freezed,Object? type = freezed,Object? status = freezed,Object? openDate = freezed,Object? closedDate = freezed,Object? text = freezed,Object? score = freezed,Object? closingOffers = freezed,}) {
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
as List<ClosingOffers>?,
  ));
}
/// Create a copy of FeadbacksPageItem
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
}/// Create a copy of FeadbacksPageItem
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
}/// Create a copy of FeadbacksPageItem
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
}
}


/// Adds pattern-matching-related methods to [FeadbacksPageItem].
extension FeadbacksPageItemPatterns on FeadbacksPageItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeadbacksPageItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeadbacksPageItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeadbacksPageItem value)  $default,){
final _that = this;
switch (_that) {
case _FeadbacksPageItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeadbacksPageItem value)?  $default,){
final _that = this;
switch (_that) {
case _FeadbacksPageItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'opened_user')  UserIdDefault? openedUser, @JsonKey(name: 'closed_user')  UserIdDefault? closedUser, @JsonKey(name: 'responsible_user')  UserIdDefault? responsibleUser, @JsonKey(name: 'type')  FeadbackType? type, @JsonKey(name: 'status')  FeadbackStatus? status, @JsonKey(name: 'open_date')  String? openDate, @JsonKey(name: 'closed_date')  String? closedDate, @JsonKey(name: 'text')  String? text, @JsonKey(name: 'score')  int? score, @JsonKey(name: 'closing_offers')  List<ClosingOffers>? closingOffers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeadbacksPageItem() when $default != null:
return $default(_that.id,_that.openedUser,_that.closedUser,_that.responsibleUser,_that.type,_that.status,_that.openDate,_that.closedDate,_that.text,_that.score,_that.closingOffers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'opened_user')  UserIdDefault? openedUser, @JsonKey(name: 'closed_user')  UserIdDefault? closedUser, @JsonKey(name: 'responsible_user')  UserIdDefault? responsibleUser, @JsonKey(name: 'type')  FeadbackType? type, @JsonKey(name: 'status')  FeadbackStatus? status, @JsonKey(name: 'open_date')  String? openDate, @JsonKey(name: 'closed_date')  String? closedDate, @JsonKey(name: 'text')  String? text, @JsonKey(name: 'score')  int? score, @JsonKey(name: 'closing_offers')  List<ClosingOffers>? closingOffers)  $default,) {final _that = this;
switch (_that) {
case _FeadbacksPageItem():
return $default(_that.id,_that.openedUser,_that.closedUser,_that.responsibleUser,_that.type,_that.status,_that.openDate,_that.closedDate,_that.text,_that.score,_that.closingOffers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'opened_user')  UserIdDefault? openedUser, @JsonKey(name: 'closed_user')  UserIdDefault? closedUser, @JsonKey(name: 'responsible_user')  UserIdDefault? responsibleUser, @JsonKey(name: 'type')  FeadbackType? type, @JsonKey(name: 'status')  FeadbackStatus? status, @JsonKey(name: 'open_date')  String? openDate, @JsonKey(name: 'closed_date')  String? closedDate, @JsonKey(name: 'text')  String? text, @JsonKey(name: 'score')  int? score, @JsonKey(name: 'closing_offers')  List<ClosingOffers>? closingOffers)?  $default,) {final _that = this;
switch (_that) {
case _FeadbacksPageItem() when $default != null:
return $default(_that.id,_that.openedUser,_that.closedUser,_that.responsibleUser,_that.type,_that.status,_that.openDate,_that.closedDate,_that.text,_that.score,_that.closingOffers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeadbacksPageItem with DiagnosticableTreeMixin implements FeadbacksPageItem {
  const _FeadbacksPageItem({@JsonKey(name: 'id') this.id, @JsonKey(name: 'opened_user') this.openedUser, @JsonKey(name: 'closed_user') this.closedUser, @JsonKey(name: 'responsible_user') this.responsibleUser, @JsonKey(name: 'type') this.type, @JsonKey(name: 'status') this.status, @JsonKey(name: 'open_date') this.openDate, @JsonKey(name: 'closed_date') this.closedDate, @JsonKey(name: 'text') this.text, @JsonKey(name: 'score') this.score, @JsonKey(name: 'closing_offers') final  List<ClosingOffers>? closingOffers}): _closingOffers = closingOffers;
  factory _FeadbacksPageItem.fromJson(Map<String, dynamic> json) => _$FeadbacksPageItemFromJson(json);

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


/// Create a copy of FeadbacksPageItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeadbacksPageItemCopyWith<_FeadbacksPageItem> get copyWith => __$FeadbacksPageItemCopyWithImpl<_FeadbacksPageItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeadbacksPageItemToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'FeadbacksPageItem'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('openedUser', openedUser))..add(DiagnosticsProperty('closedUser', closedUser))..add(DiagnosticsProperty('responsibleUser', responsibleUser))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('openDate', openDate))..add(DiagnosticsProperty('closedDate', closedDate))..add(DiagnosticsProperty('text', text))..add(DiagnosticsProperty('score', score))..add(DiagnosticsProperty('closingOffers', closingOffers));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeadbacksPageItem&&(identical(other.id, id) || other.id == id)&&(identical(other.openedUser, openedUser) || other.openedUser == openedUser)&&(identical(other.closedUser, closedUser) || other.closedUser == closedUser)&&(identical(other.responsibleUser, responsibleUser) || other.responsibleUser == responsibleUser)&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.openDate, openDate) || other.openDate == openDate)&&(identical(other.closedDate, closedDate) || other.closedDate == closedDate)&&(identical(other.text, text) || other.text == text)&&(identical(other.score, score) || other.score == score)&&const DeepCollectionEquality().equals(other._closingOffers, _closingOffers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,openedUser,closedUser,responsibleUser,type,status,openDate,closedDate,text,score,const DeepCollectionEquality().hash(_closingOffers));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'FeadbacksPageItem(id: $id, openedUser: $openedUser, closedUser: $closedUser, responsibleUser: $responsibleUser, type: $type, status: $status, openDate: $openDate, closedDate: $closedDate, text: $text, score: $score, closingOffers: $closingOffers)';
}


}

/// @nodoc
abstract mixin class _$FeadbacksPageItemCopyWith<$Res> implements $FeadbacksPageItemCopyWith<$Res> {
  factory _$FeadbacksPageItemCopyWith(_FeadbacksPageItem value, $Res Function(_FeadbacksPageItem) _then) = __$FeadbacksPageItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'opened_user') UserIdDefault? openedUser,@JsonKey(name: 'closed_user') UserIdDefault? closedUser,@JsonKey(name: 'responsible_user') UserIdDefault? responsibleUser,@JsonKey(name: 'type') FeadbackType? type,@JsonKey(name: 'status') FeadbackStatus? status,@JsonKey(name: 'open_date') String? openDate,@JsonKey(name: 'closed_date') String? closedDate,@JsonKey(name: 'text') String? text,@JsonKey(name: 'score') int? score,@JsonKey(name: 'closing_offers') List<ClosingOffers>? closingOffers
});


@override $UserIdDefaultCopyWith<$Res>? get openedUser;@override $UserIdDefaultCopyWith<$Res>? get closedUser;@override $UserIdDefaultCopyWith<$Res>? get responsibleUser;

}
/// @nodoc
class __$FeadbacksPageItemCopyWithImpl<$Res>
    implements _$FeadbacksPageItemCopyWith<$Res> {
  __$FeadbacksPageItemCopyWithImpl(this._self, this._then);

  final _FeadbacksPageItem _self;
  final $Res Function(_FeadbacksPageItem) _then;

/// Create a copy of FeadbacksPageItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? openedUser = freezed,Object? closedUser = freezed,Object? responsibleUser = freezed,Object? type = freezed,Object? status = freezed,Object? openDate = freezed,Object? closedDate = freezed,Object? text = freezed,Object? score = freezed,Object? closingOffers = freezed,}) {
  return _then(_FeadbacksPageItem(
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
as List<ClosingOffers>?,
  ));
}

/// Create a copy of FeadbacksPageItem
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
}/// Create a copy of FeadbacksPageItem
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
}/// Create a copy of FeadbacksPageItem
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

// dart format on
