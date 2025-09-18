// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Products implements DiagnosticableTreeMixin {

@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'created_by_id') int? get createdById;@JsonKey(name: 'updated_by_id') int? get updatedById;@JsonKey(name: 'category') Category? get category;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'description') String? get description;@JsonKey(name: 'language') String? get language;@JsonKey(name: 'type') ProductType? get type;@JsonKey(name: 'hide') bool? get hideProperty;@JsonKey(name: 'cover') String? get cover;@JsonKey(name: 'hover_cover') String? get hoverCover;@JsonKey(name: 'module_count') int? get moduleCount;@JsonKey(name: 'total_count_time') int? get totalCountTime;@JsonKey(name: 'status') String? get status;@JsonKey(name: 'sale_type') ProductSaleType? get saleType;@JsonKey(name: 'price') String? get price;@JsonKey(name: 'price_coin') int? get priceCoin;@JsonKey(name: 'limit') int? get limit;@JsonKey(name: 'middle_rating') String? get middleRating;@JsonKey(name: 'is_practical') bool? get isPractical;@JsonKey(name: 'purchased') bool? get purchased;
/// Create a copy of Products
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsCopyWith<Products> get copyWith => _$ProductsCopyWithImpl<Products>(this as Products, _$identity);

  /// Serializes this Products to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Products'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdById', createdById))..add(DiagnosticsProperty('updatedById', updatedById))..add(DiagnosticsProperty('category', category))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('language', language))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('hideProperty', hideProperty))..add(DiagnosticsProperty('cover', cover))..add(DiagnosticsProperty('hoverCover', hoverCover))..add(DiagnosticsProperty('moduleCount', moduleCount))..add(DiagnosticsProperty('totalCountTime', totalCountTime))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('saleType', saleType))..add(DiagnosticsProperty('price', price))..add(DiagnosticsProperty('priceCoin', priceCoin))..add(DiagnosticsProperty('limit', limit))..add(DiagnosticsProperty('middleRating', middleRating))..add(DiagnosticsProperty('isPractical', isPractical))..add(DiagnosticsProperty('purchased', purchased));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Products&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.updatedById, updatedById) || other.updatedById == updatedById)&&(identical(other.category, category) || other.category == category)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.language, language) || other.language == language)&&(identical(other.type, type) || other.type == type)&&(identical(other.hideProperty, hideProperty) || other.hideProperty == hideProperty)&&(identical(other.cover, cover) || other.cover == cover)&&(identical(other.hoverCover, hoverCover) || other.hoverCover == hoverCover)&&(identical(other.moduleCount, moduleCount) || other.moduleCount == moduleCount)&&(identical(other.totalCountTime, totalCountTime) || other.totalCountTime == totalCountTime)&&(identical(other.status, status) || other.status == status)&&(identical(other.saleType, saleType) || other.saleType == saleType)&&(identical(other.price, price) || other.price == price)&&(identical(other.priceCoin, priceCoin) || other.priceCoin == priceCoin)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.middleRating, middleRating) || other.middleRating == middleRating)&&(identical(other.isPractical, isPractical) || other.isPractical == isPractical)&&(identical(other.purchased, purchased) || other.purchased == purchased));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,createdAt,updatedAt,createdById,updatedById,category,id,name,description,language,type,hideProperty,cover,hoverCover,moduleCount,totalCountTime,status,saleType,price,priceCoin,limit,middleRating,isPractical,purchased]);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Products(createdAt: $createdAt, updatedAt: $updatedAt, createdById: $createdById, updatedById: $updatedById, category: $category, id: $id, name: $name, description: $description, language: $language, type: $type, hideProperty: $hideProperty, cover: $cover, hoverCover: $hoverCover, moduleCount: $moduleCount, totalCountTime: $totalCountTime, status: $status, saleType: $saleType, price: $price, priceCoin: $priceCoin, limit: $limit, middleRating: $middleRating, isPractical: $isPractical, purchased: $purchased)';
}


}

