// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sessions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SessionsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SessionsEvent()';
}


}

/// @nodoc
class $SessionsEventCopyWith<$Res>  {
$SessionsEventCopyWith(SessionsEvent _, $Res Function(SessionsEvent) __);
}


/// Adds pattern-matching-related methods to [SessionsEvent].
extension SessionsEventPatterns on SessionsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _EventSessionsNoLogin value)?  sessionsNoLogin,TResult Function( _EventSessionsMy value)?  getMySessions,TResult Function( _EventSessionsClose value)?  closeSession,TResult Function( _SessionCloseLogin value)?  sessionCloseCredential,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _EventSessionsNoLogin() when sessionsNoLogin != null:
return sessionsNoLogin(_that);case _EventSessionsMy() when getMySessions != null:
return getMySessions(_that);case _EventSessionsClose() when closeSession != null:
return closeSession(_that);case _SessionCloseLogin() when sessionCloseCredential != null:
return sessionCloseCredential(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _EventSessionsNoLogin value)  sessionsNoLogin,required TResult Function( _EventSessionsMy value)  getMySessions,required TResult Function( _EventSessionsClose value)  closeSession,required TResult Function( _SessionCloseLogin value)  sessionCloseCredential,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _EventSessionsNoLogin():
return sessionsNoLogin(_that);case _EventSessionsMy():
return getMySessions(_that);case _EventSessionsClose():
return closeSession(_that);case _SessionCloseLogin():
return sessionCloseCredential(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _EventSessionsNoLogin value)?  sessionsNoLogin,TResult? Function( _EventSessionsMy value)?  getMySessions,TResult? Function( _EventSessionsClose value)?  closeSession,TResult? Function( _SessionCloseLogin value)?  sessionCloseCredential,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _EventSessionsNoLogin() when sessionsNoLogin != null:
return sessionsNoLogin(_that);case _EventSessionsMy() when getMySessions != null:
return getMySessions(_that);case _EventSessionsClose() when closeSession != null:
return closeSession(_that);case _SessionCloseLogin() when sessionCloseCredential != null:
return sessionCloseCredential(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( String login)?  sessionsNoLogin,TResult Function()?  getMySessions,TResult Function( int sessionId)?  closeSession,TResult Function( String login,  String password,  int sessionId,  BuildContext context,  List<SessionsListItemModel> list)?  sessionCloseCredential,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _EventSessionsNoLogin() when sessionsNoLogin != null:
return sessionsNoLogin(_that.login);case _EventSessionsMy() when getMySessions != null:
return getMySessions();case _EventSessionsClose() when closeSession != null:
return closeSession(_that.sessionId);case _SessionCloseLogin() when sessionCloseCredential != null:
return sessionCloseCredential(_that.login,_that.password,_that.sessionId,_that.context,_that.list);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( String login)  sessionsNoLogin,required TResult Function()  getMySessions,required TResult Function( int sessionId)  closeSession,required TResult Function( String login,  String password,  int sessionId,  BuildContext context,  List<SessionsListItemModel> list)  sessionCloseCredential,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _EventSessionsNoLogin():
return sessionsNoLogin(_that.login);case _EventSessionsMy():
return getMySessions();case _EventSessionsClose():
return closeSession(_that.sessionId);case _SessionCloseLogin():
return sessionCloseCredential(_that.login,_that.password,_that.sessionId,_that.context,_that.list);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( String login)?  sessionsNoLogin,TResult? Function()?  getMySessions,TResult? Function( int sessionId)?  closeSession,TResult? Function( String login,  String password,  int sessionId,  BuildContext context,  List<SessionsListItemModel> list)?  sessionCloseCredential,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _EventSessionsNoLogin() when sessionsNoLogin != null:
return sessionsNoLogin(_that.login);case _EventSessionsMy() when getMySessions != null:
return getMySessions();case _EventSessionsClose() when closeSession != null:
return closeSession(_that.sessionId);case _SessionCloseLogin() when sessionCloseCredential != null:
return sessionCloseCredential(_that.login,_that.password,_that.sessionId,_that.context,_that.list);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements SessionsEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SessionsEvent.started()';
}


}




/// @nodoc


class _EventSessionsNoLogin implements SessionsEvent {
  const _EventSessionsNoLogin({required this.login});
  

 final  String login;

/// Create a copy of SessionsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventSessionsNoLoginCopyWith<_EventSessionsNoLogin> get copyWith => __$EventSessionsNoLoginCopyWithImpl<_EventSessionsNoLogin>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventSessionsNoLogin&&(identical(other.login, login) || other.login == login));
}


