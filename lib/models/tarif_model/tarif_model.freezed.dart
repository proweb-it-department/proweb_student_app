// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tarif_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TarifForSale implements DiagnosticableTreeMixin {

@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'created_by_id') int? get createdById;@JsonKey(name: 'updated_by_id') int? get updatedById;@JsonKey(name: 'course') Course? get course;@JsonKey(name: 'services') List<Services>? get services;@JsonKey(name: 'products') List<ProductsinTarif>? get products;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'price') String? get price;@JsonKey(name: 'status') String? get status;
/// Create a copy of TarifForSale
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TarifForSaleCopyWith<TarifForSale> get copyWith => _$TarifForSaleCopyWithImpl<TarifForSale>(this as TarifForSale, _$identity);

  /// Serializes this TarifForSale to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TarifForSale'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdById', createdById))..add(DiagnosticsProperty('updatedById', updatedById))..add(DiagnosticsProperty('course', course))..add(DiagnosticsProperty('services', services))..add(DiagnosticsProperty('products', products))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('price', price))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TarifForSale&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.updatedById, updatedById) || other.updatedById == updatedById)&&(identical(other.course, course) || other.course == course)&&const DeepCollectionEquality().equals(other.services, services)&&const DeepCollectionEquality().equals(other.products, products)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdById,updatedById,course,const DeepCollectionEquality().hash(services),const DeepCollectionEquality().hash(products),id,name,price,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TarifForSale(createdAt: $createdAt, updatedAt: $updatedAt, createdById: $createdById, updatedById: $updatedById, course: $course, services: $services, products: $products, id: $id, name: $name, price: $price, status: $status)';
}


}

/// @nodoc
abstract mixin class $TarifForSaleCopyWith<$Res>  {
  factory $TarifForSaleCopyWith(TarifForSale value, $Res Function(TarifForSale) _then) = _$TarifForSaleCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by_id') int? createdById,@JsonKey(name: 'updated_by_id') int? updatedById,@JsonKey(name: 'course') Course? course,@JsonKey(name: 'services') List<Services>? services,@JsonKey(name: 'products') List<ProductsinTarif>? products,@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'price') String? price,@JsonKey(name: 'status') String? status
});


$CourseCopyWith<$Res>? get course;

}
/// @nodoc
class _$TarifForSaleCopyWithImpl<$Res>
    implements $TarifForSaleCopyWith<$Res> {
  _$TarifForSaleCopyWithImpl(this._self, this._then);

  final TarifForSale _self;
  final $Res Function(TarifForSale) _then;

/// Create a copy of TarifForSale
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdById = freezed,Object? updatedById = freezed,Object? course = freezed,Object? services = freezed,Object? products = freezed,Object? id = freezed,Object? name = freezed,Object? price = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdById: freezed == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as int?,updatedById: freezed == updatedById ? _self.updatedById : updatedById // ignore: cast_nullable_to_non_nullable
as int?,course: freezed == course ? _self.course : course // ignore: cast_nullable_to_non_nullable
as Course?,services: freezed == services ? _self.services : services // ignore: cast_nullable_to_non_nullable
as List<Services>?,products: freezed == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<ProductsinTarif>?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of TarifForSale
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


/// Adds pattern-matching-related methods to [TarifForSale].
extension TarifForSalePatterns on TarifForSale {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TarifForSale value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TarifForSale() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TarifForSale value)  $default,){
final _that = this;
switch (_that) {
case _TarifForSale():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TarifForSale value)?  $default,){
final _that = this;
switch (_that) {
case _TarifForSale() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'course')  Course? course, @JsonKey(name: 'services')  List<Services>? services, @JsonKey(name: 'products')  List<ProductsinTarif>? products, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'price')  String? price, @JsonKey(name: 'status')  String? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TarifForSale() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.course,_that.services,_that.products,_that.id,_that.name,_that.price,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'course')  Course? course, @JsonKey(name: 'services')  List<Services>? services, @JsonKey(name: 'products')  List<ProductsinTarif>? products, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'price')  String? price, @JsonKey(name: 'status')  String? status)  $default,) {final _that = this;
switch (_that) {
case _TarifForSale():
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.course,_that.services,_that.products,_that.id,_that.name,_that.price,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'course')  Course? course, @JsonKey(name: 'services')  List<Services>? services, @JsonKey(name: 'products')  List<ProductsinTarif>? products, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'price')  String? price, @JsonKey(name: 'status')  String? status)?  $default,) {final _that = this;
switch (_that) {
case _TarifForSale() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.course,_that.services,_that.products,_that.id,_that.name,_that.price,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TarifForSale with DiagnosticableTreeMixin implements TarifForSale {
  const _TarifForSale({@JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'created_by_id') this.createdById, @JsonKey(name: 'updated_by_id') this.updatedById, @JsonKey(name: 'course') this.course, @JsonKey(name: 'services') final  List<Services>? services, @JsonKey(name: 'products') final  List<ProductsinTarif>? products, @JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'price') this.price, @JsonKey(name: 'status') this.status}): _services = services,_products = products;
  factory _TarifForSale.fromJson(Map<String, dynamic> json) => _$TarifForSaleFromJson(json);

@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'created_by_id') final  int? createdById;
@override@JsonKey(name: 'updated_by_id') final  int? updatedById;
@override@JsonKey(name: 'course') final  Course? course;
 final  List<Services>? _services;
