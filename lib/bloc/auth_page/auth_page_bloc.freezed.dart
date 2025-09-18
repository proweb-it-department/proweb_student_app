// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthPageEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthPageEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthPageEvent()';
}


}

/// @nodoc
class $AuthPageEventCopyWith<$Res>  {
$AuthPageEventCopyWith(AuthPageEvent _, $Res Function(AuthPageEvent) __);
}


/// Adds pattern-matching-related methods to [AuthPageEvent].
extension AuthPageEventPatterns on AuthPageEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _AuthPageLogin value)?  login,TResult Function( _AuthPageResetPasswordToPassword value)?  backToLogin,TResult Function( _AuthPageResetPassword value)?  resetPassword,TResult Function( _AuthPageSendedCode value)?  sendedCode,TResult Function( _AuthPageVerificationCode value)?  verificationCode,TResult Function( _AuthPageNewPasswordSend value)?  newPassword,TResult Function( _AuthPageSignIn value)?  signin,TResult Function( _AuthPageSessionsSignIn value)?  sessionssignin,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _AuthPageLogin() when login != null:
return login(_that);case _AuthPageResetPasswordToPassword() when backToLogin != null:
return backToLogin(_that);case _AuthPageResetPassword() when resetPassword != null:
return resetPassword(_that);case _AuthPageSendedCode() when sendedCode != null:
return sendedCode(_that);case _AuthPageVerificationCode() when verificationCode != null:
return verificationCode(_that);case _AuthPageNewPasswordSend() when newPassword != null:
return newPassword(_that);case _AuthPageSignIn() when signin != null:
return signin(_that);case _AuthPageSessionsSignIn() when sessionssignin != null:
return sessionssignin(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _AuthPageLogin value)  login,required TResult Function( _AuthPageResetPasswordToPassword value)  backToLogin,required TResult Function( _AuthPageResetPassword value)  resetPassword,required TResult Function( _AuthPageSendedCode value)  sendedCode,required TResult Function( _AuthPageVerificationCode value)  verificationCode,required TResult Function( _AuthPageNewPasswordSend value)  newPassword,required TResult Function( _AuthPageSignIn value)  signin,required TResult Function( _AuthPageSessionsSignIn value)  sessionssignin,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _AuthPageLogin():
return login(_that);case _AuthPageResetPasswordToPassword():
return backToLogin(_that);case _AuthPageResetPassword():
return resetPassword(_that);case _AuthPageSendedCode():
return sendedCode(_that);case _AuthPageVerificationCode():
return verificationCode(_that);case _AuthPageNewPasswordSend():
return newPassword(_that);case _AuthPageSignIn():
return signin(_that);case _AuthPageSessionsSignIn():
return sessionssignin(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _AuthPageLogin value)?  login,TResult? Function( _AuthPageResetPasswordToPassword value)?  backToLogin,TResult? Function( _AuthPageResetPassword value)?  resetPassword,TResult? Function( _AuthPageSendedCode value)?  sendedCode,TResult? Function( _AuthPageVerificationCode value)?  verificationCode,TResult? Function( _AuthPageNewPasswordSend value)?  newPassword,TResult? Function( _AuthPageSignIn value)?  signin,TResult? Function( _AuthPageSessionsSignIn value)?  sessionssignin,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _AuthPageLogin() when login != null:
return login(_that);case _AuthPageResetPasswordToPassword() when backToLogin != null:
return backToLogin(_that);case _AuthPageResetPassword() when resetPassword != null:
return resetPassword(_that);case _AuthPageSendedCode() when sendedCode != null:
return sendedCode(_that);case _AuthPageVerificationCode() when verificationCode != null:
return verificationCode(_that);case _AuthPageNewPasswordSend() when newPassword != null:
return newPassword(_that);case _AuthPageSignIn() when signin != null:
return signin(_that);case _AuthPageSessionsSignIn() when sessionssignin != null:
return sessionssignin(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( String login)?  login,TResult Function( String login)?  backToLogin,TResult Function( String login)?  resetPassword,TResult Function( String login)?  sendedCode,TResult Function( String login,  int verificationCode)?  verificationCode,TResult Function( String login,  String password)?  newPassword,TResult Function( String login,  String password)?  signin,TResult Function( String login,  String password)?  sessionssignin,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _AuthPageLogin() when login != null:
return login(_that.login);case _AuthPageResetPasswordToPassword() when backToLogin != null:
return backToLogin(_that.login);case _AuthPageResetPassword() when resetPassword != null:
return resetPassword(_that.login);case _AuthPageSendedCode() when sendedCode != null:
return sendedCode(_that.login);case _AuthPageVerificationCode() when verificationCode != null:
return verificationCode(_that.login,_that.verificationCode);case _AuthPageNewPasswordSend() when newPassword != null:
return newPassword(_that.login,_that.password);case _AuthPageSignIn() when signin != null:
return signin(_that.login,_that.password);case _AuthPageSessionsSignIn() when sessionssignin != null:
return sessionssignin(_that.login,_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( String login)  login,required TResult Function( String login)  backToLogin,required TResult Function( String login)  resetPassword,required TResult Function( String login)  sendedCode,required TResult Function( String login,  int verificationCode)  verificationCode,required TResult Function( String login,  String password)  newPassword,required TResult Function( String login,  String password)  signin,required TResult Function( String login,  String password)  sessionssignin,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _AuthPageLogin():
return login(_that.login);case _AuthPageResetPasswordToPassword():
return backToLogin(_that.login);case _AuthPageResetPassword():
return resetPassword(_that.login);case _AuthPageSendedCode():
return sendedCode(_that.login);case _AuthPageVerificationCode():
return verificationCode(_that.login,_that.verificationCode);case _AuthPageNewPasswordSend():
return newPassword(_that.login,_that.password);case _AuthPageSignIn():
return signin(_that.login,_that.password);case _AuthPageSessionsSignIn():
return sessionssignin(_that.login,_that.password);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( String login)?  login,TResult? Function( String login)?  backToLogin,TResult? Function( String login)?  resetPassword,TResult? Function( String login)?  sendedCode,TResult? Function( String login,  int verificationCode)?  verificationCode,TResult? Function( String login,  String password)?  newPassword,TResult? Function( String login,  String password)?  signin,TResult? Function( String login,  String password)?  sessionssignin,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _AuthPageLogin() when login != null:
return login(_that.login);case _AuthPageResetPasswordToPassword() when backToLogin != null:
return backToLogin(_that.login);case _AuthPageResetPassword() when resetPassword != null:
return resetPassword(_that.login);case _AuthPageSendedCode() when sendedCode != null:
return sendedCode(_that.login);case _AuthPageVerificationCode() when verificationCode != null:
return verificationCode(_that.login,_that.verificationCode);case _AuthPageNewPasswordSend() when newPassword != null:
return newPassword(_that.login,_that.password);case _AuthPageSignIn() when signin != null:
return signin(_that.login,_that.password);case _AuthPageSessionsSignIn() when sessionssignin != null:
return sessionssignin(_that.login,_that.password);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements AuthPageEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthPageEvent.started()';
}


}




