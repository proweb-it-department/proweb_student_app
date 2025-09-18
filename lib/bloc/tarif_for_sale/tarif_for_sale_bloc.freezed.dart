// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tarif_for_sale_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TarifForSaleEvent {

 int get offset; int get limit;
/// Create a copy of TarifForSaleEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TarifForSaleEventCopyWith<TarifForSaleEvent> get copyWith => _$TarifForSaleEventCopyWithImpl<TarifForSaleEvent>(this as TarifForSaleEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TarifForSaleEvent&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,offset,limit);

@override
String toString() {
  return 'TarifForSaleEvent(offset: $offset, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $TarifForSaleEventCopyWith<$Res>  {
  factory $TarifForSaleEventCopyWith(TarifForSaleEvent value, $Res Function(TarifForSaleEvent) _then) = _$TarifForSaleEventCopyWithImpl;
@useResult
$Res call({
 int offset, int limit
});




}
/// @nodoc
class _$TarifForSaleEventCopyWithImpl<$Res>
    implements $TarifForSaleEventCopyWith<$Res> {
  _$TarifForSaleEventCopyWithImpl(this._self, this._then);

  final TarifForSaleEvent _self;
  final $Res Function(TarifForSaleEvent) _then;

/// Create a copy of TarifForSaleEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? offset = null,Object? limit = null,}) {
  return _then(_self.copyWith(
offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TarifForSaleEvent].
extension TarifForSaleEventPatterns on TarifForSaleEvent {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int offset,  int limit)?  started,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.offset,_that.limit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int offset,  int limit)  started,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.offset,_that.limit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int offset,  int limit)?  started,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.offset,_that.limit);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements TarifForSaleEvent {
  const _Started({required this.offset, required this.limit});
  

@override final  int offset;
@override final  int limit;

/// Create a copy of TarifForSaleEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,offset,limit);

@override
String toString() {
  return 'TarifForSaleEvent.started(offset: $offset, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $TarifForSaleEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@override @useResult
$Res call({
 int offset, int limit
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of TarifForSaleEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? offset = null,Object? limit = null,}) {
  return _then(_Started(
offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$TarifForSaleState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TarifForSaleState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TarifForSaleState()';
}


}

/// @nodoc
class $TarifForSaleStateCopyWith<$Res>  {
$TarifForSaleStateCopyWith(TarifForSaleState _, $Res Function(TarifForSaleState) __);
}


/// Adds pattern-matching-related methods to [TarifForSaleState].
extension TarifForSaleStatePatterns on TarifForSaleState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Load value)?  load,TResult Function( _Complited value)?  complited,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Load() when load != null:
return load(_that);case _Complited() when complited != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Load value)  load,required TResult Function( _Complited value)  complited,}){
final _that = this;
switch (_that) {
case _Load():
return load(_that);case _Complited():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Load value)?  load,TResult? Function( _Complited value)?  complited,}){
final _that = this;
switch (_that) {
case _Load() when load != null:
return load(_that);case _Complited() when complited != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  load,TResult Function( ResponseLazeList<TarifForSale> tarifs,  bool load)?  complited,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Load() when load != null:
return load();case _Complited() when complited != null:
return complited(_that.tarifs,_that.load);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  load,required TResult Function( ResponseLazeList<TarifForSale> tarifs,  bool load)  complited,}) {final _that = this;
switch (_that) {
case _Load():
return load();case _Complited():
return complited(_that.tarifs,_that.load);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  load,TResult? Function( ResponseLazeList<TarifForSale> tarifs,  bool load)?  complited,}) {final _that = this;
switch (_that) {
case _Load() when load != null:
return load();case _Complited() when complited != null:
return complited(_that.tarifs,_that.load);case _:
  return null;

}
}

}

/// @nodoc


class _Load implements TarifForSaleState {
  const _Load();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Load);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TarifForSaleState.load()';
}


}




/// @nodoc


class _Complited implements TarifForSaleState {
  const _Complited({required this.tarifs, required this.load});
  

 final  ResponseLazeList<TarifForSale> tarifs;
 final  bool load;

/// Create a copy of TarifForSaleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ComplitedCopyWith<_Complited> get copyWith => __$ComplitedCopyWithImpl<_Complited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Complited&&(identical(other.tarifs, tarifs) || other.tarifs == tarifs)&&(identical(other.load, load) || other.load == load));
}


@override
int get hashCode => Object.hash(runtimeType,tarifs,load);

@override
String toString() {
  return 'TarifForSaleState.complited(tarifs: $tarifs, load: $load)';
}


}

/// @nodoc
abstract mixin class _$ComplitedCopyWith<$Res> implements $TarifForSaleStateCopyWith<$Res> {
  factory _$ComplitedCopyWith(_Complited value, $Res Function(_Complited) _then) = __$ComplitedCopyWithImpl;
@useResult
$Res call({
 ResponseLazeList<TarifForSale> tarifs, bool load
});




}
/// @nodoc
class __$ComplitedCopyWithImpl<$Res>
    implements _$ComplitedCopyWith<$Res> {
  __$ComplitedCopyWithImpl(this._self, this._then);

  final _Complited _self;
  final $Res Function(_Complited) _then;

/// Create a copy of TarifForSaleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tarifs = null,Object? load = null,}) {
  return _then(_Complited(
tarifs: null == tarifs ? _self.tarifs : tarifs // ignore: cast_nullable_to_non_nullable
as ResponseLazeList<TarifForSale>,load: null == load ? _self.load : load // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