@override@JsonKey(name: 'services') List<Services>? get services {
  final value = _services;
  if (value == null) return null;
  if (_services is EqualUnmodifiableListView) return _services;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<ProductsinTarif>? _products;
@override@JsonKey(name: 'products') List<ProductsinTarif>? get products {
  final value = _products;
  if (value == null) return null;
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'price') final  String? price;
@override@JsonKey(name: 'status') final  String? status;

/// Create a copy of TarifForSale
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TarifForSaleCopyWith<_TarifForSale> get copyWith => __$TarifForSaleCopyWithImpl<_TarifForSale>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TarifForSaleToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TarifForSale'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdById', createdById))..add(DiagnosticsProperty('updatedById', updatedById))..add(DiagnosticsProperty('course', course))..add(DiagnosticsProperty('services', services))..add(DiagnosticsProperty('products', products))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('price', price))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TarifForSale&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.updatedById, updatedById) || other.updatedById == updatedById)&&(identical(other.course, course) || other.course == course)&&const DeepCollectionEquality().equals(other._services, _services)&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdById,updatedById,course,const DeepCollectionEquality().hash(_services),const DeepCollectionEquality().hash(_products),id,name,price,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TarifForSale(createdAt: $createdAt, updatedAt: $updatedAt, createdById: $createdById, updatedById: $updatedById, course: $course, services: $services, products: $products, id: $id, name: $name, price: $price, status: $status)';
}


}

/// @nodoc
abstract mixin class _$TarifForSaleCopyWith<$Res> implements $TarifForSaleCopyWith<$Res> {
  factory _$TarifForSaleCopyWith(_TarifForSale value, $Res Function(_TarifForSale) _then) = __$TarifForSaleCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by_id') int? createdById,@JsonKey(name: 'updated_by_id') int? updatedById,@JsonKey(name: 'course') Course? course,@JsonKey(name: 'services') List<Services>? services,@JsonKey(name: 'products') List<ProductsinTarif>? products,@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'price') String? price,@JsonKey(name: 'status') String? status
});


