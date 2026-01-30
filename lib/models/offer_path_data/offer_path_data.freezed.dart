// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offer_path_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OfferPathData implements DiagnosticableTreeMixin {

@JsonKey(name: 'offerpath') Offerpath? get offerpath;
/// Create a copy of OfferPathData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OfferPathDataCopyWith<OfferPathData> get copyWith => _$OfferPathDataCopyWithImpl<OfferPathData>(this as OfferPathData, _$identity);

  /// Serializes this OfferPathData to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OfferPathData'))
    ..add(DiagnosticsProperty('offerpath', offerpath));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OfferPathData&&(identical(other.offerpath, offerpath) || other.offerpath == offerpath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,offerpath);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OfferPathData(offerpath: $offerpath)';
}


}

/// @nodoc
abstract mixin class $OfferPathDataCopyWith<$Res>  {
  factory $OfferPathDataCopyWith(OfferPathData value, $Res Function(OfferPathData) _then) = _$OfferPathDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'offerpath') Offerpath? offerpath
});


$OfferpathCopyWith<$Res>? get offerpath;

}
/// @nodoc
class _$OfferPathDataCopyWithImpl<$Res>
    implements $OfferPathDataCopyWith<$Res> {
  _$OfferPathDataCopyWithImpl(this._self, this._then);

  final OfferPathData _self;
  final $Res Function(OfferPathData) _then;

/// Create a copy of OfferPathData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? offerpath = freezed,}) {
  return _then(_self.copyWith(
offerpath: freezed == offerpath ? _self.offerpath : offerpath // ignore: cast_nullable_to_non_nullable
as Offerpath?,
  ));
}
/// Create a copy of OfferPathData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OfferpathCopyWith<$Res>? get offerpath {
    if (_self.offerpath == null) {
    return null;
  }

  return $OfferpathCopyWith<$Res>(_self.offerpath!, (value) {
    return _then(_self.copyWith(offerpath: value));
  });
}
}


/// Adds pattern-matching-related methods to [OfferPathData].
extension OfferPathDataPatterns on OfferPathData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OfferPathData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OfferPathData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OfferPathData value)  $default,){
final _that = this;
switch (_that) {
case _OfferPathData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OfferPathData value)?  $default,){
final _that = this;
switch (_that) {
case _OfferPathData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'offerpath')  Offerpath? offerpath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OfferPathData() when $default != null:
return $default(_that.offerpath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'offerpath')  Offerpath? offerpath)  $default,) {final _that = this;
switch (_that) {
case _OfferPathData():
return $default(_that.offerpath);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'offerpath')  Offerpath? offerpath)?  $default,) {final _that = this;
switch (_that) {
case _OfferPathData() when $default != null:
return $default(_that.offerpath);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OfferPathData with DiagnosticableTreeMixin implements OfferPathData {
  const _OfferPathData({@JsonKey(name: 'offerpath') this.offerpath});
  factory _OfferPathData.fromJson(Map<String, dynamic> json) => _$OfferPathDataFromJson(json);

@override@JsonKey(name: 'offerpath') final  Offerpath? offerpath;

/// Create a copy of OfferPathData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OfferPathDataCopyWith<_OfferPathData> get copyWith => __$OfferPathDataCopyWithImpl<_OfferPathData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OfferPathDataToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OfferPathData'))
    ..add(DiagnosticsProperty('offerpath', offerpath));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OfferPathData&&(identical(other.offerpath, offerpath) || other.offerpath == offerpath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,offerpath);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OfferPathData(offerpath: $offerpath)';
}


}

/// @nodoc
abstract mixin class _$OfferPathDataCopyWith<$Res> implements $OfferPathDataCopyWith<$Res> {
  factory _$OfferPathDataCopyWith(_OfferPathData value, $Res Function(_OfferPathData) _then) = __$OfferPathDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'offerpath') Offerpath? offerpath
});


@override $OfferpathCopyWith<$Res>? get offerpath;

}
/// @nodoc
class __$OfferPathDataCopyWithImpl<$Res>
    implements _$OfferPathDataCopyWith<$Res> {
  __$OfferPathDataCopyWithImpl(this._self, this._then);

  final _OfferPathData _self;
  final $Res Function(_OfferPathData) _then;

/// Create a copy of OfferPathData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? offerpath = freezed,}) {
  return _then(_OfferPathData(
offerpath: freezed == offerpath ? _self.offerpath : offerpath // ignore: cast_nullable_to_non_nullable
as Offerpath?,
  ));
}