@override
int get hashCode => Object.hash(runtimeType,login);

@override
String toString() {
  return 'SessionsEvent.sessionsNoLogin(login: $login)';
}


}

/// @nodoc
abstract mixin class _$EventSessionsNoLoginCopyWith<$Res> implements $SessionsEventCopyWith<$Res> {
  factory _$EventSessionsNoLoginCopyWith(_EventSessionsNoLogin value, $Res Function(_EventSessionsNoLogin) _then) = __$EventSessionsNoLoginCopyWithImpl;
@useResult
$Res call({
 String login
});




}
/// @nodoc
class __$EventSessionsNoLoginCopyWithImpl<$Res>
    implements _$EventSessionsNoLoginCopyWith<$Res> {
  __$EventSessionsNoLoginCopyWithImpl(this._self, this._then);

  final _EventSessionsNoLogin _self;
  final $Res Function(_EventSessionsNoLogin) _then;

/// Create a copy of SessionsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? login = null,}) {
  return _then(_EventSessionsNoLogin(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _EventSessionsMy implements SessionsEvent {
  const _EventSessionsMy();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventSessionsMy);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SessionsEvent.getMySessions()';
}


}




/// @nodoc


class _EventSessionsClose implements SessionsEvent {
  const _EventSessionsClose({required this.sessionId});
  

 final  int sessionId;

/// Create a copy of SessionsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventSessionsCloseCopyWith<_EventSessionsClose> get copyWith => __$EventSessionsCloseCopyWithImpl<_EventSessionsClose>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventSessionsClose&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId));
}


@override
int get hashCode => Object.hash(runtimeType,sessionId);

@override
String toString() {
  return 'SessionsEvent.closeSession(sessionId: $sessionId)';
}


}

/// @nodoc
abstract mixin class _$EventSessionsCloseCopyWith<$Res> implements $SessionsEventCopyWith<$Res> {
  factory _$EventSessionsCloseCopyWith(_EventSessionsClose value, $Res Function(_EventSessionsClose) _then) = __$EventSessionsCloseCopyWithImpl;
@useResult
$Res call({
 int sessionId
});




}
/// @nodoc
class __$EventSessionsCloseCopyWithImpl<$Res>
    implements _$EventSessionsCloseCopyWith<$Res> {
  __$EventSessionsCloseCopyWithImpl(this._self, this._then);

  final _EventSessionsClose _self;
  final $Res Function(_EventSessionsClose) _then;

/// Create a copy of SessionsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sessionId = null,}) {
  return _then(_EventSessionsClose(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _SessionCloseLogin implements SessionsEvent {
  const _SessionCloseLogin({required this.login, required this.password, required this.sessionId, required this.context, required final  List<SessionsListItemModel> list}): _list = list;
  

 final  String login;
 final  String password;
 final  int sessionId;
 final  BuildContext context;
 final  List<SessionsListItemModel> _list;
 List<SessionsListItemModel> get list {
  if (_list is EqualUnmodifiableListView) return _list;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_list);
}


/// Create a copy of SessionsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SessionCloseLoginCopyWith<_SessionCloseLogin> get copyWith => __$SessionCloseLoginCopyWithImpl<_SessionCloseLogin>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SessionCloseLogin&&(identical(other.login, login) || other.login == login)&&(identical(other.password, password) || other.password == password)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.context, context) || other.context == context)&&const DeepCollectionEquality().equals(other._list, _list));
}


@override
int get hashCode => Object.hash(runtimeType,login,password,sessionId,context,const DeepCollectionEquality().hash(_list));

@override
String toString() {
  return 'SessionsEvent.sessionCloseCredential(login: $login, password: $password, sessionId: $sessionId, context: $context, list: $list)';
}


}

/// @nodoc
abstract mixin class _$SessionCloseLoginCopyWith<$Res> implements $SessionsEventCopyWith<$Res> {
  factory _$SessionCloseLoginCopyWith(_SessionCloseLogin value, $Res Function(_SessionCloseLogin) _then) = __$SessionCloseLoginCopyWithImpl;
@useResult
$Res call({
 String login, String password, int sessionId, BuildContext context, List<SessionsListItemModel> list
});




}
/// @nodoc
class __$SessionCloseLoginCopyWithImpl<$Res>
    implements _$SessionCloseLoginCopyWith<$Res> {
  __$SessionCloseLoginCopyWithImpl(this._self, this._then);

  final _SessionCloseLogin _self;
  final $Res Function(_SessionCloseLogin) _then;

/// Create a copy of SessionsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? login = null,Object? password = null,Object? sessionId = null,Object? context = null,Object? list = null,}) {
  return _then(_SessionCloseLogin(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as int,context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as BuildContext,list: null == list ? _self._list : list // ignore: cast_nullable_to_non_nullable
as List<SessionsListItemModel>,
  ));
}


}