/// @nodoc
abstract mixin class $ProductsCopyWith<$Res>  {
  factory $ProductsCopyWith(Products value, $Res Function(Products) _then) = _$ProductsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by_id') int? createdById,@JsonKey(name: 'updated_by_id') int? updatedById,@JsonKey(name: 'category') Category? category,@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'description') String? description,@JsonKey(name: 'language') String? language,@JsonKey(name: 'type') ProductType? type,@JsonKey(name: 'hide') bool? hideProperty,@JsonKey(name: 'cover') String? cover,@JsonKey(name: 'hover_cover') String? hoverCover,@JsonKey(name: 'module_count') int? moduleCount,@JsonKey(name: 'total_count_time') int? totalCountTime,@JsonKey(name: 'status') String? status,@JsonKey(name: 'sale_type') ProductSaleType? saleType,@JsonKey(name: 'price') String? price,@JsonKey(name: 'price_coin') int? priceCoin,@JsonKey(name: 'limit') int? limit,@JsonKey(name: 'middle_rating') String? middleRating,@JsonKey(name: 'is_practical') bool? isPractical,@JsonKey(name: 'purchased') bool? purchased
});


$CategoryCopyWith<$Res>? get category;

}
/// @nodoc
class _$ProductsCopyWithImpl<$Res>
    implements $ProductsCopyWith<$Res> {
  _$ProductsCopyWithImpl(this._self, this._then);

  final Products _self;
  final $Res Function(Products) _then;

/// Create a copy of Products
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdById = freezed,Object? updatedById = freezed,Object? category = freezed,Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? language = freezed,Object? type = freezed,Object? hideProperty = freezed,Object? cover = freezed,Object? hoverCover = freezed,Object? moduleCount = freezed,Object? totalCountTime = freezed,Object? status = freezed,Object? saleType = freezed,Object? price = freezed,Object? priceCoin = freezed,Object? limit = freezed,Object? middleRating = freezed,Object? isPractical = freezed,Object? purchased = freezed,}) {
  return _then(_self.copyWith(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdById: freezed == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as int?,updatedById: freezed == updatedById ? _self.updatedById : updatedById // ignore: cast_nullable_to_non_nullable
as int?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ProductType?,hideProperty: freezed == hideProperty ? _self.hideProperty : hideProperty // ignore: cast_nullable_to_non_nullable
as bool?,cover: freezed == cover ? _self.cover : cover // ignore: cast_nullable_to_non_nullable
as String?,hoverCover: freezed == hoverCover ? _self.hoverCover : hoverCover // ignore: cast_nullable_to_non_nullable
as String?,moduleCount: freezed == moduleCount ? _self.moduleCount : moduleCount // ignore: cast_nullable_to_non_nullable
as int?,totalCountTime: freezed == totalCountTime ? _self.totalCountTime : totalCountTime // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,saleType: freezed == saleType ? _self.saleType : saleType // ignore: cast_nullable_to_non_nullable
as ProductSaleType?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,priceCoin: freezed == priceCoin ? _self.priceCoin : priceCoin // ignore: cast_nullable_to_non_nullable
as int?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,middleRating: freezed == middleRating ? _self.middleRating : middleRating // ignore: cast_nullable_to_non_nullable
as String?,isPractical: freezed == isPractical ? _self.isPractical : isPractical // ignore: cast_nullable_to_non_nullable
as bool?,purchased: freezed == purchased ? _self.purchased : purchased // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of Products
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $CategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// Adds pattern-matching-related methods to [Products].
extension ProductsPatterns on Products {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Products value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Products() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Products value)  $default,){
final _that = this;
switch (_that) {
case _Products():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Products value)?  $default,){
final _that = this;
switch (_that) {
case _Products() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'category')  Category? category, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'language')  String? language, @JsonKey(name: 'type')  ProductType? type, @JsonKey(name: 'hide')  bool? hideProperty, @JsonKey(name: 'cover')  String? cover, @JsonKey(name: 'hover_cover')  String? hoverCover, @JsonKey(name: 'module_count')  int? moduleCount, @JsonKey(name: 'total_count_time')  int? totalCountTime, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'sale_type')  ProductSaleType? saleType, @JsonKey(name: 'price')  String? price, @JsonKey(name: 'price_coin')  int? priceCoin, @JsonKey(name: 'limit')  int? limit, @JsonKey(name: 'middle_rating')  String? middleRating, @JsonKey(name: 'is_practical')  bool? isPractical, @JsonKey(name: 'purchased')  bool? purchased)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Products() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.category,_that.id,_that.name,_that.description,_that.language,_that.type,_that.hideProperty,_that.cover,_that.hoverCover,_that.moduleCount,_that.totalCountTime,_that.status,_that.saleType,_that.price,_that.priceCoin,_that.limit,_that.middleRating,_that.isPractical,_that.purchased);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'category')  Category? category, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'language')  String? language, @JsonKey(name: 'type')  ProductType? type, @JsonKey(name: 'hide')  bool? hideProperty, @JsonKey(name: 'cover')  String? cover, @JsonKey(name: 'hover_cover')  String? hoverCover, @JsonKey(name: 'module_count')  int? moduleCount, @JsonKey(name: 'total_count_time')  int? totalCountTime, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'sale_type')  ProductSaleType? saleType, @JsonKey(name: 'price')  String? price, @JsonKey(name: 'price_coin')  int? priceCoin, @JsonKey(name: 'limit')  int? limit, @JsonKey(name: 'middle_rating')  String? middleRating, @JsonKey(name: 'is_practical')  bool? isPractical, @JsonKey(name: 'purchased')  bool? purchased)  $default,) {final _that = this;
switch (_that) {
case _Products():
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.category,_that.id,_that.name,_that.description,_that.language,_that.type,_that.hideProperty,_that.cover,_that.hoverCover,_that.moduleCount,_that.totalCountTime,_that.status,_that.saleType,_that.price,_that.priceCoin,_that.limit,_that.middleRating,_that.isPractical,_that.purchased);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'category')  Category? category, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'language')  String? language, @JsonKey(name: 'type')  ProductType? type, @JsonKey(name: 'hide')  bool? hideProperty, @JsonKey(name: 'cover')  String? cover, @JsonKey(name: 'hover_cover')  String? hoverCover, @JsonKey(name: 'module_count')  int? moduleCount, @JsonKey(name: 'total_count_time')  int? totalCountTime, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'sale_type')  ProductSaleType? saleType, @JsonKey(name: 'price')  String? price, @JsonKey(name: 'price_coin')  int? priceCoin, @JsonKey(name: 'limit')  int? limit, @JsonKey(name: 'middle_rating')  String? middleRating, @JsonKey(name: 'is_practical')  bool? isPractical, @JsonKey(name: 'purchased')  bool? purchased)?  $default,) {final _that = this;
switch (_that) {
case _Products() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.category,_that.id,_that.name,_that.description,_that.language,_that.type,_that.hideProperty,_that.cover,_that.hoverCover,_that.moduleCount,_that.totalCountTime,_that.status,_that.saleType,_that.price,_that.priceCoin,_that.limit,_that.middleRating,_that.isPractical,_that.purchased);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Products with DiagnosticableTreeMixin implements Products {
  const _Products({@JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'created_by_id') this.createdById, @JsonKey(name: 'updated_by_id') this.updatedById, @JsonKey(name: 'category') this.category, @JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'description') this.description, @JsonKey(name: 'language') this.language, @JsonKey(name: 'type') this.type, @JsonKey(name: 'hide') this.hideProperty, @JsonKey(name: 'cover') this.cover, @JsonKey(name: 'hover_cover') this.hoverCover, @JsonKey(name: 'module_count') this.moduleCount, @JsonKey(name: 'total_count_time') this.totalCountTime, @JsonKey(name: 'status') this.status, @JsonKey(name: 'sale_type') this.saleType, @JsonKey(name: 'price') this.price, @JsonKey(name: 'price_coin') this.priceCoin, @JsonKey(name: 'limit') this.limit, @JsonKey(name: 'middle_rating') this.middleRating, @JsonKey(name: 'is_practical') this.isPractical, @JsonKey(name: 'purchased') this.purchased});
  factory _Products.fromJson(Map<String, dynamic> json) => _$ProductsFromJson(json);