/// Create a copy of OfferPathData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OfferpathCopyWith<$Res>? get offerpath {
    if (_self.offerpath == null) {
    return null;
  }

  return $OfferpathCopyWith<$Res>(_self.offerpath!, (value) {
    return _then(_self.copyWith(offerpath: value));
  });
}
}


/// @nodoc
mixin _$Offerpath implements DiagnosticableTreeMixin {

@JsonKey(name: 'offer_ru') OfferRu? get offerRu;@JsonKey(name: 'offer_uz') OfferUz? get offerUz;
/// Create a copy of Offerpath
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OfferpathCopyWith<Offerpath> get copyWith => _$OfferpathCopyWithImpl<Offerpath>(this as Offerpath, _$identity);

  /// Serializes this Offerpath to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Offerpath'))
    ..add(DiagnosticsProperty('offerRu', offerRu))..add(DiagnosticsProperty('offerUz', offerUz));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Offerpath&&(identical(other.offerRu, offerRu) || other.offerRu == offerRu)&&(identical(other.offerUz, offerUz) || other.offerUz == offerUz));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,offerRu,offerUz);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Offerpath(offerRu: $offerRu, offerUz: $offerUz)';
}


}

/// @nodoc
abstract mixin class $OfferpathCopyWith<$Res>  {
  factory $OfferpathCopyWith(Offerpath value, $Res Function(Offerpath) _then) = _$OfferpathCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'offer_ru') OfferRu? offerRu,@JsonKey(name: 'offer_uz') OfferUz? offerUz
});


$OfferRuCopyWith<$Res>? get offerRu;$OfferUzCopyWith<$Res>? get offerUz;

}
/// @nodoc
class _$OfferpathCopyWithImpl<$Res>
    implements $OfferpathCopyWith<$Res> {
  _$OfferpathCopyWithImpl(this._self, this._then);

  final Offerpath _self;
  final $Res Function(Offerpath) _then;

/// Create a copy of Offerpath
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? offerRu = freezed,Object? offerUz = freezed,}) {
  return _then(_self.copyWith(
offerRu: freezed == offerRu ? _self.offerRu : offerRu // ignore: cast_nullable_to_non_nullable
as OfferRu?,offerUz: freezed == offerUz ? _self.offerUz : offerUz // ignore: cast_nullable_to_non_nullable
as OfferUz?,
  ));
}
/// Create a copy of Offerpath
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OfferRuCopyWith<$Res>? get offerRu {
    if (_self.offerRu == null) {
    return null;
  }

  return $OfferRuCopyWith<$Res>(_self.offerRu!, (value) {
    return _then(_self.copyWith(offerRu: value));
  });
}/// Create a copy of Offerpath
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OfferUzCopyWith<$Res>? get offerUz {
    if (_self.offerUz == null) {
    return null;
  }

  return $OfferUzCopyWith<$Res>(_self.offerUz!, (value) {
    return _then(_self.copyWith(offerUz: value));
  });
}
}


/// Adds pattern-matching-related methods to [Offerpath].
extension OfferpathPatterns on Offerpath {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Offerpath value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Offerpath() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Offerpath value)  $default,){
final _that = this;
switch (_that) {
case _Offerpath():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Offerpath value)?  $default,){
final _that = this;
switch (_that) {
case _Offerpath() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'offer_ru')  OfferRu? offerRu, @JsonKey(name: 'offer_uz')  OfferUz? offerUz)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Offerpath() when $default != null:
return $default(_that.offerRu,_that.offerUz);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'offer_ru')  OfferRu? offerRu, @JsonKey(name: 'offer_uz')  OfferUz? offerUz)  $default,) {final _that = this;
switch (_that) {
case _Offerpath():
return $default(_that.offerRu,_that.offerUz);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'offer_ru')  OfferRu? offerRu, @JsonKey(name: 'offer_uz')  OfferUz? offerUz)?  $default,) {final _that = this;
switch (_that) {
case _Offerpath() when $default != null:
return $default(_that.offerRu,_that.offerUz);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Offerpath with DiagnosticableTreeMixin implements Offerpath {
  const _Offerpath({@JsonKey(name: 'offer_ru') this.offerRu, @JsonKey(name: 'offer_uz') this.offerUz});
  factory _Offerpath.fromJson(Map<String, dynamic> json) => _$OfferpathFromJson(json);

@override@JsonKey(name: 'offer_ru') final  OfferRu? offerRu;
@override@JsonKey(name: 'offer_uz') final  OfferUz? offerUz;

/// Create a copy of Offerpath
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OfferpathCopyWith<_Offerpath> get copyWith => __$OfferpathCopyWithImpl<_Offerpath>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OfferpathToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Offerpath'))
    ..add(DiagnosticsProperty('offerRu', offerRu))..add(DiagnosticsProperty('offerUz', offerUz));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Offerpath&&(identical(other.offerRu, offerRu) || other.offerRu == offerRu)&&(identical(other.offerUz, offerUz) || other.offerUz == offerUz));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,offerRu,offerUz);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Offerpath(offerRu: $offerRu, offerUz: $offerUz)';
}


}