@override $CourseCopyWith<$Res>? get course;

}
/// @nodoc
class __$TarifForSaleCopyWithImpl<$Res>
    implements _$TarifForSaleCopyWith<$Res> {
  __$TarifForSaleCopyWithImpl(this._self, this._then);

  final _TarifForSale _self;
  final $Res Function(_TarifForSale) _then;

/// Create a copy of TarifForSale
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdById = freezed,Object? updatedById = freezed,Object? course = freezed,Object? services = freezed,Object? products = freezed,Object? id = freezed,Object? name = freezed,Object? price = freezed,Object? status = freezed,}) {
  return _then(_TarifForSale(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdById: freezed == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as int?,updatedById: freezed == updatedById ? _self.updatedById : updatedById // ignore: cast_nullable_to_non_nullable
as int?,course: freezed == course ? _self.course : course // ignore: cast_nullable_to_non_nullable
as Course?,services: freezed == services ? _self._services : services // ignore: cast_nullable_to_non_nullable
as List<Services>?,products: freezed == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductsinTarif>?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of TarifForSale
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
mixin _$Services implements DiagnosticableTreeMixin {

@JsonKey(name: 'service') Service? get service;@JsonKey(name: 'id') int? get id;
/// Create a copy of Services
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServicesCopyWith<Services> get copyWith => _$ServicesCopyWithImpl<Services>(this as Services, _$identity);

  /// Serializes this Services to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Services'))
    ..add(DiagnosticsProperty('service', service))..add(DiagnosticsProperty('id', id));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Services&&(identical(other.service, service) || other.service == service)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,service,id);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Services(service: $service, id: $id)';
}


}

/// @nodoc
abstract mixin class $ServicesCopyWith<$Res>  {
  factory $ServicesCopyWith(Services value, $Res Function(Services) _then) = _$ServicesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'service') Service? service,@JsonKey(name: 'id') int? id
});


$ServiceCopyWith<$Res>? get service;

}
/// @nodoc
class _$ServicesCopyWithImpl<$Res>
    implements $ServicesCopyWith<$Res> {
  _$ServicesCopyWithImpl(this._self, this._then);

  final Services _self;
  final $Res Function(Services) _then;

/// Create a copy of Services
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? service = freezed,Object? id = freezed,}) {
  return _then(_self.copyWith(
service: freezed == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as Service?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of Services
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceCopyWith<$Res>? get service {
    if (_self.service == null) {
    return null;
  }

  return $ServiceCopyWith<$Res>(_self.service!, (value) {
    return _then(_self.copyWith(service: value));
  });
}
}


/// Adds pattern-matching-related methods to [Services].
extension ServicesPatterns on Services {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Services value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Services() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Services value)  $default,){
final _that = this;
switch (_that) {
case _Services():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Services value)?  $default,){
final _that = this;
switch (_that) {
case _Services() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'service')  Service? service, @JsonKey(name: 'id')  int? id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Services() when $default != null:
return $default(_that.service,_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'service')  Service? service, @JsonKey(name: 'id')  int? id)  $default,) {final _that = this;
switch (_that) {
case _Services():
return $default(_that.service,_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'service')  Service? service, @JsonKey(name: 'id')  int? id)?  $default,) {final _that = this;
switch (_that) {
case _Services() when $default != null:
return $default(_that.service,_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Services with DiagnosticableTreeMixin implements Services {
  const _Services({@JsonKey(name: 'service') this.service, @JsonKey(name: 'id') this.id});
  factory _Services.fromJson(Map<String, dynamic> json) => _$ServicesFromJson(json);

@override@JsonKey(name: 'service') final  Service? service;
@override@JsonKey(name: 'id') final  int? id;

/// Create a copy of Services
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServicesCopyWith<_Services> get copyWith => __$ServicesCopyWithImpl<_Services>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServicesToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Services'))
    ..add(DiagnosticsProperty('service', service))..add(DiagnosticsProperty('id', id));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Services&&(identical(other.service, service) || other.service == service)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,service,id);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Services(service: $service, id: $id)';
}


}

/// @nodoc
abstract mixin class _$ServicesCopyWith<$Res> implements $ServicesCopyWith<$Res> {
  factory _$ServicesCopyWith(_Services value, $Res Function(_Services) _then) = __$ServicesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'service') Service? service,@JsonKey(name: 'id') int? id
});


@override $ServiceCopyWith<$Res>? get service;

}
/// @nodoc
class __$ServicesCopyWithImpl<$Res>
    implements _$ServicesCopyWith<$Res> {
  __$ServicesCopyWithImpl(this._self, this._then);

  final _Services _self;
  final $Res Function(_Services) _then;

/// Create a copy of Services
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? service = freezed,Object? id = freezed,}) {
  return _then(_Services(
service: freezed == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as Service?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of Services
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceCopyWith<$Res>? get service {
    if (_self.service == null) {
    return null;
  }

  return $ServiceCopyWith<$Res>(_self.service!, (value) {
    return _then(_self.copyWith(service: value));
  });
}
}


/// @nodoc
mixin _$Service implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'description') String? get description;@JsonKey(name: 'days') int? get days;@JsonKey(name: 'type') ServiceType? get type;@JsonKey(name: 'status') String? get status;@JsonKey(name: 'cover') String? get cover;
/// Create a copy of Service
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceCopyWith<Service> get copyWith => _$ServiceCopyWithImpl<Service>(this as Service, _$identity);

  /// Serializes this Service to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Service'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('days', days))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('cover', cover));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Service&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.days, days) || other.days == days)&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.cover, cover) || other.cover == cover));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,days,type,status,cover);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Service(id: $id, name: $name, description: $description, days: $days, type: $type, status: $status, cover: $cover)';
}


}