/// @nodoc


class _AuthPageLogin implements AuthPageEvent {
  const _AuthPageLogin({required this.login});
  

 final  String login;

/// Create a copy of AuthPageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthPageLoginCopyWith<_AuthPageLogin> get copyWith => __$AuthPageLoginCopyWithImpl<_AuthPageLogin>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthPageLogin&&(identical(other.login, login) || other.login == login));
}


@override
int get hashCode => Object.hash(runtimeType,login);

@override
String toString() {
  return 'AuthPageEvent.login(login: $login)';
}


}

/// @nodoc
abstract mixin class _$AuthPageLoginCopyWith<$Res> implements $AuthPageEventCopyWith<$Res> {
  factory _$AuthPageLoginCopyWith(_AuthPageLogin value, $Res Function(_AuthPageLogin) _then) = __$AuthPageLoginCopyWithImpl;
@useResult
$Res call({
 String login
});




}
/// @nodoc
class __$AuthPageLoginCopyWithImpl<$Res>
    implements _$AuthPageLoginCopyWith<$Res> {
  __$AuthPageLoginCopyWithImpl(this._self, this._then);

  final _AuthPageLogin _self;
  final $Res Function(_AuthPageLogin) _then;

/// Create a copy of AuthPageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? login = null,}) {
  return _then(_AuthPageLogin(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _AuthPageResetPasswordToPassword implements AuthPageEvent {
  const _AuthPageResetPasswordToPassword({required this.login});
  

 final  String login;

/// Create a copy of AuthPageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthPageResetPasswordToPasswordCopyWith<_AuthPageResetPasswordToPassword> get copyWith => __$AuthPageResetPasswordToPasswordCopyWithImpl<_AuthPageResetPasswordToPassword>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthPageResetPasswordToPassword&&(identical(other.login, login) || other.login == login));
}


@override
int get hashCode => Object.hash(runtimeType,login);

@override
String toString() {
  return 'AuthPageEvent.backToLogin(login: $login)';
}


}

/// @nodoc
abstract mixin class _$AuthPageResetPasswordToPasswordCopyWith<$Res> implements $AuthPageEventCopyWith<$Res> {
  factory _$AuthPageResetPasswordToPasswordCopyWith(_AuthPageResetPasswordToPassword value, $Res Function(_AuthPageResetPasswordToPassword) _then) = __$AuthPageResetPasswordToPasswordCopyWithImpl;
@useResult
$Res call({
 String login
});




}
/// @nodoc
class __$AuthPageResetPasswordToPasswordCopyWithImpl<$Res>
    implements _$AuthPageResetPasswordToPasswordCopyWith<$Res> {
  __$AuthPageResetPasswordToPasswordCopyWithImpl(this._self, this._then);

  final _AuthPageResetPasswordToPassword _self;
  final $Res Function(_AuthPageResetPasswordToPassword) _then;

/// Create a copy of AuthPageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? login = null,}) {
  return _then(_AuthPageResetPasswordToPassword(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _AuthPageResetPassword implements AuthPageEvent {
  const _AuthPageResetPassword({required this.login});
  

 final  String login;

/// Create a copy of AuthPageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthPageResetPasswordCopyWith<_AuthPageResetPassword> get copyWith => __$AuthPageResetPasswordCopyWithImpl<_AuthPageResetPassword>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthPageResetPassword&&(identical(other.login, login) || other.login == login));
}


@override
int get hashCode => Object.hash(runtimeType,login);

@override
String toString() {
  return 'AuthPageEvent.resetPassword(login: $login)';
}


}

/// @nodoc
abstract mixin class _$AuthPageResetPasswordCopyWith<$Res> implements $AuthPageEventCopyWith<$Res> {
  factory _$AuthPageResetPasswordCopyWith(_AuthPageResetPassword value, $Res Function(_AuthPageResetPassword) _then) = __$AuthPageResetPasswordCopyWithImpl;
@useResult
$Res call({
 String login
});




}
/// @nodoc
class __$AuthPageResetPasswordCopyWithImpl<$Res>
    implements _$AuthPageResetPasswordCopyWith<$Res> {
  __$AuthPageResetPasswordCopyWithImpl(this._self, this._then);

  final _AuthPageResetPassword _self;
  final $Res Function(_AuthPageResetPassword) _then;

/// Create a copy of AuthPageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? login = null,}) {
  return _then(_AuthPageResetPassword(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _AuthPageSendedCode implements AuthPageEvent {
  const _AuthPageSendedCode({required this.login});
  

 final  String login;

/// Create a copy of AuthPageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthPageSendedCodeCopyWith<_AuthPageSendedCode> get copyWith => __$AuthPageSendedCodeCopyWithImpl<_AuthPageSendedCode>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthPageSendedCode&&(identical(other.login, login) || other.login == login));
}


@override
int get hashCode => Object.hash(runtimeType,login);

@override
String toString() {
  return 'AuthPageEvent.sendedCode(login: $login)';
}


}

/// @nodoc
abstract mixin class _$AuthPageSendedCodeCopyWith<$Res> implements $AuthPageEventCopyWith<$Res> {
  factory _$AuthPageSendedCodeCopyWith(_AuthPageSendedCode value, $Res Function(_AuthPageSendedCode) _then) = __$AuthPageSendedCodeCopyWithImpl;
@useResult
$Res call({
 String login
});




}
/// @nodoc
class __$AuthPageSendedCodeCopyWithImpl<$Res>
    implements _$AuthPageSendedCodeCopyWith<$Res> {
  __$AuthPageSendedCodeCopyWithImpl(this._self, this._then);

  final _AuthPageSendedCode _self;
  final $Res Function(_AuthPageSendedCode) _then;

/// Create a copy of AuthPageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? login = null,}) {
  return _then(_AuthPageSendedCode(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _AuthPageVerificationCode implements AuthPageEvent {
  const _AuthPageVerificationCode({required this.login, required this.verificationCode});
  

 final  String login;
 final  int verificationCode;

/// Create a copy of AuthPageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthPageVerificationCodeCopyWith<_AuthPageVerificationCode> get copyWith => __$AuthPageVerificationCodeCopyWithImpl<_AuthPageVerificationCode>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthPageVerificationCode&&(identical(other.login, login) || other.login == login)&&(identical(other.verificationCode, verificationCode) || other.verificationCode == verificationCode));
}


@override
int get hashCode => Object.hash(runtimeType,login,verificationCode);

@override
String toString() {
  return 'AuthPageEvent.verificationCode(login: $login, verificationCode: $verificationCode)';
}


}

/// @nodoc
abstract mixin class _$AuthPageVerificationCodeCopyWith<$Res> implements $AuthPageEventCopyWith<$Res> {
  factory _$AuthPageVerificationCodeCopyWith(_AuthPageVerificationCode value, $Res Function(_AuthPageVerificationCode) _then) = __$AuthPageVerificationCodeCopyWithImpl;
@useResult
$Res call({
 String login, int verificationCode
});




}
/// @nodoc
class __$AuthPageVerificationCodeCopyWithImpl<$Res>
    implements _$AuthPageVerificationCodeCopyWith<$Res> {
  __$AuthPageVerificationCodeCopyWithImpl(this._self, this._then);

  final _AuthPageVerificationCode _self;
  final $Res Function(_AuthPageVerificationCode) _then;

/// Create a copy of AuthPageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? login = null,Object? verificationCode = null,}) {
  return _then(_AuthPageVerificationCode(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,verificationCode: null == verificationCode ? _self.verificationCode : verificationCode // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _AuthPageNewPasswordSend implements AuthPageEvent {
  const _AuthPageNewPasswordSend({required this.login, required this.password});
  

 final  String login;
 final  String password;

/// Create a copy of AuthPageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthPageNewPasswordSendCopyWith<_AuthPageNewPasswordSend> get copyWith => __$AuthPageNewPasswordSendCopyWithImpl<_AuthPageNewPasswordSend>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthPageNewPasswordSend&&(identical(other.login, login) || other.login == login)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,login,password);

@override
String toString() {
  return 'AuthPageEvent.newPassword(login: $login, password: $password)';
}


}

/// @nodoc
abstract mixin class _$AuthPageNewPasswordSendCopyWith<$Res> implements $AuthPageEventCopyWith<$Res> {
  factory _$AuthPageNewPasswordSendCopyWith(_AuthPageNewPasswordSend value, $Res Function(_AuthPageNewPasswordSend) _then) = __$AuthPageNewPasswordSendCopyWithImpl;
@useResult
$Res call({
 String login, String password
});




}
/// @nodoc
class __$AuthPageNewPasswordSendCopyWithImpl<$Res>
    implements _$AuthPageNewPasswordSendCopyWith<$Res> {
  __$AuthPageNewPasswordSendCopyWithImpl(this._self, this._then);

  final _AuthPageNewPasswordSend _self;
  final $Res Function(_AuthPageNewPasswordSend) _then;

/// Create a copy of AuthPageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? login = null,Object? password = null,}) {
  return _then(_AuthPageNewPasswordSend(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _AuthPageSignIn implements AuthPageEvent {
  const _AuthPageSignIn({required this.login, required this.password});
  

 final  String login;
 final  String password;

/// Create a copy of AuthPageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthPageSignInCopyWith<_AuthPageSignIn> get copyWith => __$AuthPageSignInCopyWithImpl<_AuthPageSignIn>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthPageSignIn&&(identical(other.login, login) || other.login == login)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,login,password);

@override
String toString() {
  return 'AuthPageEvent.signin(login: $login, password: $password)';
}


}

/// @nodoc
abstract mixin class _$AuthPageSignInCopyWith<$Res> implements $AuthPageEventCopyWith<$Res> {
  factory _$AuthPageSignInCopyWith(_AuthPageSignIn value, $Res Function(_AuthPageSignIn) _then) = __$AuthPageSignInCopyWithImpl;
@useResult
$Res call({
 String login, String password
});




}
/// @nodoc
class __$AuthPageSignInCopyWithImpl<$Res>
    implements _$AuthPageSignInCopyWith<$Res> {
  __$AuthPageSignInCopyWithImpl(this._self, this._then);

  final _AuthPageSignIn _self;
  final $Res Function(_AuthPageSignIn) _then;

/// Create a copy of AuthPageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? login = null,Object? password = null,}) {
  return _then(_AuthPageSignIn(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _AuthPageSessionsSignIn implements AuthPageEvent {
  const _AuthPageSessionsSignIn({required this.login, required this.password});
  

 final  String login;
 final  String password;

/// Create a copy of AuthPageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthPageSessionsSignInCopyWith<_AuthPageSessionsSignIn> get copyWith => __$AuthPageSessionsSignInCopyWithImpl<_AuthPageSessionsSignIn>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthPageSessionsSignIn&&(identical(other.login, login) || other.login == login)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,login,password);

@override
String toString() {
  return 'AuthPageEvent.sessionssignin(login: $login, password: $password)';
}


}

/// @nodoc
abstract mixin class _$AuthPageSessionsSignInCopyWith<$Res> implements $AuthPageEventCopyWith<$Res> {
  factory _$AuthPageSessionsSignInCopyWith(_AuthPageSessionsSignIn value, $Res Function(_AuthPageSessionsSignIn) _then) = __$AuthPageSessionsSignInCopyWithImpl;
@useResult
$Res call({
 String login, String password
});




}
/// @nodoc
class __$AuthPageSessionsSignInCopyWithImpl<$Res>
    implements _$AuthPageSessionsSignInCopyWith<$Res> {
  __$AuthPageSessionsSignInCopyWithImpl(this._self, this._then);

  final _AuthPageSessionsSignIn _self;
  final $Res Function(_AuthPageSessionsSignIn) _then;

/// Create a copy of AuthPageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? login = null,Object? password = null,}) {
  return _then(_AuthPageSessionsSignIn(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$AuthPageState {

 bool? get isLoad;
/// Create a copy of AuthPageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthPageStateCopyWith<AuthPageState> get copyWith => _$AuthPageStateCopyWithImpl<AuthPageState>(this as AuthPageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthPageState&&(identical(other.isLoad, isLoad) || other.isLoad == isLoad));
}


@override
int get hashCode => Object.hash(runtimeType,isLoad);

@override
String toString() {
  return 'AuthPageState(isLoad: $isLoad)';
}


}

/// @nodoc
abstract mixin class $AuthPageStateCopyWith<$Res>  {
  factory $AuthPageStateCopyWith(AuthPageState value, $Res Function(AuthPageState) _then) = _$AuthPageStateCopyWithImpl;
@useResult
$Res call({
 bool? isLoad
});




}
/// @nodoc
class _$AuthPageStateCopyWithImpl<$Res>
    implements $AuthPageStateCopyWith<$Res> {
  _$AuthPageStateCopyWithImpl(this._self, this._then);

  final AuthPageState _self;
  final $Res Function(AuthPageState) _then;

/// Create a copy of AuthPageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoad = freezed,}) {
  return _then(_self.copyWith(
isLoad: freezed == isLoad ? _self.isLoad : isLoad // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthPageState].
extension AuthPageStatePatterns on AuthPageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _AuthPagePassword value)?  password,TResult Function( _AuthPageCode value)?  code,TResult Function( _AuthPageNewPassword value)?  newPassword,TResult Function( _AuthPagePasswordRecovery value)?  passwordRecovery,TResult Function( _AuthPageSessins value)?  sessions,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _AuthPagePassword() when password != null:
return password(_that);case _AuthPageCode() when code != null:
return code(_that);case _AuthPageNewPassword() when newPassword != null:
return newPassword(_that);case _AuthPagePasswordRecovery() when passwordRecovery != null:
return passwordRecovery(_that);case _AuthPageSessins() when sessions != null:
return sessions(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _AuthPagePassword value)  password,required TResult Function( _AuthPageCode value)  code,required TResult Function( _AuthPageNewPassword value)  newPassword,required TResult Function( _AuthPagePasswordRecovery value)  passwordRecovery,required TResult Function( _AuthPageSessins value)  sessions,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _AuthPagePassword():
return password(_that);case _AuthPageCode():
return code(_that);case _AuthPageNewPassword():
return newPassword(_that);case _AuthPagePasswordRecovery():
return passwordRecovery(_that);case _AuthPageSessins():
return sessions(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _AuthPagePassword value)?  password,TResult? Function( _AuthPageCode value)?  code,TResult? Function( _AuthPageNewPassword value)?  newPassword,TResult? Function( _AuthPagePasswordRecovery value)?  passwordRecovery,TResult? Function( _AuthPageSessins value)?  sessions,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _AuthPagePassword() when password != null:
return password(_that);case _AuthPageCode() when code != null:
return code(_that);case _AuthPageNewPassword() when newPassword != null:
return newPassword(_that);case _AuthPagePasswordRecovery() when passwordRecovery != null:
return passwordRecovery(_that);case _AuthPageSessins() when sessions != null:
return sessions(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool? isLoad,  LoginType? type)?  initial,TResult Function( String login,  bool? isLoad)?  password,TResult Function( String login,  bool? isLoad,  LoginType? type)?  code,TResult Function( String login,  bool? isLoad)?  newPassword,TResult Function( String login,  LoginType? type,  bool? isLoad)?  passwordRecovery,TResult Function( String login,  String password,  LoginType? type,  bool? isLoad)?  sessions,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.isLoad,_that.type);case _AuthPagePassword() when password != null:
return password(_that.login,_that.isLoad);case _AuthPageCode() when code != null:
return code(_that.login,_that.isLoad,_that.type);case _AuthPageNewPassword() when newPassword != null:
return newPassword(_that.login,_that.isLoad);case _AuthPagePasswordRecovery() when passwordRecovery != null:
return passwordRecovery(_that.login,_that.type,_that.isLoad);case _AuthPageSessins() when sessions != null:
return sessions(_that.login,_that.password,_that.type,_that.isLoad);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool? isLoad,  LoginType? type)  initial,required TResult Function( String login,  bool? isLoad)  password,required TResult Function( String login,  bool? isLoad,  LoginType? type)  code,required TResult Function( String login,  bool? isLoad)  newPassword,required TResult Function( String login,  LoginType? type,  bool? isLoad)  passwordRecovery,required TResult Function( String login,  String password,  LoginType? type,  bool? isLoad)  sessions,}) {final _that = this;
switch (_that) {
case _Initial():
return initial(_that.isLoad,_that.type);case _AuthPagePassword():
return password(_that.login,_that.isLoad);case _AuthPageCode():
return code(_that.login,_that.isLoad,_that.type);case _AuthPageNewPassword():
return newPassword(_that.login,_that.isLoad);case _AuthPagePasswordRecovery():
return passwordRecovery(_that.login,_that.type,_that.isLoad);case _AuthPageSessins():
return sessions(_that.login,_that.password,_that.type,_that.isLoad);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool? isLoad,  LoginType? type)?  initial,TResult? Function( String login,  bool? isLoad)?  password,TResult? Function( String login,  bool? isLoad,  LoginType? type)?  code,TResult? Function( String login,  bool? isLoad)?  newPassword,TResult? Function( String login,  LoginType? type,  bool? isLoad)?  passwordRecovery,TResult? Function( String login,  String password,  LoginType? type,  bool? isLoad)?  sessions,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.isLoad,_that.type);case _AuthPagePassword() when password != null:
return password(_that.login,_that.isLoad);case _AuthPageCode() when code != null:
return code(_that.login,_that.isLoad,_that.type);case _AuthPageNewPassword() when newPassword != null:
return newPassword(_that.login,_that.isLoad);case _AuthPagePasswordRecovery() when passwordRecovery != null:
return passwordRecovery(_that.login,_that.type,_that.isLoad);case _AuthPageSessins() when sessions != null:
return sessions(_that.login,_that.password,_that.type,_that.isLoad);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AuthPageState {
  const _Initial({this.isLoad, this.type});
  

@override final  bool? isLoad;
 final  LoginType? type;

/// Create a copy of AuthPageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&(identical(other.isLoad, isLoad) || other.isLoad == isLoad)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,isLoad,type);

@override
String toString() {
  return 'AuthPageState.initial(isLoad: $isLoad, type: $type)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $AuthPageStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 bool? isLoad, LoginType? type
});




}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of AuthPageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoad = freezed,Object? type = freezed,}) {
  return _then(_Initial(
isLoad: freezed == isLoad ? _self.isLoad : isLoad // ignore: cast_nullable_to_non_nullable
as bool?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as LoginType?,
  ));
}


}

/// @nodoc


class _AuthPagePassword implements AuthPageState {
  const _AuthPagePassword({required this.login, this.isLoad});
  

 final  String login;
@override final  bool? isLoad;

/// Create a copy of AuthPageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthPagePasswordCopyWith<_AuthPagePassword> get copyWith => __$AuthPagePasswordCopyWithImpl<_AuthPagePassword>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthPagePassword&&(identical(other.login, login) || other.login == login)&&(identical(other.isLoad, isLoad) || other.isLoad == isLoad));
}


@override
int get hashCode => Object.hash(runtimeType,login,isLoad);

@override
String toString() {
  return 'AuthPageState.password(login: $login, isLoad: $isLoad)';
}


}

/// @nodoc
abstract mixin class _$AuthPagePasswordCopyWith<$Res> implements $AuthPageStateCopyWith<$Res> {
  factory _$AuthPagePasswordCopyWith(_AuthPagePassword value, $Res Function(_AuthPagePassword) _then) = __$AuthPagePasswordCopyWithImpl;
@override @useResult
$Res call({
 String login, bool? isLoad
});




}
/// @nodoc
class __$AuthPagePasswordCopyWithImpl<$Res>
    implements _$AuthPagePasswordCopyWith<$Res> {
  __$AuthPagePasswordCopyWithImpl(this._self, this._then);

  final _AuthPagePassword _self;
  final $Res Function(_AuthPagePassword) _then;

/// Create a copy of AuthPageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? login = null,Object? isLoad = freezed,}) {
  return _then(_AuthPagePassword(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,isLoad: freezed == isLoad ? _self.isLoad : isLoad // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

/// @nodoc


class _AuthPageCode implements AuthPageState {
  const _AuthPageCode({required this.login, this.isLoad, this.type});
  

 final  String login;
@override final  bool? isLoad;
 final  LoginType? type;

/// Create a copy of AuthPageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthPageCodeCopyWith<_AuthPageCode> get copyWith => __$AuthPageCodeCopyWithImpl<_AuthPageCode>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthPageCode&&(identical(other.login, login) || other.login == login)&&(identical(other.isLoad, isLoad) || other.isLoad == isLoad)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,login,isLoad,type);

@override
String toString() {
  return 'AuthPageState.code(login: $login, isLoad: $isLoad, type: $type)';
}


}

/// @nodoc
abstract mixin class _$AuthPageCodeCopyWith<$Res> implements $AuthPageStateCopyWith<$Res> {
  factory _$AuthPageCodeCopyWith(_AuthPageCode value, $Res Function(_AuthPageCode) _then) = __$AuthPageCodeCopyWithImpl;
@override @useResult
$Res call({
 String login, bool? isLoad, LoginType? type
});




}
/// @nodoc
class __$AuthPageCodeCopyWithImpl<$Res>
    implements _$AuthPageCodeCopyWith<$Res> {
  __$AuthPageCodeCopyWithImpl(this._self, this._then);

  final _AuthPageCode _self;
  final $Res Function(_AuthPageCode) _then;

/// Create a copy of AuthPageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? login = null,Object? isLoad = freezed,Object? type = freezed,}) {
  return _then(_AuthPageCode(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,isLoad: freezed == isLoad ? _self.isLoad : isLoad // ignore: cast_nullable_to_non_nullable
as bool?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as LoginType?,
  ));
}


}

/// @nodoc


class _AuthPageNewPassword implements AuthPageState {
  const _AuthPageNewPassword({required this.login, this.isLoad});
  

 final  String login;
@override final  bool? isLoad;

/// Create a copy of AuthPageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthPageNewPasswordCopyWith<_AuthPageNewPassword> get copyWith => __$AuthPageNewPasswordCopyWithImpl<_AuthPageNewPassword>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthPageNewPassword&&(identical(other.login, login) || other.login == login)&&(identical(other.isLoad, isLoad) || other.isLoad == isLoad));
}


@override
int get hashCode => Object.hash(runtimeType,login,isLoad);

@override
String toString() {
  return 'AuthPageState.newPassword(login: $login, isLoad: $isLoad)';
}


}

/// @nodoc
abstract mixin class _$AuthPageNewPasswordCopyWith<$Res> implements $AuthPageStateCopyWith<$Res> {
  factory _$AuthPageNewPasswordCopyWith(_AuthPageNewPassword value, $Res Function(_AuthPageNewPassword) _then) = __$AuthPageNewPasswordCopyWithImpl;
@override @useResult
$Res call({
 String login, bool? isLoad
});




}
/// @nodoc
class __$AuthPageNewPasswordCopyWithImpl<$Res>
    implements _$AuthPageNewPasswordCopyWith<$Res> {
  __$AuthPageNewPasswordCopyWithImpl(this._self, this._then);

  final _AuthPageNewPassword _self;
  final $Res Function(_AuthPageNewPassword) _then;

/// Create a copy of AuthPageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? login = null,Object? isLoad = freezed,}) {
  return _then(_AuthPageNewPassword(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,isLoad: freezed == isLoad ? _self.isLoad : isLoad // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

/// @nodoc


class _AuthPagePasswordRecovery implements AuthPageState {
  const _AuthPagePasswordRecovery({required this.login, this.type, this.isLoad});
  

 final  String login;
 final  LoginType? type;
@override final  bool? isLoad;

/// Create a copy of AuthPageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthPagePasswordRecoveryCopyWith<_AuthPagePasswordRecovery> get copyWith => __$AuthPagePasswordRecoveryCopyWithImpl<_AuthPagePasswordRecovery>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthPagePasswordRecovery&&(identical(other.login, login) || other.login == login)&&(identical(other.type, type) || other.type == type)&&(identical(other.isLoad, isLoad) || other.isLoad == isLoad));
}


@override
int get hashCode => Object.hash(runtimeType,login,type,isLoad);

@override
String toString() {
  return 'AuthPageState.passwordRecovery(login: $login, type: $type, isLoad: $isLoad)';
}


}

/// @nodoc
abstract mixin class _$AuthPagePasswordRecoveryCopyWith<$Res> implements $AuthPageStateCopyWith<$Res> {
  factory _$AuthPagePasswordRecoveryCopyWith(_AuthPagePasswordRecovery value, $Res Function(_AuthPagePasswordRecovery) _then) = __$AuthPagePasswordRecoveryCopyWithImpl;
@override @useResult
$Res call({
 String login, LoginType? type, bool? isLoad
});




}
/// @nodoc
class __$AuthPagePasswordRecoveryCopyWithImpl<$Res>
    implements _$AuthPagePasswordRecoveryCopyWith<$Res> {
  __$AuthPagePasswordRecoveryCopyWithImpl(this._self, this._then);

  final _AuthPagePasswordRecovery _self;
  final $Res Function(_AuthPagePasswordRecovery) _then;

/// Create a copy of AuthPageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? login = null,Object? type = freezed,Object? isLoad = freezed,}) {
  return _then(_AuthPagePasswordRecovery(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as LoginType?,isLoad: freezed == isLoad ? _self.isLoad : isLoad // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

/// @nodoc


class _AuthPageSessins implements AuthPageState {
  const _AuthPageSessins({required this.login, required this.password, this.type, this.isLoad});
  

 final  String login;
 final  String password;
 final  LoginType? type;
@override final  bool? isLoad;

/// Create a copy of AuthPageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthPageSessinsCopyWith<_AuthPageSessins> get copyWith => __$AuthPageSessinsCopyWithImpl<_AuthPageSessins>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthPageSessins&&(identical(other.login, login) || other.login == login)&&(identical(other.password, password) || other.password == password)&&(identical(other.type, type) || other.type == type)&&(identical(other.isLoad, isLoad) || other.isLoad == isLoad));
}


@override
int get hashCode => Object.hash(runtimeType,login,password,type,isLoad);

@override
String toString() {
  return 'AuthPageState.sessions(login: $login, password: $password, type: $type, isLoad: $isLoad)';
}


}

/// @nodoc
abstract mixin class _$AuthPageSessinsCopyWith<$Res> implements $AuthPageStateCopyWith<$Res> {
  factory _$AuthPageSessinsCopyWith(_AuthPageSessins value, $Res Function(_AuthPageSessins) _then) = __$AuthPageSessinsCopyWithImpl;
@override @useResult
$Res call({
 String login, String password, LoginType? type, bool? isLoad
});




}
/// @nodoc
class __$AuthPageSessinsCopyWithImpl<$Res>
    implements _$AuthPageSessinsCopyWith<$Res> {
  __$AuthPageSessinsCopyWithImpl(this._self, this._then);

  final _AuthPageSessins _self;
  final $Res Function(_AuthPageSessins) _then;

/// Create a copy of AuthPageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? login = null,Object? password = null,Object? type = freezed,Object? isLoad = freezed,}) {
  return _then(_AuthPageSessins(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as LoginType?,isLoad: freezed == isLoad ? _self.isLoad : isLoad // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
