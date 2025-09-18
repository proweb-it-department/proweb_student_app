// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download_exclusive_product_modules_video_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DownloadExclusiveProductModulesVideoEvent {

 int get productId;
/// Create a copy of DownloadExclusiveProductModulesVideoEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DownloadExclusiveProductModulesVideoEventCopyWith<DownloadExclusiveProductModulesVideoEvent> get copyWith => _$DownloadExclusiveProductModulesVideoEventCopyWithImpl<DownloadExclusiveProductModulesVideoEvent>(this as DownloadExclusiveProductModulesVideoEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloadExclusiveProductModulesVideoEvent&&(identical(other.productId, productId) || other.productId == productId));
}


@override
int get hashCode => Object.hash(runtimeType,productId);

@override
String toString() {
  return 'DownloadExclusiveProductModulesVideoEvent(productId: $productId)';
}


}

/// @nodoc
abstract mixin class $DownloadExclusiveProductModulesVideoEventCopyWith<$Res>  {
  factory $DownloadExclusiveProductModulesVideoEventCopyWith(DownloadExclusiveProductModulesVideoEvent value, $Res Function(DownloadExclusiveProductModulesVideoEvent) _then) = _$DownloadExclusiveProductModulesVideoEventCopyWithImpl;
@useResult
$Res call({
 int productId
});




}
/// @nodoc
class _$DownloadExclusiveProductModulesVideoEventCopyWithImpl<$Res>
    implements $DownloadExclusiveProductModulesVideoEventCopyWith<$Res> {
  _$DownloadExclusiveProductModulesVideoEventCopyWithImpl(this._self, this._then);

  final DownloadExclusiveProductModulesVideoEvent _self;
  final $Res Function(DownloadExclusiveProductModulesVideoEvent) _then;

/// Create a copy of DownloadExclusiveProductModulesVideoEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,}) {
  return _then(_self.copyWith(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DownloadExclusiveProductModulesVideoEvent].
extension DownloadExclusiveProductModulesVideoEventPatterns on DownloadExclusiveProductModulesVideoEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int productId)?  started,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.productId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int productId)  started,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.productId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int productId)?  started,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.productId);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements DownloadExclusiveProductModulesVideoEvent {
  const _Started({required this.productId});
  

@override final  int productId;

/// Create a copy of DownloadExclusiveProductModulesVideoEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.productId, productId) || other.productId == productId));
}


@override
int get hashCode => Object.hash(runtimeType,productId);

