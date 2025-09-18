// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_ditail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductDitailEvent {

 int get id;
/// Create a copy of ProductDitailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDitailEventCopyWith<ProductDitailEvent> get copyWith => _$ProductDitailEventCopyWithImpl<ProductDitailEvent>(this as ProductDitailEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDitailEvent&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ProductDitailEvent(id: $id)';
}


}

/// @nodoc
abstract mixin class $ProductDitailEventCopyWith<$Res>  {
  factory $ProductDitailEventCopyWith(ProductDitailEvent value, $Res Function(ProductDitailEvent) _then) = _$ProductDitailEventCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$ProductDitailEventCopyWithImpl<$Res>
    implements $ProductDitailEventCopyWith<$Res> {
  _$ProductDitailEventCopyWithImpl(this._self, this._then);

  final ProductDitailEvent _self;
  final $Res Function(ProductDitailEvent) _then;

/// Create a copy of ProductDitailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductDitailEvent].
extension ProductDitailEventPatterns on ProductDitailEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Buy value)?  buy,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Buy() when buy != null:
return buy(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Buy value)  buy,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Buy():
return buy(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Buy value)?  buy,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Buy() when buy != null:
return buy(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int id)?  started,TResult Function( int id)?  buy,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.id);case _Buy() when buy != null:
return buy(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int id)  started,required TResult Function( int id)  buy,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.id);case _Buy():
return buy(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int id)?  started,TResult? Function( int id)?  buy,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.id);case _Buy() when buy != null:
return buy(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements ProductDitailEvent {
  const _Started({required this.id});
  

@override final  int id;

/// Create a copy of ProductDitailEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ProductDitailEvent.started(id: $id)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $ProductDitailEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@override @useResult
$Res call({
 int id
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of ProductDitailEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_Started(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _Buy implements ProductDitailEvent {
  const _Buy({required this.id});
  

@override final  int id;

/// Create a copy of ProductDitailEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BuyCopyWith<_Buy> get copyWith => __$BuyCopyWithImpl<_Buy>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Buy&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ProductDitailEvent.buy(id: $id)';
}


}

/// @nodoc
abstract mixin class _$BuyCopyWith<$Res> implements $ProductDitailEventCopyWith<$Res> {
  factory _$BuyCopyWith(_Buy value, $Res Function(_Buy) _then) = __$BuyCopyWithImpl;
@override @useResult
$Res call({
 int id
});




}
/// @nodoc
class __$BuyCopyWithImpl<$Res>
    implements _$BuyCopyWith<$Res> {
  __$BuyCopyWithImpl(this._self, this._then);

  final _Buy _self;
  final $Res Function(_Buy) _then;

/// Create a copy of ProductDitailEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_Buy(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$ProductDitailState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDitailState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductDitailState()';
}


}

/// @nodoc
class $ProductDitailStateCopyWith<$Res>  {
$ProductDitailStateCopyWith(ProductDitailState _, $Res Function(ProductDitailState) __);
}


/// Adds pattern-matching-related methods to [ProductDitailState].
extension ProductDitailStatePatterns on ProductDitailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _LoadState value)?  load,TResult Function( _ErrorState value)?  error,TResult Function( _CompolitedState value)?  complited,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _LoadState() when load != null:
return load(_that);case _ErrorState() when error != null:
return error(_that);case _CompolitedState() when complited != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _LoadState value)  load,required TResult Function( _ErrorState value)  error,required TResult Function( _CompolitedState value)  complited,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _LoadState():
return load(_that);case _ErrorState():
return error(_that);case _CompolitedState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _LoadState value)?  load,TResult? Function( _ErrorState value)?  error,TResult? Function( _CompolitedState value)?  complited,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _LoadState() when load != null:
return load(_that);case _ErrorState() when error != null:
return error(_that);case _CompolitedState() when complited != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  load,TResult Function()?  error,TResult Function( Products product,  List<ProductsModules> productModules)?  complited,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _LoadState() when load != null:
return load();case _ErrorState() when error != null:
return error();case _CompolitedState() when complited != null:
return complited(_that.product,_that.productModules);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  load,required TResult Function()  error,required TResult Function( Products product,  List<ProductsModules> productModules)  complited,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _LoadState():
return load();case _ErrorState():
return error();case _CompolitedState():
return complited(_that.product,_that.productModules);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  load,TResult? Function()?  error,TResult? Function( Products product,  List<ProductsModules> productModules)?  complited,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _LoadState() when load != null:
return load();case _ErrorState() when error != null:
return error();case _CompolitedState() when complited != null:
return complited(_that.product,_that.productModules);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements ProductDitailState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductDitailState.initial()';
}


}




/// @nodoc


class _LoadState implements ProductDitailState {
  const _LoadState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductDitailState.load()';
}


}




/// @nodoc


class _ErrorState implements ProductDitailState {
  const _ErrorState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductDitailState.error()';
}


}




/// @nodoc


class _CompolitedState implements ProductDitailState {
  const _CompolitedState({required this.product, required final  List<ProductsModules> productModules}): _productModules = productModules;
  

 final  Products product;
 final  List<ProductsModules> _productModules;
 List<ProductsModules> get productModules {
  if (_productModules is EqualUnmodifiableListView) return _productModules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_productModules);
}


/// Create a copy of ProductDitailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompolitedStateCopyWith<_CompolitedState> get copyWith => __$CompolitedStateCopyWithImpl<_CompolitedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompolitedState&&(identical(other.product, product) || other.product == product)&&const DeepCollectionEquality().equals(other._productModules, _productModules));
}


@override
int get hashCode => Object.hash(runtimeType,product,const DeepCollectionEquality().hash(_productModules));

@override
String toString() {
  return 'ProductDitailState.complited(product: $product, productModules: $productModules)';
}


}

/// @nodoc
abstract mixin class _$CompolitedStateCopyWith<$Res> implements $ProductDitailStateCopyWith<$Res> {
  factory _$CompolitedStateCopyWith(_CompolitedState value, $Res Function(_CompolitedState) _then) = __$CompolitedStateCopyWithImpl;
@useResult
$Res call({
 Products product, List<ProductsModules> productModules
});


$ProductsCopyWith<$Res> get product;

}
/// @nodoc
class __$CompolitedStateCopyWithImpl<$Res>
    implements _$CompolitedStateCopyWith<$Res> {
  __$CompolitedStateCopyWithImpl(this._self, this._then);

  final _CompolitedState _self;
  final $Res Function(_CompolitedState) _then;

/// Create a copy of ProductDitailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? product = null,Object? productModules = null,}) {
  return _then(_CompolitedState(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Products,productModules: null == productModules ? _self._productModules : productModules // ignore: cast_nullable_to_non_nullable
as List<ProductsModules>,
  ));
}

/// Create a copy of ProductDitailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductsCopyWith<$Res> get product {
  
  return $ProductsCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

// dart format on
