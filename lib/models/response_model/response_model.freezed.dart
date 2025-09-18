// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ApiResponse<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiResponse<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiResponse<$T>()';
}


}

/// @nodoc
class $ApiResponseCopyWith<T,$Res>  {
$ApiResponseCopyWith(ApiResponse<T> _, $Res Function(ApiResponse<T>) __);
}


/// Adds pattern-matching-related methods to [ApiResponse].
extension ApiResponsePatterns<T> on ApiResponse<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ApiResponseData<T> value)?  results,TResult Function( ApiResponseStringData<T> value)?  resultsAsString,TResult Function( ApiResponseList<T> value)?  list,TResult Function( ApiResponseLazyList<T> value)?  lazylist,TResult Function( ApiResponseDetailAndError<T> value)?  detailAndError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ApiResponseData() when results != null:
return results(_that);case ApiResponseStringData() when resultsAsString != null:
return resultsAsString(_that);case ApiResponseList() when list != null:
return list(_that);case ApiResponseLazyList() when lazylist != null:
return lazylist(_that);case ApiResponseDetailAndError() when detailAndError != null:
return detailAndError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ApiResponseData<T> value)  results,required TResult Function( ApiResponseStringData<T> value)  resultsAsString,required TResult Function( ApiResponseList<T> value)  list,required TResult Function( ApiResponseLazyList<T> value)  lazylist,required TResult Function( ApiResponseDetailAndError<T> value)  detailAndError,}){
final _that = this;
switch (_that) {
case ApiResponseData():
return results(_that);case ApiResponseStringData():
return resultsAsString(_that);case ApiResponseList():
return list(_that);case ApiResponseLazyList():
return lazylist(_that);case ApiResponseDetailAndError():
return detailAndError(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ApiResponseData<T> value)?  results,TResult? Function( ApiResponseStringData<T> value)?  resultsAsString,TResult? Function( ApiResponseList<T> value)?  list,TResult? Function( ApiResponseLazyList<T> value)?  lazylist,TResult? Function( ApiResponseDetailAndError<T> value)?  detailAndError,}){
final _that = this;
switch (_that) {
case ApiResponseData() when results != null:
return results(_that);case ApiResponseStringData() when resultsAsString != null:
return resultsAsString(_that);case ApiResponseList() when list != null:
return list(_that);case ApiResponseLazyList() when lazylist != null:
return lazylist(_that);case ApiResponseDetailAndError() when detailAndError != null:
return detailAndError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( T results)?  results,TResult Function( String results)?  resultsAsString,TResult Function( List<T> results)?  list,TResult Function( int count,  List<T> results)?  lazylist,TResult Function( String detail,  String errorKey)?  detailAndError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ApiResponseData() when results != null:
return results(_that.results);case ApiResponseStringData() when resultsAsString != null:
return resultsAsString(_that.results);case ApiResponseList() when list != null:
return list(_that.results);case ApiResponseLazyList() when lazylist != null:
return lazylist(_that.count,_that.results);case ApiResponseDetailAndError() when detailAndError != null:
return detailAndError(_that.detail,_that.errorKey);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( T results)  results,required TResult Function( String results)  resultsAsString,required TResult Function( List<T> results)  list,required TResult Function( int count,  List<T> results)  lazylist,required TResult Function( String detail,  String errorKey)  detailAndError,}) {final _that = this;
switch (_that) {
case ApiResponseData():
return results(_that.results);case ApiResponseStringData():
return resultsAsString(_that.results);case ApiResponseList():
return list(_that.results);case ApiResponseLazyList():
return lazylist(_that.count,_that.results);case ApiResponseDetailAndError():
return detailAndError(_that.detail,_that.errorKey);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( T results)?  results,TResult? Function( String results)?  resultsAsString,TResult? Function( List<T> results)?  list,TResult? Function( int count,  List<T> results)?  lazylist,TResult? Function( String detail,  String errorKey)?  detailAndError,}) {final _that = this;
switch (_that) {
case ApiResponseData() when results != null:
return results(_that.results);case ApiResponseStringData() when resultsAsString != null:
return resultsAsString(_that.results);case ApiResponseList() when list != null:
return list(_that.results);case ApiResponseLazyList() when lazylist != null:
return lazylist(_that.count,_that.results);case ApiResponseDetailAndError() when detailAndError != null:
return detailAndError(_that.detail,_that.errorKey);case _:
  return null;

}
}

}