@override
String toString() {
  return 'DownloadExclusiveProductModulesVideoEvent.started(productId: $productId)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $DownloadExclusiveProductModulesVideoEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@override @useResult
$Res call({
 int productId
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of DownloadExclusiveProductModulesVideoEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,}) {
  return _then(_Started(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$DownloadExclusiveProductModulesVideoState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloadExclusiveProductModulesVideoState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadExclusiveProductModulesVideoState()';
}


}

/// @nodoc
class $DownloadExclusiveProductModulesVideoStateCopyWith<$Res>  {
$DownloadExclusiveProductModulesVideoStateCopyWith(DownloadExclusiveProductModulesVideoState _, $Res Function(DownloadExclusiveProductModulesVideoState) __);
}


/// Adds pattern-matching-related methods to [DownloadExclusiveProductModulesVideoState].
extension DownloadExclusiveProductModulesVideoStatePatterns on DownloadExclusiveProductModulesVideoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Load value)?  load,TResult Function( _Error value)?  error,TResult Function( _NotFound value)?  notFound,TResult Function( _Complited value)?  complited,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Load() when load != null:
return load(_that);case _Error() when error != null:
return error(_that);case _NotFound() when notFound != null:
return notFound(_that);case _Complited() when complited != null:
return complited(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Load value)  load,required TResult Function( _Error value)  error,required TResult Function( _NotFound value)  notFound,required TResult Function( _Complited value)  complited,}){
final _that = this;
switch (_that) {
case _Load():
return load(_that);case _Error():
return error(_that);case _NotFound():
return notFound(_that);case _Complited():
return complited(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Load value)?  load,TResult? Function( _Error value)?  error,TResult? Function( _NotFound value)?  notFound,TResult? Function( _Complited value)?  complited,}){
final _that = this;
switch (_that) {
case _Load() when load != null:
return load(_that);case _Error() when error != null:
return error(_that);case _NotFound() when notFound != null:
return notFound(_that);case _Complited() when complited != null:
return complited(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  load,TResult Function()?  error,TResult Function()?  notFound,TResult Function( List<ExclusiveProductModuleModelData> modules)?  complited,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Load() when load != null:
return load();case _Error() when error != null:
return error();case _NotFound() when notFound != null:
return notFound();case _Complited() when complited != null:
return complited(_that.modules);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  load,required TResult Function()  error,required TResult Function()  notFound,required TResult Function( List<ExclusiveProductModuleModelData> modules)  complited,}) {final _that = this;
switch (_that) {
case _Load():
return load();case _Error():
return error();case _NotFound():
return notFound();case _Complited():
return complited(_that.modules);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  load,TResult? Function()?  error,TResult? Function()?  notFound,TResult? Function( List<ExclusiveProductModuleModelData> modules)?  complited,}) {final _that = this;
switch (_that) {
case _Load() when load != null:
return load();case _Error() when error != null:
return error();case _NotFound() when notFound != null:
return notFound();case _Complited() when complited != null:
return complited(_that.modules);case _:
  return null;

}
}

}

/// @nodoc


class _Load implements DownloadExclusiveProductModulesVideoState {
  const _Load();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Load);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadExclusiveProductModulesVideoState.load()';
}


}




/// @nodoc


class _Error implements DownloadExclusiveProductModulesVideoState {
  const _Error();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadExclusiveProductModulesVideoState.error()';
}


}




/// @nodoc


class _NotFound implements DownloadExclusiveProductModulesVideoState {
  const _NotFound();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotFound);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadExclusiveProductModulesVideoState.notFound()';
}


}




/// @nodoc


class _Complited implements DownloadExclusiveProductModulesVideoState {
  const _Complited({required final  List<ExclusiveProductModuleModelData> modules}): _modules = modules;
  

 final  List<ExclusiveProductModuleModelData> _modules;
 List<ExclusiveProductModuleModelData> get modules {
  if (_modules is EqualUnmodifiableListView) return _modules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_modules);
}


/// Create a copy of DownloadExclusiveProductModulesVideoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ComplitedCopyWith<_Complited> get copyWith => __$ComplitedCopyWithImpl<_Complited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Complited&&const DeepCollectionEquality().equals(other._modules, _modules));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_modules));

@override
String toString() {
  return 'DownloadExclusiveProductModulesVideoState.complited(modules: $modules)';
}


}

/// @nodoc
abstract mixin class _$ComplitedCopyWith<$Res> implements $DownloadExclusiveProductModulesVideoStateCopyWith<$Res> {
  factory _$ComplitedCopyWith(_Complited value, $Res Function(_Complited) _then) = __$ComplitedCopyWithImpl;
@useResult
$Res call({
 List<ExclusiveProductModuleModelData> modules
});




}
/// @nodoc
class __$ComplitedCopyWithImpl<$Res>
    implements _$ComplitedCopyWith<$Res> {
  __$ComplitedCopyWithImpl(this._self, this._then);

  final _Complited _self;
  final $Res Function(_Complited) _then;

/// Create a copy of DownloadExclusiveProductModulesVideoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? modules = null,}) {
  return _then(_Complited(
modules: null == modules ? _self._modules : modules // ignore: cast_nullable_to_non_nullable
as List<ExclusiveProductModuleModelData>,
  ));
}


}

// dart format on