/// @nodoc
abstract mixin class $ServiceCopyWith<$Res>  {
  factory $ServiceCopyWith(Service value, $Res Function(Service) _then) = _$ServiceCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'description') String? description,@JsonKey(name: 'days') int? days,@JsonKey(name: 'type') ServiceType? type,@JsonKey(name: 'status') String? status,@JsonKey(name: 'cover') String? cover
});




}
/// @nodoc
class _$ServiceCopyWithImpl<$Res>
    implements $ServiceCopyWith<$Res> {
  _$ServiceCopyWithImpl(this._self, this._then);

  final Service _self;
  final $Res Function(Service) _then;

/// Create a copy of Service
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? days = freezed,Object? type = freezed,Object? status = freezed,Object? cover = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,days: freezed == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ServiceType?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,cover: freezed == cover ? _self.cover : cover // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Service].
extension ServicePatterns on Service {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Service value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Service() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Service value)  $default,){
final _that = this;
switch (_that) {
case _Service():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Service value)?  $default,){
final _that = this;
switch (_that) {
case _Service() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'days')  int? days, @JsonKey(name: 'type')  ServiceType? type, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'cover')  String? cover)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Service() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.days,_that.type,_that.status,_that.cover);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'days')  int? days, @JsonKey(name: 'type')  ServiceType? type, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'cover')  String? cover)  $default,) {final _that = this;
switch (_that) {
case _Service():
return $default(_that.id,_that.name,_that.description,_that.days,_that.type,_that.status,_that.cover);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'days')  int? days, @JsonKey(name: 'type')  ServiceType? type, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'cover')  String? cover)?  $default,) {final _that = this;
switch (_that) {
case _Service() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.days,_that.type,_that.status,_that.cover);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Service with DiagnosticableTreeMixin implements Service {
  const _Service({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'description') this.description, @JsonKey(name: 'days') this.days, @JsonKey(name: 'type') this.type, @JsonKey(name: 'status') this.status, @JsonKey(name: 'cover') this.cover});
  factory _Service.fromJson(Map<String, dynamic> json) => _$ServiceFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'description') final  String? description;
@override@JsonKey(name: 'days') final  int? days;
@override@JsonKey(name: 'type') final  ServiceType? type;
@override@JsonKey(name: 'status') final  String? status;
@override@JsonKey(name: 'cover') final  String? cover;

/// Create a copy of Service
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServiceCopyWith<_Service> get copyWith => __$ServiceCopyWithImpl<_Service>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServiceToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Service'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('days', days))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('cover', cover));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Service&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.days, days) || other.days == days)&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.cover, cover) || other.cover == cover));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,days,type,status,cover);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Service(id: $id, name: $name, description: $description, days: $days, type: $type, status: $status, cover: $cover)';
}


}