@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'created_by_id') final  int? createdById;
@override@JsonKey(name: 'updated_by_id') final  int? updatedById;
@override@JsonKey(name: 'category') final  Category? category;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'description') final  String? description;
@override@JsonKey(name: 'language') final  String? language;
@override@JsonKey(name: 'type') final  ProductType? type;
@override@JsonKey(name: 'hide') final  bool? hideProperty;
@override@JsonKey(name: 'cover') final  String? cover;
@override@JsonKey(name: 'hover_cover') final  String? hoverCover;
@override@JsonKey(name: 'module_count') final  int? moduleCount;
@override@JsonKey(name: 'total_count_time') final  int? totalCountTime;
@override@JsonKey(name: 'status') final  String? status;
@override@JsonKey(name: 'sale_type') final  ProductSaleType? saleType;
@override@JsonKey(name: 'price') final  String? price;
@override@JsonKey(name: 'price_coin') final  int? priceCoin;
@override@JsonKey(name: 'limit') final  int? limit;
@override@JsonKey(name: 'middle_rating') final  String? middleRating;
@override@JsonKey(name: 'is_practical') final  bool? isPractical;
@override@JsonKey(name: 'purchased') final  bool? purchased;

/// Create a copy of Products
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductsCopyWith<_Products> get copyWith => __$ProductsCopyWithImpl<_Products>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductsToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Products'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdById', createdById))..add(DiagnosticsProperty('updatedById', updatedById))..add(DiagnosticsProperty('category', category))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('language', language))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('hideProperty', hideProperty))..add(DiagnosticsProperty('cover', cover))..add(DiagnosticsProperty('hoverCover', hoverCover))..add(DiagnosticsProperty('moduleCount', moduleCount))..add(DiagnosticsProperty('totalCountTime', totalCountTime))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('saleType', saleType))..add(DiagnosticsProperty('price', price))..add(DiagnosticsProperty('priceCoin', priceCoin))..add(DiagnosticsProperty('limit', limit))..add(DiagnosticsProperty('middleRating', middleRating))..add(DiagnosticsProperty('isPractical', isPractical))..add(DiagnosticsProperty('purchased', purchased));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Products&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.updatedById, updatedById) || other.updatedById == updatedById)&&(identical(other.category, category) || other.category == category)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.language, language) || other.language == language)&&(identical(other.type, type) || other.type == type)&&(identical(other.hideProperty, hideProperty) || other.hideProperty == hideProperty)&&(identical(other.cover, cover) || other.cover == cover)&&(identical(other.hoverCover, hoverCover) || other.hoverCover == hoverCover)&&(identical(other.moduleCount, moduleCount) || other.moduleCount == moduleCount)&&(identical(other.totalCountTime, totalCountTime) || other.totalCountTime == totalCountTime)&&(identical(other.status, status) || other.status == status)&&(identical(other.saleType, saleType) || other.saleType == saleType)&&(identical(other.price, price) || other.price == price)&&(identical(other.priceCoin, priceCoin) || other.priceCoin == priceCoin)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.middleRating, middleRating) || other.middleRating == middleRating)&&(identical(other.isPractical, isPractical) || other.isPractical == isPractical)&&(identical(other.purchased, purchased) || other.purchased == purchased));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,createdAt,updatedAt,createdById,updatedById,category,id,name,description,language,type,hideProperty,cover,hoverCover,moduleCount,totalCountTime,status,saleType,price,priceCoin,limit,middleRating,isPractical,purchased]);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Products(createdAt: $createdAt, updatedAt: $updatedAt, createdById: $createdById, updatedById: $updatedById, category: $category, id: $id, name: $name, description: $description, language: $language, type: $type, hideProperty: $hideProperty, cover: $cover, hoverCover: $hoverCover, moduleCount: $moduleCount, totalCountTime: $totalCountTime, status: $status, saleType: $saleType, price: $price, priceCoin: $priceCoin, limit: $limit, middleRating: $middleRating, isPractical: $isPractical, purchased: $purchased)';
}


}