/// @nodoc
abstract mixin class _$OfferpathCopyWith<$Res> implements $OfferpathCopyWith<$Res> {
  factory _$OfferpathCopyWith(_Offerpath value, $Res Function(_Offerpath) _then) = __$OfferpathCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'offer_ru') OfferRu? offerRu,@JsonKey(name: 'offer_uz') OfferUz? offerUz
});


@override $OfferRuCopyWith<$Res>? get offerRu;@override $OfferUzCopyWith<$Res>? get offerUz;

}
/// @nodoc
class __$OfferpathCopyWithImpl<$Res>
    implements _$OfferpathCopyWith<$Res> {
  __$OfferpathCopyWithImpl(this._self, this._then);

  final _Offerpath _self;
  final $Res Function(_Offerpath) _then;

/// Create a copy of Offerpath
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? offerRu = freezed,Object? offerUz = freezed,}) {
  return _then(_Offerpath(
offerRu: freezed == offerRu ? _self.offerRu : offerRu // ignore: cast_nullable_to_non_nullable
as OfferRu?,offerUz: freezed == offerUz ? _self.offerUz : offerUz // ignore: cast_nullable_to_non_nullable
as OfferUz?,
  ));
}

/// Create a copy of Offerpath
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OfferRuCopyWith<$Res>? get offerRu {
    if (_self.offerRu == null) {
    return null;
  }

  return $OfferRuCopyWith<$Res>(_self.offerRu!, (value) {
    return _then(_self.copyWith(offerRu: value));
  });
}/// Create a copy of Offerpath
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OfferUzCopyWith<$Res>? get offerUz {
    if (_self.offerUz == null) {
    return null;
  }

  return $OfferUzCopyWith<$Res>(_self.offerUz!, (value) {
    return _then(_self.copyWith(offerUz: value));
  });
}
}


/// @nodoc
mixin _$OfferRu implements DiagnosticableTreeMixin {

@JsonKey(name: 'offer') Offer? get offer;
/// Create a copy of OfferRu
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OfferRuCopyWith<OfferRu> get copyWith => _$OfferRuCopyWithImpl<OfferRu>(this as OfferRu, _$identity);

  /// Serializes this OfferRu to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OfferRu'))
    ..add(DiagnosticsProperty('offer', offer));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OfferRu&&(identical(other.offer, offer) || other.offer == offer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,offer);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OfferRu(offer: $offer)';
}


}

/// @nodoc
abstract mixin class $OfferRuCopyWith<$Res>  {
  factory $OfferRuCopyWith(OfferRu value, $Res Function(OfferRu) _then) = _$OfferRuCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'offer') Offer? offer
});


$OfferCopyWith<$Res>? get offer;

}
/// @nodoc
class _$OfferRuCopyWithImpl<$Res>
    implements $OfferRuCopyWith<$Res> {
  _$OfferRuCopyWithImpl(this._self, this._then);

  final OfferRu _self;
  final $Res Function(OfferRu) _then;

/// Create a copy of OfferRu
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? offer = freezed,}) {
  return _then(_self.copyWith(
offer: freezed == offer ? _self.offer : offer // ignore: cast_nullable_to_non_nullable
as Offer?,
  ));
}
/// Create a copy of OfferRu
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OfferCopyWith<$Res>? get offer {
    if (_self.offer == null) {
    return null;
  }

  return $OfferCopyWith<$Res>(_self.offer!, (value) {
    return _then(_self.copyWith(offer: value));
  });
}
}