/// @nodoc


class ApiResponseData<T> implements ApiResponse<T> {
  const ApiResponseData(this.results);
  

 final  T results;

/// Create a copy of ApiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiResponseDataCopyWith<T, ApiResponseData<T>> get copyWith => _$ApiResponseDataCopyWithImpl<T, ApiResponseData<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiResponseData<T>&&const DeepCollectionEquality().equals(other.results, results));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'ApiResponse<$T>.results(results: $results)';
}


}

/// @nodoc
abstract mixin class $ApiResponseDataCopyWith<T,$Res> implements $ApiResponseCopyWith<T, $Res> {
  factory $ApiResponseDataCopyWith(ApiResponseData<T> value, $Res Function(ApiResponseData<T>) _then) = _$ApiResponseDataCopyWithImpl;
@useResult
$Res call({
 T results
});




}
/// @nodoc
class _$ApiResponseDataCopyWithImpl<T,$Res>
    implements $ApiResponseDataCopyWith<T, $Res> {
  _$ApiResponseDataCopyWithImpl(this._self, this._then);

  final ApiResponseData<T> _self;
  final $Res Function(ApiResponseData<T>) _then;

/// Create a copy of ApiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? results = freezed,}) {
  return _then(ApiResponseData<T>(
freezed == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class ApiResponseStringData<T> implements ApiResponse<T> {
  const ApiResponseStringData(this.results);
  

 final  String results;

/// Create a copy of ApiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiResponseStringDataCopyWith<T, ApiResponseStringData<T>> get copyWith => _$ApiResponseStringDataCopyWithImpl<T, ApiResponseStringData<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiResponseStringData<T>&&(identical(other.results, results) || other.results == results));
}


@override
int get hashCode => Object.hash(runtimeType,results);

@override
String toString() {
  return 'ApiResponse<$T>.resultsAsString(results: $results)';
}


}

/// @nodoc
abstract mixin class $ApiResponseStringDataCopyWith<T,$Res> implements $ApiResponseCopyWith<T, $Res> {
  factory $ApiResponseStringDataCopyWith(ApiResponseStringData<T> value, $Res Function(ApiResponseStringData<T>) _then) = _$ApiResponseStringDataCopyWithImpl;
@useResult
$Res call({
 String results
});




}
/// @nodoc
class _$ApiResponseStringDataCopyWithImpl<T,$Res>
    implements $ApiResponseStringDataCopyWith<T, $Res> {
  _$ApiResponseStringDataCopyWithImpl(this._self, this._then);

  final ApiResponseStringData<T> _self;
  final $Res Function(ApiResponseStringData<T>) _then;

/// Create a copy of ApiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? results = null,}) {
  return _then(ApiResponseStringData<T>(
null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ApiResponseList<T> implements ApiResponse<T> {
  const ApiResponseList(final  List<T> results): _results = results;
  

 final  List<T> _results;
 List<T> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of ApiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiResponseListCopyWith<T, ApiResponseList<T>> get copyWith => _$ApiResponseListCopyWithImpl<T, ApiResponseList<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiResponseList<T>&&const DeepCollectionEquality().equals(other._results, _results));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'ApiResponse<$T>.list(results: $results)';
}


}

/// @nodoc
abstract mixin class $ApiResponseListCopyWith<T,$Res> implements $ApiResponseCopyWith<T, $Res> {
  factory $ApiResponseListCopyWith(ApiResponseList<T> value, $Res Function(ApiResponseList<T>) _then) = _$ApiResponseListCopyWithImpl;
@useResult
$Res call({
 List<T> results
});




}
/// @nodoc
class _$ApiResponseListCopyWithImpl<T,$Res>
    implements $ApiResponseListCopyWith<T, $Res> {
  _$ApiResponseListCopyWithImpl(this._self, this._then);

  final ApiResponseList<T> _self;
  final $Res Function(ApiResponseList<T>) _then;

/// Create a copy of ApiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? results = null,}) {
  return _then(ApiResponseList<T>(
null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<T>,
  ));
}


}

/// @nodoc


class ApiResponseLazyList<T> implements ApiResponse<T> {
  const ApiResponseLazyList(this.count, final  List<T> results): _results = results;
  

 final  int count;
 final  List<T> _results;
 List<T> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of ApiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiResponseLazyListCopyWith<T, ApiResponseLazyList<T>> get copyWith => _$ApiResponseLazyListCopyWithImpl<T, ApiResponseLazyList<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiResponseLazyList<T>&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other._results, _results));
}