/// @nodoc
abstract mixin class _$ProductsCopyWith<$Res> implements $ProductsCopyWith<$Res> {
  factory _$ProductsCopyWith(_Products value, $Res Function(_Products) _then) = __$ProductsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by_id') int? createdById,@JsonKey(name: 'updated_by_id') int? updatedById,@JsonKey(name: 'category') Category? category,@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'description') String? description,@JsonKey(name: 'language') String? language,@JsonKey(name: 'type') ProductType? type,@JsonKey(name: 'hide') bool? hideProperty,@JsonKey(name: 'cover') String? cover,@JsonKey(name: 'hover_cover') String? hoverCover,@JsonKey(name: 'module_count') int? moduleCount,@JsonKey(name: 'total_count_time') int? totalCountTime,@JsonKey(name: 'status') String? status,@JsonKey(name: 'sale_type') ProductSaleType? saleType,@JsonKey(name: 'price') String? price,@JsonKey(name: 'price_coin') int? priceCoin,@JsonKey(name: 'limit') int? limit,@JsonKey(name: 'middle_rating') String? middleRating,@JsonKey(name: 'is_practical') bool? isPractical,@JsonKey(name: 'purchased') bool? purchased
});


@override $CategoryCopyWith<$Res>? get category;

}
/// @nodoc
class __$ProductsCopyWithImpl<$Res>
    implements _$ProductsCopyWith<$Res> {
  __$ProductsCopyWithImpl(this._self, this._then);

  final _Products _self;
  final $Res Function(_Products) _then;

/// Create a copy of Products
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdById = freezed,Object? updatedById = freezed,Object? category = freezed,Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? language = freezed,Object? type = freezed,Object? hideProperty = freezed,Object? cover = freezed,Object? hoverCover = freezed,Object? moduleCount = freezed,Object? totalCountTime = freezed,Object? status = freezed,Object? saleType = freezed,Object? price = freezed,Object? priceCoin = freezed,Object? limit = freezed,Object? middleRating = freezed,Object? isPractical = freezed,Object? purchased = freezed,}) {
  return _then(_Products(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdById: freezed == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as int?,updatedById: freezed == updatedById ? _self.updatedById : updatedById // ignore: cast_nullable_to_non_nullable
as int?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ProductType?,hideProperty: freezed == hideProperty ? _self.hideProperty : hideProperty // ignore: cast_nullable_to_non_nullable
as bool?,cover: freezed == cover ? _self.cover : cover // ignore: cast_nullable_to_non_nullable
as String?,hoverCover: freezed == hoverCover ? _self.hoverCover : hoverCover // ignore: cast_nullable_to_non_nullable
as String?,moduleCount: freezed == moduleCount ? _self.moduleCount : moduleCount // ignore: cast_nullable_to_non_nullable
as int?,totalCountTime: freezed == totalCountTime ? _self.totalCountTime : totalCountTime // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,saleType: freezed == saleType ? _self.saleType : saleType // ignore: cast_nullable_to_non_nullable
as ProductSaleType?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,priceCoin: freezed == priceCoin ? _self.priceCoin : priceCoin // ignore: cast_nullable_to_non_nullable
as int?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,middleRating: freezed == middleRating ? _self.middleRating : middleRating // ignore: cast_nullable_to_non_nullable
as String?,isPractical: freezed == isPractical ? _self.isPractical : isPractical // ignore: cast_nullable_to_non_nullable
as bool?,purchased: freezed == purchased ? _self.purchased : purchased // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of Products
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $CategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// @nodoc
mixin _$Category implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'color') String? get color;
/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryCopyWith<Category> get copyWith => _$CategoryCopyWithImpl<Category>(this as Category, _$identity);

  /// Serializes this Category to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Category'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('color', color));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Category&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.color, color) || other.color == color));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,color);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Category(id: $id, name: $name, color: $color)';
}


}