/// Adds pattern-matching-related methods to [OfferRu].
extension OfferRuPatterns on OfferRu {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OfferRu value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OfferRu() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OfferRu value)  $default,){
final _that = this;
switch (_that) {
case _OfferRu():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OfferRu value)?  $default,){
final _that = this;
switch (_that) {
case _OfferRu() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'offer')  Offer? offer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OfferRu() when $default != null:
return $default(_that.offer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'offer')  Offer? offer)  $default,) {final _that = this;
switch (_that) {
case _OfferRu():
return $default(_that.offer);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'offer')  Offer? offer)?  $default,) {final _that = this;
switch (_that) {
case _OfferRu() when $default != null:
return $default(_that.offer);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OfferRu with DiagnosticableTreeMixin implements OfferRu {
  const _OfferRu({@JsonKey(name: 'offer') this.offer});
  factory _OfferRu.fromJson(Map<String, dynamic> json) => _$OfferRuFromJson(json);

@override@JsonKey(name: 'offer') final  Offer? offer;

/// Create a copy of OfferRu
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OfferRuCopyWith<_OfferRu> get copyWith => __$OfferRuCopyWithImpl<_OfferRu>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OfferRuToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OfferRu'))
    ..add(DiagnosticsProperty('offer', offer));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OfferRu&&(identical(other.offer, offer) || other.offer == offer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,offer);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OfferRu(offer: $offer)';
}


}

/// @nodoc
abstract mixin class _$OfferRuCopyWith<$Res> implements $OfferRuCopyWith<$Res> {
  factory _$OfferRuCopyWith(_OfferRu value, $Res Function(_OfferRu) _then) = __$OfferRuCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'offer') Offer? offer
});


@override $OfferCopyWith<$Res>? get offer;

}
/// @nodoc
class __$OfferRuCopyWithImpl<$Res>
    implements _$OfferRuCopyWith<$Res> {
  __$OfferRuCopyWithImpl(this._self, this._then);

  final _OfferRu _self;
  final $Res Function(_OfferRu) _then;

/// Create a copy of OfferRu
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? offer = freezed,}) {
  return _then(_OfferRu(
offer: freezed == offer ? _self.offer : offer // ignore: cast_nullable_to_non_nullable
as Offer?,
  ));
}

/// Create a copy of OfferRu
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OfferCopyWith<$Res>? get offer {
    if (_self.offer == null) {
    return null;
  }

  return $OfferCopyWith<$Res>(_self.offer!, (value) {
    return _then(_self.copyWith(offer: value));
  });
}
}


/// @nodoc
mixin _$Offer implements DiagnosticableTreeMixin {

@JsonKey(name: 'url') String? get url;
/// Create a copy of Offer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OfferCopyWith<Offer> get copyWith => _$OfferCopyWithImpl<Offer>(this as Offer, _$identity);

  /// Serializes this Offer to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Offer'))
    ..add(DiagnosticsProperty('url', url));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Offer&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Offer(url: $url)';
}


}