/// @nodoc
mixin _$SessionsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SessionsState()';
}


}

/// @nodoc
class $SessionsStateCopyWith<$Res>  {
$SessionsStateCopyWith(SessionsState _, $Res Function(SessionsState) __);
}


/// Adds pattern-matching-related methods to [SessionsState].
extension SessionsStatePatterns on SessionsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SessionsInitial value)?  initial,TResult Function( SessionsLoad value)?  sessionsLoad,TResult Function( SessionsError value)?  sessionsError,TResult Function( SessionsNoAuth value)?  sessionsNoAuth,TResult Function( SessionsList value)?  sessionsList,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SessionsInitial() when initial != null:
return initial(_that);case SessionsLoad() when sessionsLoad != null:
return sessionsLoad(_that);case SessionsError() when sessionsError != null:
return sessionsError(_that);case SessionsNoAuth() when sessionsNoAuth != null:
return sessionsNoAuth(_that);case SessionsList() when sessionsList != null:
return sessionsList(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SessionsInitial value)  initial,required TResult Function( SessionsLoad value)  sessionsLoad,required TResult Function( SessionsError value)  sessionsError,required TResult Function( SessionsNoAuth value)  sessionsNoAuth,required TResult Function( SessionsList value)  sessionsList,}){
final _that = this;
switch (_that) {
case SessionsInitial():
return initial(_that);case SessionsLoad():
return sessionsLoad(_that);case SessionsError():
return sessionsError(_that);case SessionsNoAuth():
return sessionsNoAuth(_that);case SessionsList():
return sessionsList(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SessionsInitial value)?  initial,TResult? Function( SessionsLoad value)?  sessionsLoad,TResult? Function( SessionsError value)?  sessionsError,TResult? Function( SessionsNoAuth value)?  sessionsNoAuth,TResult? Function( SessionsList value)?  sessionsList,}){
final _that = this;
switch (_that) {
case SessionsInitial() when initial != null:
return initial(_that);case SessionsLoad() when sessionsLoad != null:
return sessionsLoad(_that);case SessionsError() when sessionsError != null:
return sessionsError(_that);case SessionsNoAuth() when sessionsNoAuth != null:
return sessionsNoAuth(_that);case SessionsList() when sessionsList != null:
return sessionsList(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  sessionsLoad,TResult Function()?  sessionsError,TResult Function( List<SessionsListItemModel> list,  bool? isLoad,  bool? isError)?  sessionsNoAuth,TResult Function( List<SessionsListItemModel> list,  bool? isLoad,  bool? isError)?  sessionsList,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SessionsInitial() when initial != null:
return initial();case SessionsLoad() when sessionsLoad != null:
return sessionsLoad();case SessionsError() when sessionsError != null:
return sessionsError();case SessionsNoAuth() when sessionsNoAuth != null:
return sessionsNoAuth(_that.list,_that.isLoad,_that.isError);case SessionsList() when sessionsList != null:
return sessionsList(_that.list,_that.isLoad,_that.isError);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  sessionsLoad,required TResult Function()  sessionsError,required TResult Function( List<SessionsListItemModel> list,  bool? isLoad,  bool? isError)  sessionsNoAuth,required TResult Function( List<SessionsListItemModel> list,  bool? isLoad,  bool? isError)  sessionsList,}) {final _that = this;
switch (_that) {
case SessionsInitial():
return initial();case SessionsLoad():
return sessionsLoad();case SessionsError():
return sessionsError();case SessionsNoAuth():
return sessionsNoAuth(_that.list,_that.isLoad,_that.isError);case SessionsList():
return sessionsList(_that.list,_that.isLoad,_that.isError);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  sessionsLoad,TResult? Function()?  sessionsError,TResult? Function( List<SessionsListItemModel> list,  bool? isLoad,  bool? isError)?  sessionsNoAuth,TResult? Function( List<SessionsListItemModel> list,  bool? isLoad,  bool? isError)?  sessionsList,}) {final _that = this;
switch (_that) {
case SessionsInitial() when initial != null:
return initial();case SessionsLoad() when sessionsLoad != null:
return sessionsLoad();case SessionsError() when sessionsError != null:
return sessionsError();case SessionsNoAuth() when sessionsNoAuth != null:
return sessionsNoAuth(_that.list,_that.isLoad,_that.isError);case SessionsList() when sessionsList != null:
return sessionsList(_that.list,_that.isLoad,_that.isError);case _:
  return null;

}
}

}