/// @nodoc
abstract mixin class _$ServiceCopyWith<$Res> implements $ServiceCopyWith<$Res> {
  factory _$ServiceCopyWith(_Service value, $Res Function(_Service) _then) = __$ServiceCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'description') String? description,@JsonKey(name: 'days') int? days,@JsonKey(name: 'type') ServiceType? type,@JsonKey(name: 'status') String? status,@JsonKey(name: 'cover') String? cover
});




}
/// @nodoc
class __$ServiceCopyWithImpl<$Res>
    implements _$ServiceCopyWith<$Res> {
  __$ServiceCopyWithImpl(this._self, this._then);

  final _Service _self;
  final $Res Function(_Service) _then;

/// Create a copy of Service
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? days = freezed,Object? type = freezed,Object? status = freezed,Object? cover = freezed,}) {
  return _then(_Service(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,days: freezed == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ServiceType?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,cover: freezed == cover ? _self.cover : cover // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ProductsinTarif implements DiagnosticableTreeMixin {

@JsonKey(name: 'product') Product? get product;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'full_access') bool? get fullAccess;@JsonKey(name: 'lesson_number') int? get lessonNumber;
/// Create a copy of ProductsinTarif
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsinTarifCopyWith<ProductsinTarif> get copyWith => _$ProductsinTarifCopyWithImpl<ProductsinTarif>(this as ProductsinTarif, _$identity);

  /// Serializes this ProductsinTarif to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductsinTarif'))
    ..add(DiagnosticsProperty('product', product))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('fullAccess', fullAccess))..add(DiagnosticsProperty('lessonNumber', lessonNumber));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsinTarif&&(identical(other.product, product) || other.product == product)&&(identical(other.id, id) || other.id == id)&&(identical(other.fullAccess, fullAccess) || other.fullAccess == fullAccess)&&(identical(other.lessonNumber, lessonNumber) || other.lessonNumber == lessonNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,product,id,fullAccess,lessonNumber);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductsinTarif(product: $product, id: $id, fullAccess: $fullAccess, lessonNumber: $lessonNumber)';
}


}

/// @nodoc
abstract mixin class $ProductsinTarifCopyWith<$Res>  {
  factory $ProductsinTarifCopyWith(ProductsinTarif value, $Res Function(ProductsinTarif) _then) = _$ProductsinTarifCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'product') Product? product,@JsonKey(name: 'id') int? id,@JsonKey(name: 'full_access') bool? fullAccess,@JsonKey(name: 'lesson_number') int? lessonNumber
});


$ProductCopyWith<$Res>? get product;

}
/// @nodoc
class _$ProductsinTarifCopyWithImpl<$Res>
    implements $ProductsinTarifCopyWith<$Res> {
  _$ProductsinTarifCopyWithImpl(this._self, this._then);

  final ProductsinTarif _self;
  final $Res Function(ProductsinTarif) _then;

/// Create a copy of ProductsinTarif
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? product = freezed,Object? id = freezed,Object? fullAccess = freezed,Object? lessonNumber = freezed,}) {
  return _then(_self.copyWith(
product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,fullAccess: freezed == fullAccess ? _self.fullAccess : fullAccess // ignore: cast_nullable_to_non_nullable
as bool?,lessonNumber: freezed == lessonNumber ? _self.lessonNumber : lessonNumber // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of ProductsinTarif
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ProductCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductsinTarif].
extension ProductsinTarifPatterns on ProductsinTarif {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductsinTarif value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductsinTarif() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductsinTarif value)  $default,){
final _that = this;
switch (_that) {
case _ProductsinTarif():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductsinTarif value)?  $default,){
final _that = this;
switch (_that) {
case _ProductsinTarif() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'product')  Product? product, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'full_access')  bool? fullAccess, @JsonKey(name: 'lesson_number')  int? lessonNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductsinTarif() when $default != null:
return $default(_that.product,_that.id,_that.fullAccess,_that.lessonNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'product')  Product? product, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'full_access')  bool? fullAccess, @JsonKey(name: 'lesson_number')  int? lessonNumber)  $default,) {final _that = this;
switch (_that) {
case _ProductsinTarif():
return $default(_that.product,_that.id,_that.fullAccess,_that.lessonNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'product')  Product? product, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'full_access')  bool? fullAccess, @JsonKey(name: 'lesson_number')  int? lessonNumber)?  $default,) {final _that = this;
switch (_that) {
case _ProductsinTarif() when $default != null:
return $default(_that.product,_that.id,_that.fullAccess,_that.lessonNumber);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductsinTarif with DiagnosticableTreeMixin implements ProductsinTarif {
  const _ProductsinTarif({@JsonKey(name: 'product') this.product, @JsonKey(name: 'id') this.id, @JsonKey(name: 'full_access') this.fullAccess, @JsonKey(name: 'lesson_number') this.lessonNumber});
  factory _ProductsinTarif.fromJson(Map<String, dynamic> json) => _$ProductsinTarifFromJson(json);

@override@JsonKey(name: 'product') final  Product? product;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'full_access') final  bool? fullAccess;
@override@JsonKey(name: 'lesson_number') final  int? lessonNumber;

/// Create a copy of ProductsinTarif
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductsinTarifCopyWith<_ProductsinTarif> get copyWith => __$ProductsinTarifCopyWithImpl<_ProductsinTarif>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductsinTarifToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductsinTarif'))
    ..add(DiagnosticsProperty('product', product))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('fullAccess', fullAccess))..add(DiagnosticsProperty('lessonNumber', lessonNumber));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductsinTarif&&(identical(other.product, product) || other.product == product)&&(identical(other.id, id) || other.id == id)&&(identical(other.fullAccess, fullAccess) || other.fullAccess == fullAccess)&&(identical(other.lessonNumber, lessonNumber) || other.lessonNumber == lessonNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,product,id,fullAccess,lessonNumber);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductsinTarif(product: $product, id: $id, fullAccess: $fullAccess, lessonNumber: $lessonNumber)';
}


}