/// @nodoc
abstract mixin class $OfferCopyWith<$Res>  {
  factory $OfferCopyWith(Offer value, $Res Function(Offer) _then) = _$OfferCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'url') String? url
});




}
/// @nodoc
class _$OfferCopyWithImpl<$Res>
    implements $OfferCopyWith<$Res> {
  _$OfferCopyWithImpl(this._self, this._then);

  final Offer _self;
  final $Res Function(Offer) _then;

/// Create a copy of Offer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = freezed,}) {
  return _then(_self.copyWith(
url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Offer].
extension OfferPatterns on Offer {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Offer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Offer() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Offer value)  $default,){
final _that = this;
switch (_that) {
case _Offer():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Offer value)?  $default,){
final _that = this;
switch (_that) {
case _Offer() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'url')  String? url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Offer() when $default != null:
return $default(_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'url')  String? url)  $default,) {final _that = this;
switch (_that) {
case _Offer():
return $default(_that.url);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'url')  String? url)?  $default,) {final _that = this;
switch (_that) {
case _Offer() when $default != null:
return $default(_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Offer with DiagnosticableTreeMixin implements Offer {
  const _Offer({@JsonKey(name: 'url') this.url});
  factory _Offer.fromJson(Map<String, dynamic> json) => _$OfferFromJson(json);

@override@JsonKey(name: 'url') final  String? url;

/// Create a copy of Offer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OfferCopyWith<_Offer> get copyWith => __$OfferCopyWithImpl<_Offer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OfferToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Offer'))
    ..add(DiagnosticsProperty('url', url));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Offer&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Offer(url: $url)';
}


}

/// @nodoc
abstract mixin class _$OfferCopyWith<$Res> implements $OfferCopyWith<$Res> {
  factory _$OfferCopyWith(_Offer value, $Res Function(_Offer) _then) = __$OfferCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'url') String? url
});




}
/// @nodoc
class __$OfferCopyWithImpl<$Res>
    implements _$OfferCopyWith<$Res> {
  __$OfferCopyWithImpl(this._self, this._then);

  final _Offer _self;
  final $Res Function(_Offer) _then;

/// Create a copy of Offer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = freezed,}) {
  return _then(_Offer(
url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$OfferUz implements DiagnosticableTreeMixin {

@JsonKey(name: 'offer') Offer? get offer;
/// Create a copy of OfferUz
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OfferUzCopyWith<OfferUz> get copyWith => _$OfferUzCopyWithImpl<OfferUz>(this as OfferUz, _$identity);

  /// Serializes this OfferUz to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OfferUz'))
    ..add(DiagnosticsProperty('offer', offer));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OfferUz&&(identical(other.offer, offer) || other.offer == offer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,offer);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OfferUz(offer: $offer)';
}


}

/// @nodoc
abstract mixin class $OfferUzCopyWith<$Res>  {
  factory $OfferUzCopyWith(OfferUz value, $Res Function(OfferUz) _then) = _$OfferUzCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'offer') Offer? offer
});


$OfferCopyWith<$Res>? get offer;

}
/// @nodoc
class _$OfferUzCopyWithImpl<$Res>
    implements $OfferUzCopyWith<$Res> {
  _$OfferUzCopyWithImpl(this._self, this._then);

  final OfferUz _self;
  final $Res Function(OfferUz) _then;

/// Create a copy of OfferUz
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? offer = freezed,}) {
  return _then(_self.copyWith(
offer: freezed == offer ? _self.offer : offer // ignore: cast_nullable_to_non_nullable
as Offer?,
  ));
}
/// Create a copy of OfferUz
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OfferCopyWith<$Res>? get offer {
    if (_self.offer == null) {
    return null;
  }

  return $OfferCopyWith<$Res>(_self.offer!, (value) {
    return _then(_self.copyWith(offer: value));
  });
}
}


/// Adds pattern-matching-related methods to [OfferUz].
extension OfferUzPatterns on OfferUz {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OfferUz value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OfferUz() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OfferUz value)  $default,){
final _that = this;
switch (_that) {
case _OfferUz():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OfferUz value)?  $default,){
final _that = this;
switch (_that) {
case _OfferUz() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'offer')  Offer? offer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OfferUz() when $default != null:
return $default(_that.offer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'offer')  Offer? offer)  $default,) {final _that = this;
switch (_that) {
case _OfferUz():
return $default(_that.offer);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'offer')  Offer? offer)?  $default,) {final _that = this;
switch (_that) {
case _OfferUz() when $default != null:
return $default(_that.offer);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OfferUz with DiagnosticableTreeMixin implements OfferUz {
  const _OfferUz({@JsonKey(name: 'offer') this.offer});
  factory _OfferUz.fromJson(Map<String, dynamic> json) => _$OfferUzFromJson(json);

@override@JsonKey(name: 'offer') final  Offer? offer;

/// Create a copy of OfferUz
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OfferUzCopyWith<_OfferUz> get copyWith => __$OfferUzCopyWithImpl<_OfferUz>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OfferUzToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OfferUz'))
    ..add(DiagnosticsProperty('offer', offer));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OfferUz&&(identical(other.offer, offer) || other.offer == offer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,offer);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OfferUz(offer: $offer)';
}


}

/// @nodoc
abstract mixin class _$OfferUzCopyWith<$Res> implements $OfferUzCopyWith<$Res> {
  factory _$OfferUzCopyWith(_OfferUz value, $Res Function(_OfferUz) _then) = __$OfferUzCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'offer') Offer? offer
});