/// @nodoc
abstract mixin class $CategoryCopyWith<$Res>  {
  factory $CategoryCopyWith(Category value, $Res Function(Category) _then) = _$CategoryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'color') String? color
});




}
/// @nodoc
class _$CategoryCopyWithImpl<$Res>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._self, this._then);

  final Category _self;
  final $Res Function(Category) _then;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? color = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Category].
extension CategoryPatterns on Category {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Category value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Category() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Category value)  $default,){
final _that = this;
switch (_that) {
case _Category():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Category value)?  $default,){
final _that = this;
switch (_that) {
case _Category() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'color')  String? color)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that.id,_that.name,_that.color);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'color')  String? color)  $default,) {final _that = this;
switch (_that) {
case _Category():
return $default(_that.id,_that.name,_that.color);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'color')  String? color)?  $default,) {final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that.id,_that.name,_that.color);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Category with DiagnosticableTreeMixin implements Category {
  const _Category({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'color') this.color});
  factory _Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'color') final  String? color;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryCopyWith<_Category> get copyWith => __$CategoryCopyWithImpl<_Category>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Category'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('color', color));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Category&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.color, color) || other.color == color));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,color);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Category(id: $id, name: $name, color: $color)';
}


}

/// @nodoc
abstract mixin class _$CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) _then) = __$CategoryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'color') String? color
});




}
/// @nodoc
class __$CategoryCopyWithImpl<$Res>
    implements _$CategoryCopyWith<$Res> {
  __$CategoryCopyWithImpl(this._self, this._then);

  final _Category _self;
  final $Res Function(_Category) _then;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? color = freezed,}) {
  return _then(_Category(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