/// @nodoc
abstract mixin class _$ProductsinTarifCopyWith<$Res> implements $ProductsinTarifCopyWith<$Res> {
  factory _$ProductsinTarifCopyWith(_ProductsinTarif value, $Res Function(_ProductsinTarif) _then) = __$ProductsinTarifCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'product') Product? product,@JsonKey(name: 'id') int? id,@JsonKey(name: 'full_access') bool? fullAccess,@JsonKey(name: 'lesson_number') int? lessonNumber
});


@override $ProductCopyWith<$Res>? get product;

}
/// @nodoc
class __$ProductsinTarifCopyWithImpl<$Res>
    implements _$ProductsinTarifCopyWith<$Res> {
  __$ProductsinTarifCopyWithImpl(this._self, this._then);

  final _ProductsinTarif _self;
  final $Res Function(_ProductsinTarif) _then;

/// Create a copy of ProductsinTarif
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? product = freezed,Object? id = freezed,Object? fullAccess = freezed,Object? lessonNumber = freezed,}) {
  return _then(_ProductsinTarif(
product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,fullAccess: freezed == fullAccess ? _self.fullAccess : fullAccess // ignore: cast_nullable_to_non_nullable
as bool?,lessonNumber: freezed == lessonNumber ? _self.lessonNumber : lessonNumber // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of ProductsinTarif
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ProductCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// @nodoc
mixin _$Product implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'description') String? get description;@JsonKey(name: 'type') String? get type;@JsonKey(name: 'cover') String? get cover;@JsonKey(name: 'module_count') int? get moduleCount;@JsonKey(name: 'total_count_time') int? get totalCountTime;@JsonKey(name: 'status') String? get status;
/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCopyWith<Product> get copyWith => _$ProductCopyWithImpl<Product>(this as Product, _$identity);

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Product'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('cover', cover))..add(DiagnosticsProperty('moduleCount', moduleCount))..add(DiagnosticsProperty('totalCountTime', totalCountTime))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Product&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.type, type) || other.type == type)&&(identical(other.cover, cover) || other.cover == cover)&&(identical(other.moduleCount, moduleCount) || other.moduleCount == moduleCount)&&(identical(other.totalCountTime, totalCountTime) || other.totalCountTime == totalCountTime)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,type,cover,moduleCount,totalCountTime,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Product(id: $id, name: $name, description: $description, type: $type, cover: $cover, moduleCount: $moduleCount, totalCountTime: $totalCountTime, status: $status)';
}


}