@override $OfferCopyWith<$Res>? get offer;

}
/// @nodoc
class __$OfferUzCopyWithImpl<$Res>
    implements _$OfferUzCopyWith<$Res> {
  __$OfferUzCopyWithImpl(this._self, this._then);

  final _OfferUz _self;
  final $Res Function(_OfferUz) _then;

/// Create a copy of OfferUz
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? offer = freezed,}) {
  return _then(_OfferUz(
offer: freezed == offer ? _self.offer : offer // ignore: cast_nullable_to_non_nullable
as Offer?,
  ));
}

/// Create a copy of OfferUz
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OfferCopyWith<$Res>? get offer {
    if (_self.offer == null) {
    return null;
  }

  return $OfferCopyWith<$Res>(_self.offer!, (value) {
    return _then(_self.copyWith(offer: value));
  });
}
}


/// @nodoc
mixin _$OfferDataUrl implements DiagnosticableTreeMixin {

@JsonKey(name: 'url') String? get url;
/// Create a copy of OfferDataUrl
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OfferDataUrlCopyWith<OfferDataUrl> get copyWith => _$OfferDataUrlCopyWithImpl<OfferDataUrl>(this as OfferDataUrl, _$identity);

  /// Serializes this OfferDataUrl to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OfferDataUrl'))
    ..add(DiagnosticsProperty('url', url));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OfferDataUrl&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OfferDataUrl(url: $url)';
}


}

/// @nodoc
abstract mixin class $OfferDataUrlCopyWith<$Res>  {
  factory $OfferDataUrlCopyWith(OfferDataUrl value, $Res Function(OfferDataUrl) _then) = _$OfferDataUrlCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'url') String? url
});




}
/// @nodoc
class _$OfferDataUrlCopyWithImpl<$Res>
    implements $OfferDataUrlCopyWith<$Res> {
  _$OfferDataUrlCopyWithImpl(this._self, this._then);

  final OfferDataUrl _self;
  final $Res Function(OfferDataUrl) _then;

/// Create a copy of OfferDataUrl
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = freezed,}) {
  return _then(_self.copyWith(
url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OfferDataUrl].
extension OfferDataUrlPatterns on OfferDataUrl {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OfferDataUrl value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OfferDataUrl() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OfferDataUrl value)  $default,){
final _that = this;
switch (_that) {
case _OfferDataUrl():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OfferDataUrl value)?  $default,){
final _that = this;
switch (_that) {
case _OfferDataUrl() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'url')  String? url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OfferDataUrl() when $default != null:
return $default(_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'url')  String? url)  $default,) {final _that = this;
switch (_that) {
case _OfferDataUrl():
return $default(_that.url);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'url')  String? url)?  $default,) {final _that = this;
switch (_that) {
case _OfferDataUrl() when $default != null:
return $default(_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OfferDataUrl with DiagnosticableTreeMixin implements OfferDataUrl {
  const _OfferDataUrl({@JsonKey(name: 'url') this.url});
  factory _OfferDataUrl.fromJson(Map<String, dynamic> json) => _$OfferDataUrlFromJson(json);

@override@JsonKey(name: 'url') final  String? url;

/// Create a copy of OfferDataUrl
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OfferDataUrlCopyWith<_OfferDataUrl> get copyWith => __$OfferDataUrlCopyWithImpl<_OfferDataUrl>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OfferDataUrlToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OfferDataUrl'))
    ..add(DiagnosticsProperty('url', url));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OfferDataUrl&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OfferDataUrl(url: $url)';
}


}

/// @nodoc
abstract mixin class _$OfferDataUrlCopyWith<$Res> implements $OfferDataUrlCopyWith<$Res> {
  factory _$OfferDataUrlCopyWith(_OfferDataUrl value, $Res Function(_OfferDataUrl) _then) = __$OfferDataUrlCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'url') String? url
});




}
/// @nodoc
class __$OfferDataUrlCopyWithImpl<$Res>
    implements _$OfferDataUrlCopyWith<$Res> {
  __$OfferDataUrlCopyWithImpl(this._self, this._then);

  final _OfferDataUrl _self;
  final $Res Function(_OfferDataUrl) _then;

/// Create a copy of OfferDataUrl
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = freezed,}) {
  return _then(_OfferDataUrl(
url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