@override
int get hashCode => Object.hash(runtimeType,count,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'ApiResponse<$T>.lazylist(count: $count, results: $results)';
}


}

/// @nodoc
abstract mixin class $ApiResponseLazyListCopyWith<T,$Res> implements $ApiResponseCopyWith<T, $Res> {
  factory $ApiResponseLazyListCopyWith(ApiResponseLazyList<T> value, $Res Function(ApiResponseLazyList<T>) _then) = _$ApiResponseLazyListCopyWithImpl;
@useResult
$Res call({
 int count, List<T> results
});




}
/// @nodoc
class _$ApiResponseLazyListCopyWithImpl<T,$Res>
    implements $ApiResponseLazyListCopyWith<T, $Res> {
  _$ApiResponseLazyListCopyWithImpl(this._self, this._then);

  final ApiResponseLazyList<T> _self;
  final $Res Function(ApiResponseLazyList<T>) _then;

/// Create a copy of ApiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? count = null,Object? results = null,}) {
  return _then(ApiResponseLazyList<T>(
null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<T>,
  ));
}


}

/// @nodoc


class ApiResponseDetailAndError<T> implements ApiResponse<T> {
  const ApiResponseDetailAndError(this.detail, this.errorKey);
  

 final  String detail;
 final  String errorKey;

/// Create a copy of ApiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiResponseDetailAndErrorCopyWith<T, ApiResponseDetailAndError<T>> get copyWith => _$ApiResponseDetailAndErrorCopyWithImpl<T, ApiResponseDetailAndError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiResponseDetailAndError<T>&&(identical(other.detail, detail) || other.detail == detail)&&(identical(other.errorKey, errorKey) || other.errorKey == errorKey));
}


@override
int get hashCode => Object.hash(runtimeType,detail,errorKey);

@override
String toString() {
  return 'ApiResponse<$T>.detailAndError(detail: $detail, errorKey: $errorKey)';
}


}

/// @nodoc
abstract mixin class $ApiResponseDetailAndErrorCopyWith<T,$Res> implements $ApiResponseCopyWith<T, $Res> {
  factory $ApiResponseDetailAndErrorCopyWith(ApiResponseDetailAndError<T> value, $Res Function(ApiResponseDetailAndError<T>) _then) = _$ApiResponseDetailAndErrorCopyWithImpl;
@useResult
$Res call({
 String detail, String errorKey
});




}
/// @nodoc
class _$ApiResponseDetailAndErrorCopyWithImpl<T,$Res>
    implements $ApiResponseDetailAndErrorCopyWith<T, $Res> {
  _$ApiResponseDetailAndErrorCopyWithImpl(this._self, this._then);

  final ApiResponseDetailAndError<T> _self;
  final $Res Function(ApiResponseDetailAndError<T>) _then;

/// Create a copy of ApiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? detail = null,Object? errorKey = null,}) {
  return _then(ApiResponseDetailAndError<T>(
null == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String,null == errorKey ? _self.errorKey : errorKey // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