/// @nodoc


class SessionsInitial implements SessionsState {
  const SessionsInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionsInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SessionsState.initial()';
}


}




/// @nodoc


class SessionsLoad implements SessionsState {
  const SessionsLoad();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionsLoad);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SessionsState.sessionsLoad()';
}


}




/// @nodoc


class SessionsError implements SessionsState {
  const SessionsError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionsError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SessionsState.sessionsError()';
}


}




/// @nodoc


class SessionsNoAuth implements SessionsState {
  const SessionsNoAuth({required final  List<SessionsListItemModel> list, this.isLoad, this.isError}): _list = list;
  

 final  List<SessionsListItemModel> _list;
 List<SessionsListItemModel> get list {
  if (_list is EqualUnmodifiableListView) return _list;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_list);
}

 final  bool? isLoad;
 final  bool? isError;

/// Create a copy of SessionsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionsNoAuthCopyWith<SessionsNoAuth> get copyWith => _$SessionsNoAuthCopyWithImpl<SessionsNoAuth>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionsNoAuth&&const DeepCollectionEquality().equals(other._list, _list)&&(identical(other.isLoad, isLoad) || other.isLoad == isLoad)&&(identical(other.isError, isError) || other.isError == isError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_list),isLoad,isError);

@override
String toString() {
  return 'SessionsState.sessionsNoAuth(list: $list, isLoad: $isLoad, isError: $isError)';
}


}

/// @nodoc
abstract mixin class $SessionsNoAuthCopyWith<$Res> implements $SessionsStateCopyWith<$Res> {
  factory $SessionsNoAuthCopyWith(SessionsNoAuth value, $Res Function(SessionsNoAuth) _then) = _$SessionsNoAuthCopyWithImpl;
@useResult
$Res call({
 List<SessionsListItemModel> list, bool? isLoad, bool? isError
});




}
/// @nodoc
class _$SessionsNoAuthCopyWithImpl<$Res>
    implements $SessionsNoAuthCopyWith<$Res> {
  _$SessionsNoAuthCopyWithImpl(this._self, this._then);

  final SessionsNoAuth _self;
  final $Res Function(SessionsNoAuth) _then;

/// Create a copy of SessionsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? list = null,Object? isLoad = freezed,Object? isError = freezed,}) {
  return _then(SessionsNoAuth(
list: null == list ? _self._list : list // ignore: cast_nullable_to_non_nullable
as List<SessionsListItemModel>,isLoad: freezed == isLoad ? _self.isLoad : isLoad // ignore: cast_nullable_to_non_nullable
as bool?,isError: freezed == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

/// @nodoc


class SessionsList implements SessionsState {
  const SessionsList({required final  List<SessionsListItemModel> list, this.isLoad, this.isError}): _list = list;
  

 final  List<SessionsListItemModel> _list;
 List<SessionsListItemModel> get list {
  if (_list is EqualUnmodifiableListView) return _list;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_list);
}

 final  bool? isLoad;
 final  bool? isError;

/// Create a copy of SessionsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionsListCopyWith<SessionsList> get copyWith => _$SessionsListCopyWithImpl<SessionsList>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionsList&&const DeepCollectionEquality().equals(other._list, _list)&&(identical(other.isLoad, isLoad) || other.isLoad == isLoad)&&(identical(other.isError, isError) || other.isError == isError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_list),isLoad,isError);

@override
String toString() {
  return 'SessionsState.sessionsList(list: $list, isLoad: $isLoad, isError: $isError)';
}


}

/// @nodoc
abstract mixin class $SessionsListCopyWith<$Res> implements $SessionsStateCopyWith<$Res> {
  factory $SessionsListCopyWith(SessionsList value, $Res Function(SessionsList) _then) = _$SessionsListCopyWithImpl;
@useResult
$Res call({
 List<SessionsListItemModel> list, bool? isLoad, bool? isError
});




}
/// @nodoc
class _$SessionsListCopyWithImpl<$Res>
    implements $SessionsListCopyWith<$Res> {
  _$SessionsListCopyWithImpl(this._self, this._then);

  final SessionsList _self;
  final $Res Function(SessionsList) _then;

/// Create a copy of SessionsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? list = null,Object? isLoad = freezed,Object? isError = freezed,}) {
  return _then(SessionsList(
list: null == list ? _self._list : list // ignore: cast_nullable_to_non_nullable
as List<SessionsListItemModel>,isLoad: freezed == isLoad ? _self.isLoad : isLoad // ignore: cast_nullable_to_non_nullable
as bool?,isError: freezed == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
