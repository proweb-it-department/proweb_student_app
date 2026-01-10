// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileDataEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileDataEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileDataEvent()';
}


}

/// @nodoc
class $ProfileDataEventCopyWith<$Res>  {
$ProfileDataEventCopyWith(ProfileDataEvent _, $Res Function(ProfileDataEvent) __);
}


/// Adds pattern-matching-related methods to [ProfileDataEvent].
extension ProfileDataEventPatterns on ProfileDataEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _UploadImage value)?  uploadImage,TResult Function( _UpdateBirth value)?  updateBirth,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _UploadImage() when uploadImage != null:
return uploadImage(_that);case _UpdateBirth() when updateBirth != null:
return updateBirth(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _UploadImage value)  uploadImage,required TResult Function( _UpdateBirth value)  updateBirth,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _UploadImage():
return uploadImage(_that);case _UpdateBirth():
return updateBirth(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _UploadImage value)?  uploadImage,TResult? Function( _UpdateBirth value)?  updateBirth,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _UploadImage() when uploadImage != null:
return uploadImage(_that);case _UpdateBirth() when updateBirth != null:
return updateBirth(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( Uint8List image)?  uploadImage,TResult Function( String date)?  updateBirth,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _UploadImage() when uploadImage != null:
return uploadImage(_that.image);case _UpdateBirth() when updateBirth != null:
return updateBirth(_that.date);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( Uint8List image)  uploadImage,required TResult Function( String date)  updateBirth,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _UploadImage():
return uploadImage(_that.image);case _UpdateBirth():
return updateBirth(_that.date);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( Uint8List image)?  uploadImage,TResult? Function( String date)?  updateBirth,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _UploadImage() when uploadImage != null:
return uploadImage(_that.image);case _UpdateBirth() when updateBirth != null:
return updateBirth(_that.date);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements ProfileDataEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileDataEvent.started()';
}


}




/// @nodoc


class _UploadImage implements ProfileDataEvent {
  const _UploadImage({required this.image});
  

 final  Uint8List image;

/// Create a copy of ProfileDataEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadImageCopyWith<_UploadImage> get copyWith => __$UploadImageCopyWithImpl<_UploadImage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadImage&&const DeepCollectionEquality().equals(other.image, image));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(image));

@override
String toString() {
  return 'ProfileDataEvent.uploadImage(image: $image)';
}


}

/// @nodoc
abstract mixin class _$UploadImageCopyWith<$Res> implements $ProfileDataEventCopyWith<$Res> {
  factory _$UploadImageCopyWith(_UploadImage value, $Res Function(_UploadImage) _then) = __$UploadImageCopyWithImpl;
@useResult
$Res call({
 Uint8List image
});




}
/// @nodoc
class __$UploadImageCopyWithImpl<$Res>
    implements _$UploadImageCopyWith<$Res> {
  __$UploadImageCopyWithImpl(this._self, this._then);

  final _UploadImage _self;
  final $Res Function(_UploadImage) _then;

/// Create a copy of ProfileDataEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? image = null,}) {
  return _then(_UploadImage(
image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}


}

/// @nodoc


class _UpdateBirth implements ProfileDataEvent {
  const _UpdateBirth({required this.date});
  

 final  String date;

/// Create a copy of ProfileDataEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateBirthCopyWith<_UpdateBirth> get copyWith => __$UpdateBirthCopyWithImpl<_UpdateBirth>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateBirth&&(identical(other.date, date) || other.date == date));
}


@override
int get hashCode => Object.hash(runtimeType,date);

@override
String toString() {
  return 'ProfileDataEvent.updateBirth(date: $date)';
}


}

/// @nodoc
abstract mixin class _$UpdateBirthCopyWith<$Res> implements $ProfileDataEventCopyWith<$Res> {
  factory _$UpdateBirthCopyWith(_UpdateBirth value, $Res Function(_UpdateBirth) _then) = __$UpdateBirthCopyWithImpl;
@useResult
$Res call({
 String date
});




}
/// @nodoc
class __$UpdateBirthCopyWithImpl<$Res>
    implements _$UpdateBirthCopyWith<$Res> {
  __$UpdateBirthCopyWithImpl(this._self, this._then);

  final _UpdateBirth _self;
  final $Res Function(_UpdateBirth) _then;

/// Create a copy of ProfileDataEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? date = null,}) {
  return _then(_UpdateBirth(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ProfileDataState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileDataState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileDataState()';
}


}

/// @nodoc
class $ProfileDataStateCopyWith<$Res>  {
$ProfileDataStateCopyWith(ProfileDataState _, $Res Function(ProfileDataState) __);
}


/// Adds pattern-matching-related methods to [ProfileDataState].
extension ProfileDataStatePatterns on ProfileDataState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ProfileDataInitial value)?  initial,TResult Function( _ProfileDataView value)?  view,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileDataInitial() when initial != null:
return initial(_that);case _ProfileDataView() when view != null:
return view(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ProfileDataInitial value)  initial,required TResult Function( _ProfileDataView value)  view,}){
final _that = this;
switch (_that) {
case _ProfileDataInitial():
return initial(_that);case _ProfileDataView():
return view(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ProfileDataInitial value)?  initial,TResult? Function( _ProfileDataView value)?  view,}){
final _that = this;
switch (_that) {
case _ProfileDataInitial() when initial != null:
return initial(_that);case _ProfileDataView() when view != null:
return view(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( MyProfile profile)?  view,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileDataInitial() when initial != null:
return initial();case _ProfileDataView() when view != null:
return view(_that.profile);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( MyProfile profile)  view,}) {final _that = this;
switch (_that) {
case _ProfileDataInitial():
return initial();case _ProfileDataView():
return view(_that.profile);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( MyProfile profile)?  view,}) {final _that = this;
switch (_that) {
case _ProfileDataInitial() when initial != null:
return initial();case _ProfileDataView() when view != null:
return view(_that.profile);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileDataInitial implements ProfileDataState {
  const _ProfileDataInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileDataInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileDataState.initial()';
}


}




/// @nodoc


class _ProfileDataView implements ProfileDataState {
  const _ProfileDataView({required this.profile});
  

 final  MyProfile profile;

/// Create a copy of ProfileDataState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileDataViewCopyWith<_ProfileDataView> get copyWith => __$ProfileDataViewCopyWithImpl<_ProfileDataView>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileDataView&&(identical(other.profile, profile) || other.profile == profile));
}


@override
int get hashCode => Object.hash(runtimeType,profile);

@override
String toString() {
  return 'ProfileDataState.view(profile: $profile)';
}


}

/// @nodoc
abstract mixin class _$ProfileDataViewCopyWith<$Res> implements $ProfileDataStateCopyWith<$Res> {
  factory _$ProfileDataViewCopyWith(_ProfileDataView value, $Res Function(_ProfileDataView) _then) = __$ProfileDataViewCopyWithImpl;
@useResult
$Res call({
 MyProfile profile
});


$MyProfileCopyWith<$Res> get profile;

}
/// @nodoc
class __$ProfileDataViewCopyWithImpl<$Res>
    implements _$ProfileDataViewCopyWith<$Res> {
  __$ProfileDataViewCopyWithImpl(this._self, this._then);

  final _ProfileDataView _self;
  final $Res Function(_ProfileDataView) _then;

/// Create a copy of ProfileDataState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? profile = null,}) {
  return _then(_ProfileDataView(
profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as MyProfile,
  ));
}

/// Create a copy of ProfileDataState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyProfileCopyWith<$Res> get profile {
  
  return $MyProfileCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}

// dart format on
