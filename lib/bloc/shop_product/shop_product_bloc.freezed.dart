// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ShopProductEvent {

 int get offset; int get limit; String? get language; int? get categoryId;
/// Create a copy of ShopProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShopProductEventCopyWith<ShopProductEvent> get copyWith => _$ShopProductEventCopyWithImpl<ShopProductEvent>(this as ShopProductEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShopProductEvent&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.language, language) || other.language == language)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId));
}


@override
int get hashCode => Object.hash(runtimeType,offset,limit,language,categoryId);

@override
String toString() {
  return 'ShopProductEvent(offset: $offset, limit: $limit, language: $language, categoryId: $categoryId)';
}


}

/// @nodoc
abstract mixin class $ShopProductEventCopyWith<$Res>  {
  factory $ShopProductEventCopyWith(ShopProductEvent value, $Res Function(ShopProductEvent) _then) = _$ShopProductEventCopyWithImpl;
@useResult
$Res call({
 int offset, int limit, String? language, int? categoryId
});




}
/// @nodoc
class _$ShopProductEventCopyWithImpl<$Res>
    implements $ShopProductEventCopyWith<$Res> {
  _$ShopProductEventCopyWithImpl(this._self, this._then);

  final ShopProductEvent _self;
  final $Res Function(ShopProductEvent) _then;

/// Create a copy of ShopProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? offset = null,Object? limit = null,Object? language = freezed,Object? categoryId = freezed,}) {
  return _then(_self.copyWith(
offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ShopProductEvent].
extension ShopProductEventPatterns on ShopProductEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadEvent value)?  load,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadEvent() when load != null:
return load(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadEvent value)  load,}){
final _that = this;
switch (_that) {
case _LoadEvent():
return load(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadEvent value)?  load,}){
final _that = this;
switch (_that) {
case _LoadEvent() when load != null:
return load(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int offset,  int limit,  String? language,  int? categoryId)?  load,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadEvent() when load != null:
return load(_that.offset,_that.limit,_that.language,_that.categoryId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int offset,  int limit,  String? language,  int? categoryId)  load,}) {final _that = this;
switch (_that) {
case _LoadEvent():
return load(_that.offset,_that.limit,_that.language,_that.categoryId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int offset,  int limit,  String? language,  int? categoryId)?  load,}) {final _that = this;
switch (_that) {
case _LoadEvent() when load != null:
return load(_that.offset,_that.limit,_that.language,_that.categoryId);case _:
  return null;

}
}

}

/// @nodoc


class _LoadEvent implements ShopProductEvent {
  const _LoadEvent({required this.offset, required this.limit, this.language, this.categoryId});
  

@override final  int offset;
@override final  int limit;
@override final  String? language;
@override final  int? categoryId;

/// Create a copy of ShopProductEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadEventCopyWith<_LoadEvent> get copyWith => __$LoadEventCopyWithImpl<_LoadEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadEvent&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.language, language) || other.language == language)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId));
}


@override
int get hashCode => Object.hash(runtimeType,offset,limit,language,categoryId);

@override
String toString() {
  return 'ShopProductEvent.load(offset: $offset, limit: $limit, language: $language, categoryId: $categoryId)';
}


}

