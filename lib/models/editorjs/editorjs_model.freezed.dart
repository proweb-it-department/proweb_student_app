// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'editorjs_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EditorJsBlock {

 String get id; String get type; Map<String, dynamic> get data;
/// Create a copy of EditorJsBlock
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditorJsBlockCopyWith<EditorJsBlock> get copyWith => _$EditorJsBlockCopyWithImpl<EditorJsBlock>(this as EditorJsBlock, _$identity);

  /// Serializes this EditorJsBlock to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditorJsBlock&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'EditorJsBlock(id: $id, type: $type, data: $data)';
}


}

/// @nodoc
abstract mixin class $EditorJsBlockCopyWith<$Res>  {
  factory $EditorJsBlockCopyWith(EditorJsBlock value, $Res Function(EditorJsBlock) _then) = _$EditorJsBlockCopyWithImpl;
@useResult
$Res call({
 String id, String type, Map<String, dynamic> data
});




}
/// @nodoc
class _$EditorJsBlockCopyWithImpl<$Res>
    implements $EditorJsBlockCopyWith<$Res> {
  _$EditorJsBlockCopyWithImpl(this._self, this._then);

  final EditorJsBlock _self;
  final $Res Function(EditorJsBlock) _then;

/// Create a copy of EditorJsBlock
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? data = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [EditorJsBlock].
extension EditorJsBlockPatterns on EditorJsBlock {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EditorJsBlock value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EditorJsBlock() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EditorJsBlock value)  $default,){
final _that = this;
switch (_that) {
case _EditorJsBlock():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EditorJsBlock value)?  $default,){
final _that = this;
switch (_that) {
case _EditorJsBlock() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String type,  Map<String, dynamic> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EditorJsBlock() when $default != null:
return $default(_that.id,_that.type,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String type,  Map<String, dynamic> data)  $default,) {final _that = this;
switch (_that) {
case _EditorJsBlock():
return $default(_that.id,_that.type,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String type,  Map<String, dynamic> data)?  $default,) {final _that = this;
switch (_that) {
case _EditorJsBlock() when $default != null:
return $default(_that.id,_that.type,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EditorJsBlock implements EditorJsBlock {
  const _EditorJsBlock({required this.id, required this.type, required final  Map<String, dynamic> data}): _data = data;
  factory _EditorJsBlock.fromJson(Map<String, dynamic> json) => _$EditorJsBlockFromJson(json);

@override final  String id;
@override final  String type;
 final  Map<String, dynamic> _data;
@override Map<String, dynamic> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}


/// Create a copy of EditorJsBlock
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditorJsBlockCopyWith<_EditorJsBlock> get copyWith => __$EditorJsBlockCopyWithImpl<_EditorJsBlock>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EditorJsBlockToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditorJsBlock&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'EditorJsBlock(id: $id, type: $type, data: $data)';
}


}

/// @nodoc
abstract mixin class _$EditorJsBlockCopyWith<$Res> implements $EditorJsBlockCopyWith<$Res> {
  factory _$EditorJsBlockCopyWith(_EditorJsBlock value, $Res Function(_EditorJsBlock) _then) = __$EditorJsBlockCopyWithImpl;
@override @useResult
$Res call({
 String id, String type, Map<String, dynamic> data
});




}
/// @nodoc
class __$EditorJsBlockCopyWithImpl<$Res>
    implements _$EditorJsBlockCopyWith<$Res> {
  __$EditorJsBlockCopyWithImpl(this._self, this._then);

  final _EditorJsBlock _self;
  final $Res Function(_EditorJsBlock) _then;

/// Create a copy of EditorJsBlock
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? data = null,}) {
  return _then(_EditorJsBlock(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$HeaderData {

 String get text; int get level;
/// Create a copy of HeaderData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HeaderDataCopyWith<HeaderData> get copyWith => _$HeaderDataCopyWithImpl<HeaderData>(this as HeaderData, _$identity);

  /// Serializes this HeaderData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HeaderData&&(identical(other.text, text) || other.text == text)&&(identical(other.level, level) || other.level == level));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,level);

@override
String toString() {
  return 'HeaderData(text: $text, level: $level)';
}


}

/// @nodoc
abstract mixin class $HeaderDataCopyWith<$Res>  {
  factory $HeaderDataCopyWith(HeaderData value, $Res Function(HeaderData) _then) = _$HeaderDataCopyWithImpl;
@useResult
$Res call({
 String text, int level
});




}
/// @nodoc
class _$HeaderDataCopyWithImpl<$Res>
    implements $HeaderDataCopyWith<$Res> {
  _$HeaderDataCopyWithImpl(this._self, this._then);

  final HeaderData _self;
  final $Res Function(HeaderData) _then;

/// Create a copy of HeaderData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = null,Object? level = null,}) {
  return _then(_self.copyWith(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [HeaderData].
extension HeaderDataPatterns on HeaderData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HeaderData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HeaderData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HeaderData value)  $default,){
final _that = this;
switch (_that) {
case _HeaderData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HeaderData value)?  $default,){
final _that = this;
switch (_that) {
case _HeaderData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String text,  int level)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HeaderData() when $default != null:
return $default(_that.text,_that.level);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String text,  int level)  $default,) {final _that = this;
switch (_that) {
case _HeaderData():
return $default(_that.text,_that.level);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String text,  int level)?  $default,) {final _that = this;
switch (_that) {
case _HeaderData() when $default != null:
return $default(_that.text,_that.level);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HeaderData implements HeaderData {
  const _HeaderData({required this.text, required this.level});
  factory _HeaderData.fromJson(Map<String, dynamic> json) => _$HeaderDataFromJson(json);

@override final  String text;
@override final  int level;

/// Create a copy of HeaderData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HeaderDataCopyWith<_HeaderData> get copyWith => __$HeaderDataCopyWithImpl<_HeaderData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HeaderDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HeaderData&&(identical(other.text, text) || other.text == text)&&(identical(other.level, level) || other.level == level));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,level);

@override
String toString() {
  return 'HeaderData(text: $text, level: $level)';
}


}

/// @nodoc
abstract mixin class _$HeaderDataCopyWith<$Res> implements $HeaderDataCopyWith<$Res> {
  factory _$HeaderDataCopyWith(_HeaderData value, $Res Function(_HeaderData) _then) = __$HeaderDataCopyWithImpl;
@override @useResult
$Res call({
 String text, int level
});




}
/// @nodoc
class __$HeaderDataCopyWithImpl<$Res>
    implements _$HeaderDataCopyWith<$Res> {
  __$HeaderDataCopyWithImpl(this._self, this._then);

  final _HeaderData _self;
  final $Res Function(_HeaderData) _then;

/// Create a copy of HeaderData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = null,Object? level = null,}) {
  return _then(_HeaderData(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ParagraphData {

 String get text;
/// Create a copy of ParagraphData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParagraphDataCopyWith<ParagraphData> get copyWith => _$ParagraphDataCopyWithImpl<ParagraphData>(this as ParagraphData, _$identity);

  /// Serializes this ParagraphData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParagraphData&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text);

@override
String toString() {
  return 'ParagraphData(text: $text)';
}


}

/// @nodoc
abstract mixin class $ParagraphDataCopyWith<$Res>  {
  factory $ParagraphDataCopyWith(ParagraphData value, $Res Function(ParagraphData) _then) = _$ParagraphDataCopyWithImpl;
@useResult
$Res call({
 String text
});




}
/// @nodoc
class _$ParagraphDataCopyWithImpl<$Res>
    implements $ParagraphDataCopyWith<$Res> {
  _$ParagraphDataCopyWithImpl(this._self, this._then);

  final ParagraphData _self;
  final $Res Function(ParagraphData) _then;

/// Create a copy of ParagraphData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = null,}) {
  return _then(_self.copyWith(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ParagraphData].
extension ParagraphDataPatterns on ParagraphData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParagraphData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParagraphData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParagraphData value)  $default,){
final _that = this;
switch (_that) {
case _ParagraphData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParagraphData value)?  $default,){
final _that = this;
switch (_that) {
case _ParagraphData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String text)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParagraphData() when $default != null:
return $default(_that.text);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String text)  $default,) {final _that = this;
switch (_that) {
case _ParagraphData():
return $default(_that.text);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String text)?  $default,) {final _that = this;
switch (_that) {
case _ParagraphData() when $default != null:
return $default(_that.text);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ParagraphData implements ParagraphData {
  const _ParagraphData({required this.text});
  factory _ParagraphData.fromJson(Map<String, dynamic> json) => _$ParagraphDataFromJson(json);

@override final  String text;

/// Create a copy of ParagraphData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParagraphDataCopyWith<_ParagraphData> get copyWith => __$ParagraphDataCopyWithImpl<_ParagraphData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParagraphDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParagraphData&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text);

@override
String toString() {
  return 'ParagraphData(text: $text)';
}


}

/// @nodoc
abstract mixin class _$ParagraphDataCopyWith<$Res> implements $ParagraphDataCopyWith<$Res> {
  factory _$ParagraphDataCopyWith(_ParagraphData value, $Res Function(_ParagraphData) _then) = __$ParagraphDataCopyWithImpl;
@override @useResult
$Res call({
 String text
});




}
/// @nodoc
class __$ParagraphDataCopyWithImpl<$Res>
    implements _$ParagraphDataCopyWith<$Res> {
  __$ParagraphDataCopyWithImpl(this._self, this._then);

  final _ParagraphData _self;
  final $Res Function(_ParagraphData) _then;

/// Create a copy of ParagraphData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = null,}) {
  return _then(_ParagraphData(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ListData {

 List<String> get items; String get style;
/// Create a copy of ListData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListDataCopyWith<ListData> get copyWith => _$ListDataCopyWithImpl<ListData>(this as ListData, _$identity);

  /// Serializes this ListData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListData&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.style, style) || other.style == style));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),style);

@override
String toString() {
  return 'ListData(items: $items, style: $style)';
}


}

/// @nodoc
abstract mixin class $ListDataCopyWith<$Res>  {
  factory $ListDataCopyWith(ListData value, $Res Function(ListData) _then) = _$ListDataCopyWithImpl;
@useResult
$Res call({
 List<String> items, String style
});




}
/// @nodoc
class _$ListDataCopyWithImpl<$Res>
    implements $ListDataCopyWith<$Res> {
  _$ListDataCopyWithImpl(this._self, this._then);

  final ListData _self;
  final $Res Function(ListData) _then;

/// Create a copy of ListData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? style = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<String>,style: null == style ? _self.style : style // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ListData].
extension ListDataPatterns on ListData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListData value)  $default,){
final _that = this;
switch (_that) {
case _ListData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListData value)?  $default,){
final _that = this;
switch (_that) {
case _ListData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> items,  String style)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListData() when $default != null:
return $default(_that.items,_that.style);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> items,  String style)  $default,) {final _that = this;
switch (_that) {
case _ListData():
return $default(_that.items,_that.style);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> items,  String style)?  $default,) {final _that = this;
switch (_that) {
case _ListData() when $default != null:
return $default(_that.items,_that.style);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ListData implements ListData {
  const _ListData({required final  List<String> items, required this.style}): _items = items;
  factory _ListData.fromJson(Map<String, dynamic> json) => _$ListDataFromJson(json);

 final  List<String> _items;
@override List<String> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String style;

/// Create a copy of ListData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListDataCopyWith<_ListData> get copyWith => __$ListDataCopyWithImpl<_ListData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListData&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.style, style) || other.style == style));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),style);

@override
String toString() {
  return 'ListData(items: $items, style: $style)';
}


}

/// @nodoc
abstract mixin class _$ListDataCopyWith<$Res> implements $ListDataCopyWith<$Res> {
  factory _$ListDataCopyWith(_ListData value, $Res Function(_ListData) _then) = __$ListDataCopyWithImpl;
@override @useResult
$Res call({
 List<String> items, String style
});




}
/// @nodoc
class __$ListDataCopyWithImpl<$Res>
    implements _$ListDataCopyWith<$Res> {
  __$ListDataCopyWithImpl(this._self, this._then);

  final _ListData _self;
  final $Res Function(_ListData) _then;

/// Create a copy of ListData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? style = null,}) {
  return _then(_ListData(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<String>,style: null == style ? _self.style : style // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$CodeData {

 String get code; String get languageCode;
/// Create a copy of CodeData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CodeDataCopyWith<CodeData> get copyWith => _$CodeDataCopyWithImpl<CodeData>(this as CodeData, _$identity);

  /// Serializes this CodeData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CodeData&&(identical(other.code, code) || other.code == code)&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,languageCode);

@override
String toString() {
  return 'CodeData(code: $code, languageCode: $languageCode)';
}


}

/// @nodoc
abstract mixin class $CodeDataCopyWith<$Res>  {
  factory $CodeDataCopyWith(CodeData value, $Res Function(CodeData) _then) = _$CodeDataCopyWithImpl;
@useResult
$Res call({
 String code, String languageCode
});




}
/// @nodoc
class _$CodeDataCopyWithImpl<$Res>
    implements $CodeDataCopyWith<$Res> {
  _$CodeDataCopyWithImpl(this._self, this._then);

  final CodeData _self;
  final $Res Function(CodeData) _then;

/// Create a copy of CodeData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? languageCode = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,languageCode: null == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CodeData].
extension CodeDataPatterns on CodeData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CodeData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CodeData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CodeData value)  $default,){
final _that = this;
switch (_that) {
case _CodeData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CodeData value)?  $default,){
final _that = this;
switch (_that) {
case _CodeData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  String languageCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CodeData() when $default != null:
return $default(_that.code,_that.languageCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  String languageCode)  $default,) {final _that = this;
switch (_that) {
case _CodeData():
return $default(_that.code,_that.languageCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  String languageCode)?  $default,) {final _that = this;
switch (_that) {
case _CodeData() when $default != null:
return $default(_that.code,_that.languageCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CodeData implements CodeData {
  const _CodeData({required this.code, required this.languageCode});
  factory _CodeData.fromJson(Map<String, dynamic> json) => _$CodeDataFromJson(json);

@override final  String code;
@override final  String languageCode;

/// Create a copy of CodeData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CodeDataCopyWith<_CodeData> get copyWith => __$CodeDataCopyWithImpl<_CodeData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CodeDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CodeData&&(identical(other.code, code) || other.code == code)&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,languageCode);

@override
String toString() {
  return 'CodeData(code: $code, languageCode: $languageCode)';
}


}

/// @nodoc
abstract mixin class _$CodeDataCopyWith<$Res> implements $CodeDataCopyWith<$Res> {
  factory _$CodeDataCopyWith(_CodeData value, $Res Function(_CodeData) _then) = __$CodeDataCopyWithImpl;
@override @useResult
$Res call({
 String code, String languageCode
});




}
/// @nodoc
class __$CodeDataCopyWithImpl<$Res>
    implements _$CodeDataCopyWith<$Res> {
  __$CodeDataCopyWithImpl(this._self, this._then);

  final _CodeData _self;
  final $Res Function(_CodeData) _then;

/// Create a copy of CodeData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? languageCode = null,}) {
  return _then(_CodeData(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,languageCode: null == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
