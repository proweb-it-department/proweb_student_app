// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'downloader_files_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DownloaderFilesEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloaderFilesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloaderFilesEvent()';
}


}

/// @nodoc
class $DownloaderFilesEventCopyWith<$Res>  {
$DownloaderFilesEventCopyWith(DownloaderFilesEvent _, $Res Function(DownloaderFilesEvent) __);
}


/// Adds pattern-matching-related methods to [DownloaderFilesEvent].
extension DownloaderFilesEventPatterns on DownloaderFilesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _DownloaderFilesDownloader value)?  download,TResult Function( _DownloaderFilesDelete value)?  delete,TResult Function( _DownloaderFilesDeleteAll value)?  deleteAll,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _DownloaderFilesDownloader() when download != null:
return download(_that);case _DownloaderFilesDelete() when delete != null:
return delete(_that);case _DownloaderFilesDeleteAll() when deleteAll != null:
return deleteAll(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _DownloaderFilesDownloader value)  download,required TResult Function( _DownloaderFilesDelete value)  delete,required TResult Function( _DownloaderFilesDeleteAll value)  deleteAll,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _DownloaderFilesDownloader():
return download(_that);case _DownloaderFilesDelete():
return delete(_that);case _DownloaderFilesDeleteAll():
return deleteAll(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _DownloaderFilesDownloader value)?  download,TResult? Function( _DownloaderFilesDelete value)?  delete,TResult? Function( _DownloaderFilesDeleteAll value)?  deleteAll,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _DownloaderFilesDownloader() when download != null:
return download(_that);case _DownloaderFilesDelete() when delete != null:
return delete(_that);case _DownloaderFilesDeleteAll() when deleteAll != null:
return deleteAll(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( FileDownloadModel download)?  download,TResult Function( int id)?  delete,TResult Function()?  deleteAll,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _DownloaderFilesDownloader() when download != null:
return download(_that.download);case _DownloaderFilesDelete() when delete != null:
return delete(_that.id);case _DownloaderFilesDeleteAll() when deleteAll != null:
return deleteAll();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( FileDownloadModel download)  download,required TResult Function( int id)  delete,required TResult Function()  deleteAll,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _DownloaderFilesDownloader():
return download(_that.download);case _DownloaderFilesDelete():
return delete(_that.id);case _DownloaderFilesDeleteAll():
return deleteAll();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( FileDownloadModel download)?  download,TResult? Function( int id)?  delete,TResult? Function()?  deleteAll,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _DownloaderFilesDownloader() when download != null:
return download(_that.download);case _DownloaderFilesDelete() when delete != null:
return delete(_that.id);case _DownloaderFilesDeleteAll() when deleteAll != null:
return deleteAll();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements DownloaderFilesEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloaderFilesEvent.started()';
}


}




/// @nodoc


class _DownloaderFilesDownloader implements DownloaderFilesEvent {
  const _DownloaderFilesDownloader({required this.download});
  

 final  FileDownloadModel download;

/// Create a copy of DownloaderFilesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DownloaderFilesDownloaderCopyWith<_DownloaderFilesDownloader> get copyWith => __$DownloaderFilesDownloaderCopyWithImpl<_DownloaderFilesDownloader>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DownloaderFilesDownloader&&(identical(other.download, download) || other.download == download));
}


@override
int get hashCode => Object.hash(runtimeType,download);

@override
String toString() {
  return 'DownloaderFilesEvent.download(download: $download)';
}


}

/// @nodoc
abstract mixin class _$DownloaderFilesDownloaderCopyWith<$Res> implements $DownloaderFilesEventCopyWith<$Res> {
  factory _$DownloaderFilesDownloaderCopyWith(_DownloaderFilesDownloader value, $Res Function(_DownloaderFilesDownloader) _then) = __$DownloaderFilesDownloaderCopyWithImpl;
@useResult
$Res call({
 FileDownloadModel download
});


$FileDownloadModelCopyWith<$Res> get download;

}
/// @nodoc
class __$DownloaderFilesDownloaderCopyWithImpl<$Res>
    implements _$DownloaderFilesDownloaderCopyWith<$Res> {
  __$DownloaderFilesDownloaderCopyWithImpl(this._self, this._then);

  final _DownloaderFilesDownloader _self;
  final $Res Function(_DownloaderFilesDownloader) _then;

/// Create a copy of DownloaderFilesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? download = null,}) {
  return _then(_DownloaderFilesDownloader(
download: null == download ? _self.download : download // ignore: cast_nullable_to_non_nullable
as FileDownloadModel,
  ));
}

/// Create a copy of DownloaderFilesEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FileDownloadModelCopyWith<$Res> get download {
  
  return $FileDownloadModelCopyWith<$Res>(_self.download, (value) {
    return _then(_self.copyWith(download: value));
  });
}
}

/// @nodoc


class _DownloaderFilesDelete implements DownloaderFilesEvent {
  const _DownloaderFilesDelete({required this.id});
  