/// @nodoc
abstract mixin class $ProductCopyWith<$Res>  {
  factory $ProductCopyWith(Product value, $Res Function(Product) _then) = _$ProductCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'description') String? description,@JsonKey(name: 'type') String? type,@JsonKey(name: 'cover') String? cover,@JsonKey(name: 'module_count') int? moduleCount,@JsonKey(name: 'total_count_time') int? totalCountTime,@JsonKey(name: 'status') String? status
});




}
/// @nodoc
class _$ProductCopyWithImpl<$Res>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._self, this._then);

  final Product _self;
  final $Res Function(Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? type = freezed,Object? cover = freezed,Object? moduleCount = freezed,Object? totalCountTime = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,cover: freezed == cover ? _self.cover : cover // ignore: cast_nullable_to_non_nullable
as String?,moduleCount: freezed == moduleCount ? _self.moduleCount : moduleCount // ignore: cast_nullable_to_non_nullable
as int?,totalCountTime: freezed == totalCountTime ? _self.totalCountTime : totalCountTime // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Product].
extension ProductPatterns on Product {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Product value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Product() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Product value)  $default,){
final _that = this;
switch (_that) {
case _Product():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Product value)?  $default,){
final _that = this;
switch (_that) {
case _Product() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'cover')  String? cover, @JsonKey(name: 'module_count')  int? moduleCount, @JsonKey(name: 'total_count_time')  int? totalCountTime, @JsonKey(name: 'status')  String? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.type,_that.cover,_that.moduleCount,_that.totalCountTime,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'cover')  String? cover, @JsonKey(name: 'module_count')  int? moduleCount, @JsonKey(name: 'total_count_time')  int? totalCountTime, @JsonKey(name: 'status')  String? status)  $default,) {final _that = this;
switch (_that) {
case _Product():
return $default(_that.id,_that.name,_that.description,_that.type,_that.cover,_that.moduleCount,_that.totalCountTime,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'cover')  String? cover, @JsonKey(name: 'module_count')  int? moduleCount, @JsonKey(name: 'total_count_time')  int? totalCountTime, @JsonKey(name: 'status')  String? status)?  $default,) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.type,_that.cover,_that.moduleCount,_that.totalCountTime,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Product with DiagnosticableTreeMixin implements Product {
  const _Product({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'description') this.description, @JsonKey(name: 'type') this.type, @JsonKey(name: 'cover') this.cover, @JsonKey(name: 'module_count') this.moduleCount, @JsonKey(name: 'total_count_time') this.totalCountTime, @JsonKey(name: 'status') this.status});
  factory _Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'description') final  String? description;
@override@JsonKey(name: 'type') final  String? type;
@override@JsonKey(name: 'cover') final  String? cover;
@override@JsonKey(name: 'module_count') final  int? moduleCount;
@override@JsonKey(name: 'total_count_time') final  int? totalCountTime;
@override@JsonKey(name: 'status') final  String? status;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCopyWith<_Product> get copyWith => __$ProductCopyWithImpl<_Product>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Product'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('cover', cover))..add(DiagnosticsProperty('moduleCount', moduleCount))..add(DiagnosticsProperty('totalCountTime', totalCountTime))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Product&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.type, type) || other.type == type)&&(identical(other.cover, cover) || other.cover == cover)&&(identical(other.moduleCount, moduleCount) || other.moduleCount == moduleCount)&&(identical(other.totalCountTime, totalCountTime) || other.totalCountTime == totalCountTime)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,type,cover,moduleCount,totalCountTime,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Product(id: $id, name: $name, description: $description, type: $type, cover: $cover, moduleCount: $moduleCount, totalCountTime: $totalCountTime, status: $status)';
}


}

/// @nodoc
abstract mixin class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) _then) = __$ProductCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'description') String? description,@JsonKey(name: 'type') String? type,@JsonKey(name: 'cover') String? cover,@JsonKey(name: 'module_count') int? moduleCount,@JsonKey(name: 'total_count_time') int? totalCountTime,@JsonKey(name: 'status') String? status
});




}
/// @nodoc
class __$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(this._self, this._then);

  final _Product _self;
  final $Res Function(_Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? type = freezed,Object? cover = freezed,Object? moduleCount = freezed,Object? totalCountTime = freezed,Object? status = freezed,}) {
  return _then(_Product(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,cover: freezed == cover ? _self.cover : cover // ignore: cast_nullable_to_non_nullable
as String?,moduleCount: freezed == moduleCount ? _self.moduleCount : moduleCount // ignore: cast_nullable_to_non_nullable
as int?,totalCountTime: freezed == totalCountTime ? _self.totalCountTime : totalCountTime // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