/// @nodoc
abstract mixin class _$LoadEventCopyWith<$Res> implements $ShopProductEventCopyWith<$Res> {
  factory _$LoadEventCopyWith(_LoadEvent value, $Res Function(_LoadEvent) _then) = __$LoadEventCopyWithImpl;
@override @useResult
$Res call({
 int offset, int limit, String? language, int? categoryId
});




}
/// @nodoc
class __$LoadEventCopyWithImpl<$Res>
    implements _$LoadEventCopyWith<$Res> {
  __$LoadEventCopyWithImpl(this._self, this._then);

  final _LoadEvent _self;
  final $Res Function(_LoadEvent) _then;

/// Create a copy of ShopProductEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? offset = null,Object? limit = null,Object? language = freezed,Object? categoryId = freezed,}) {
  return _then(_LoadEvent(
offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc
mixin _$ShopProductState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShopProductState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ShopProductState()';
}


}

/// @nodoc
class $ShopProductStateCopyWith<$Res>  {
$ShopProductStateCopyWith(ShopProductState _, $Res Function(ShopProductState) __);
}


/// Adds pattern-matching-related methods to [ShopProductState].
extension ShopProductStatePatterns on ShopProductState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _ListData value)?  list,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _ListData() when list != null:
return list(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _ListData value)  list,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _ListData():
return list(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _ListData value)?  list,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _ListData() when list != null:
return list(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( ResponseLazeList<Products> products,  List<CategoryProduct> categories,  List<MyPurchases>? myPurchased,  bool isError,  bool isLoad)?  list,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _ListData() when list != null:
return list(_that.products,_that.categories,_that.myPurchased,_that.isError,_that.isLoad);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( ResponseLazeList<Products> products,  List<CategoryProduct> categories,  List<MyPurchases>? myPurchased,  bool isError,  bool isLoad)  list,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _ListData():
return list(_that.products,_that.categories,_that.myPurchased,_that.isError,_that.isLoad);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( ResponseLazeList<Products> products,  List<CategoryProduct> categories,  List<MyPurchases>? myPurchased,  bool isError,  bool isLoad)?  list,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _ListData() when list != null:
return list(_that.products,_that.categories,_that.myPurchased,_that.isError,_that.isLoad);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements ShopProductState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ShopProductState.initial()';
}


}




/// @nodoc


class _ListData implements ShopProductState {
  const _ListData({required this.products, required final  List<CategoryProduct> categories, required final  List<MyPurchases>? myPurchased, required this.isError, required this.isLoad}): _categories = categories,_myPurchased = myPurchased;
  

 final  ResponseLazeList<Products> products;
 final  List<CategoryProduct> _categories;
 List<CategoryProduct> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<MyPurchases>? _myPurchased;
 List<MyPurchases>? get myPurchased {
  final value = _myPurchased;
  if (value == null) return null;
  if (_myPurchased is EqualUnmodifiableListView) return _myPurchased;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  bool isError;
 final  bool isLoad;

/// Create a copy of ShopProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListDataCopyWith<_ListData> get copyWith => __$ListDataCopyWithImpl<_ListData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListData&&(identical(other.products, products) || other.products == products)&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._myPurchased, _myPurchased)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.isLoad, isLoad) || other.isLoad == isLoad));
}


@override
int get hashCode => Object.hash(runtimeType,products,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_myPurchased),isError,isLoad);

@override
String toString() {
  return 'ShopProductState.list(products: $products, categories: $categories, myPurchased: $myPurchased, isError: $isError, isLoad: $isLoad)';
}


}

/// @nodoc
abstract mixin class _$ListDataCopyWith<$Res> implements $ShopProductStateCopyWith<$Res> {
  factory _$ListDataCopyWith(_ListData value, $Res Function(_ListData) _then) = __$ListDataCopyWithImpl;
@useResult
$Res call({
 ResponseLazeList<Products> products, List<CategoryProduct> categories, List<MyPurchases>? myPurchased, bool isError, bool isLoad
});




}
/// @nodoc
class __$ListDataCopyWithImpl<$Res>
    implements _$ListDataCopyWith<$Res> {
  __$ListDataCopyWithImpl(this._self, this._then);

  final _ListData _self;
  final $Res Function(_ListData) _then;

/// Create a copy of ShopProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? products = null,Object? categories = null,Object? myPurchased = freezed,Object? isError = null,Object? isLoad = null,}) {
  return _then(_ListData(
products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as ResponseLazeList<Products>,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryProduct>,myPurchased: freezed == myPurchased ? _self._myPurchased : myPurchased // ignore: cast_nullable_to_non_nullable
as List<MyPurchases>?,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,isLoad: null == isLoad ? _self.isLoad : isLoad // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