 final  int id;

/// Create a copy of DownloaderFilesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DownloaderFilesDeleteCopyWith<_DownloaderFilesDelete> get copyWith => __$DownloaderFilesDeleteCopyWithImpl<_DownloaderFilesDelete>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DownloaderFilesDelete&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'DownloaderFilesEvent.delete(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DownloaderFilesDeleteCopyWith<$Res> implements $DownloaderFilesEventCopyWith<$Res> {
  factory _$DownloaderFilesDeleteCopyWith(_DownloaderFilesDelete value, $Res Function(_DownloaderFilesDelete) _then) = __$DownloaderFilesDeleteCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$DownloaderFilesDeleteCopyWithImpl<$Res>
    implements _$DownloaderFilesDeleteCopyWith<$Res> {
  __$DownloaderFilesDeleteCopyWithImpl(this._self, this._then);

  final _DownloaderFilesDelete _self;
  final $Res Function(_DownloaderFilesDelete) _then;

/// Create a copy of DownloaderFilesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DownloaderFilesDelete(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _DownloaderFilesDeleteAll implements DownloaderFilesEvent {
  const _DownloaderFilesDeleteAll();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DownloaderFilesDeleteAll);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloaderFilesEvent.deleteAll()';
}


}




/// @nodoc
mixin _$DownloaderFilesState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloaderFilesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloaderFilesState()';
}


}

/// @nodoc
class $DownloaderFilesStateCopyWith<$Res>  {
$DownloaderFilesStateCopyWith(DownloaderFilesState _, $Res Function(DownloaderFilesState) __);
}


/// Adds pattern-matching-related methods to [DownloaderFilesState].
extension DownloaderFilesStatePatterns on DownloaderFilesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _DownloaderFilesSaved value)?  download,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _DownloaderFilesSaved() when download != null:
return download(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _DownloaderFilesSaved value)  download,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _DownloaderFilesSaved():
return download(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _DownloaderFilesSaved value)?  download,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _DownloaderFilesSaved() when download != null:
return download(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( FileDownloadModel? download,  List<FileSavedData> downloaders)?  download,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _DownloaderFilesSaved() when download != null:
return download(_that.download,_that.downloaders);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( FileDownloadModel? download,  List<FileSavedData> downloaders)  download,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _DownloaderFilesSaved():
return download(_that.download,_that.downloaders);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( FileDownloadModel? download,  List<FileSavedData> downloaders)?  download,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _DownloaderFilesSaved() when download != null:
return download(_that.download,_that.downloaders);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements DownloaderFilesState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloaderFilesState.initial()';
}


}




/// @nodoc


class _DownloaderFilesSaved implements DownloaderFilesState {
  const _DownloaderFilesSaved({this.download, required final  List<FileSavedData> downloaders}): _downloaders = downloaders;
  

 final  FileDownloadModel? download;
 final  List<FileSavedData> _downloaders;
 List<FileSavedData> get downloaders {
  if (_downloaders is EqualUnmodifiableListView) return _downloaders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_downloaders);
}


/// Create a copy of DownloaderFilesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DownloaderFilesSavedCopyWith<_DownloaderFilesSaved> get copyWith => __$DownloaderFilesSavedCopyWithImpl<_DownloaderFilesSaved>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DownloaderFilesSaved&&(identical(other.download, download) || other.download == download)&&const DeepCollectionEquality().equals(other._downloaders, _downloaders));
}


@override
int get hashCode => Object.hash(runtimeType,download,const DeepCollectionEquality().hash(_downloaders));

@override
String toString() {
  return 'DownloaderFilesState.download(download: $download, downloaders: $downloaders)';
}


}

/// @nodoc
abstract mixin class _$DownloaderFilesSavedCopyWith<$Res> implements $DownloaderFilesStateCopyWith<$Res> {
  factory _$DownloaderFilesSavedCopyWith(_DownloaderFilesSaved value, $Res Function(_DownloaderFilesSaved) _then) = __$DownloaderFilesSavedCopyWithImpl;
@useResult
$Res call({
 FileDownloadModel? download, List<FileSavedData> downloaders
});


$FileDownloadModelCopyWith<$Res>? get download;

}
/// @nodoc
class __$DownloaderFilesSavedCopyWithImpl<$Res>
    implements _$DownloaderFilesSavedCopyWith<$Res> {
  __$DownloaderFilesSavedCopyWithImpl(this._self, this._then);

  final _DownloaderFilesSaved _self;
  final $Res Function(_DownloaderFilesSaved) _then;

/// Create a copy of DownloaderFilesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? download = freezed,Object? downloaders = null,}) {
  return _then(_DownloaderFilesSaved(
download: freezed == download ? _self.download : download // ignore: cast_nullable_to_non_nullable
as FileDownloadModel?,downloaders: null == downloaders ? _self._downloaders : downloaders // ignore: cast_nullable_to_non_nullable
as List<FileSavedData>,
  ));
}

/// Create a copy of DownloaderFilesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FileDownloadModelCopyWith<$Res>? get download {
    if (_self.download == null) {
    return null;
  }

  return $FileDownloadModelCopyWith<$Res>(_self.download!, (value) {
    return _then(_self.copyWith(download: value));
  });
}
}

// dart format on
