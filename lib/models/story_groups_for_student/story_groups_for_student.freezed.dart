// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'story_groups_for_student.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StoryGroupsForStudent implements DiagnosticableTreeMixin {

@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'created_by_id') int? get createdById;@JsonKey(name: 'updated_by_id') int? get updatedById;@JsonKey(name: 'language') String? get language;@JsonKey(name: 'stories') List<Stories>? get stories;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'title') String? get title;@JsonKey(name: 'finish') String? get finish;@JsonKey(name: 'start') String? get start;@JsonKey(name: 'is_premium_only') bool? get isPremiumOnly;@JsonKey(name: 'preview') String? get preview;@JsonKey(name: 'type') SoryType? get type;
/// Create a copy of StoryGroupsForStudent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoryGroupsForStudentCopyWith<StoryGroupsForStudent> get copyWith => _$StoryGroupsForStudentCopyWithImpl<StoryGroupsForStudent>(this as StoryGroupsForStudent, _$identity);

  /// Serializes this StoryGroupsForStudent to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'StoryGroupsForStudent'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdById', createdById))..add(DiagnosticsProperty('updatedById', updatedById))..add(DiagnosticsProperty('language', language))..add(DiagnosticsProperty('stories', stories))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('title', title))..add(DiagnosticsProperty('finish', finish))..add(DiagnosticsProperty('start', start))..add(DiagnosticsProperty('isPremiumOnly', isPremiumOnly))..add(DiagnosticsProperty('preview', preview))..add(DiagnosticsProperty('type', type));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoryGroupsForStudent&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.updatedById, updatedById) || other.updatedById == updatedById)&&(identical(other.language, language) || other.language == language)&&const DeepCollectionEquality().equals(other.stories, stories)&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.finish, finish) || other.finish == finish)&&(identical(other.start, start) || other.start == start)&&(identical(other.isPremiumOnly, isPremiumOnly) || other.isPremiumOnly == isPremiumOnly)&&(identical(other.preview, preview) || other.preview == preview)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdById,updatedById,language,const DeepCollectionEquality().hash(stories),id,title,finish,start,isPremiumOnly,preview,type);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'StoryGroupsForStudent(createdAt: $createdAt, updatedAt: $updatedAt, createdById: $createdById, updatedById: $updatedById, language: $language, stories: $stories, id: $id, title: $title, finish: $finish, start: $start, isPremiumOnly: $isPremiumOnly, preview: $preview, type: $type)';
}


}

/// @nodoc
abstract mixin class $StoryGroupsForStudentCopyWith<$Res>  {
  factory $StoryGroupsForStudentCopyWith(StoryGroupsForStudent value, $Res Function(StoryGroupsForStudent) _then) = _$StoryGroupsForStudentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by_id') int? createdById,@JsonKey(name: 'updated_by_id') int? updatedById,@JsonKey(name: 'language') String? language,@JsonKey(name: 'stories') List<Stories>? stories,@JsonKey(name: 'id') int? id,@JsonKey(name: 'title') String? title,@JsonKey(name: 'finish') String? finish,@JsonKey(name: 'start') String? start,@JsonKey(name: 'is_premium_only') bool? isPremiumOnly,@JsonKey(name: 'preview') String? preview,@JsonKey(name: 'type') SoryType? type
});




}
/// @nodoc
class _$StoryGroupsForStudentCopyWithImpl<$Res>
    implements $StoryGroupsForStudentCopyWith<$Res> {
  _$StoryGroupsForStudentCopyWithImpl(this._self, this._then);

  final StoryGroupsForStudent _self;
  final $Res Function(StoryGroupsForStudent) _then;

/// Create a copy of StoryGroupsForStudent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdById = freezed,Object? updatedById = freezed,Object? language = freezed,Object? stories = freezed,Object? id = freezed,Object? title = freezed,Object? finish = freezed,Object? start = freezed,Object? isPremiumOnly = freezed,Object? preview = freezed,Object? type = freezed,}) {
  return _then(_self.copyWith(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdById: freezed == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as int?,updatedById: freezed == updatedById ? _self.updatedById : updatedById // ignore: cast_nullable_to_non_nullable
as int?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,stories: freezed == stories ? _self.stories : stories // ignore: cast_nullable_to_non_nullable
as List<Stories>?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,finish: freezed == finish ? _self.finish : finish // ignore: cast_nullable_to_non_nullable
as String?,start: freezed == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as String?,isPremiumOnly: freezed == isPremiumOnly ? _self.isPremiumOnly : isPremiumOnly // ignore: cast_nullable_to_non_nullable
as bool?,preview: freezed == preview ? _self.preview : preview // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SoryType?,
  ));
}

}


/// Adds pattern-matching-related methods to [StoryGroupsForStudent].
extension StoryGroupsForStudentPatterns on StoryGroupsForStudent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoryGroupsForStudent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoryGroupsForStudent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoryGroupsForStudent value)  $default,){
final _that = this;
switch (_that) {
case _StoryGroupsForStudent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoryGroupsForStudent value)?  $default,){
final _that = this;
switch (_that) {
case _StoryGroupsForStudent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'language')  String? language, @JsonKey(name: 'stories')  List<Stories>? stories, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'title')  String? title, @JsonKey(name: 'finish')  String? finish, @JsonKey(name: 'start')  String? start, @JsonKey(name: 'is_premium_only')  bool? isPremiumOnly, @JsonKey(name: 'preview')  String? preview, @JsonKey(name: 'type')  SoryType? type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoryGroupsForStudent() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.language,_that.stories,_that.id,_that.title,_that.finish,_that.start,_that.isPremiumOnly,_that.preview,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'language')  String? language, @JsonKey(name: 'stories')  List<Stories>? stories, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'title')  String? title, @JsonKey(name: 'finish')  String? finish, @JsonKey(name: 'start')  String? start, @JsonKey(name: 'is_premium_only')  bool? isPremiumOnly, @JsonKey(name: 'preview')  String? preview, @JsonKey(name: 'type')  SoryType? type)  $default,) {final _that = this;
switch (_that) {
case _StoryGroupsForStudent():
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.language,_that.stories,_that.id,_that.title,_that.finish,_that.start,_that.isPremiumOnly,_that.preview,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'language')  String? language, @JsonKey(name: 'stories')  List<Stories>? stories, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'title')  String? title, @JsonKey(name: 'finish')  String? finish, @JsonKey(name: 'start')  String? start, @JsonKey(name: 'is_premium_only')  bool? isPremiumOnly, @JsonKey(name: 'preview')  String? preview, @JsonKey(name: 'type')  SoryType? type)?  $default,) {final _that = this;
switch (_that) {
case _StoryGroupsForStudent() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.language,_that.stories,_that.id,_that.title,_that.finish,_that.start,_that.isPremiumOnly,_that.preview,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoryGroupsForStudent with DiagnosticableTreeMixin implements StoryGroupsForStudent {
  const _StoryGroupsForStudent({@JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'created_by_id') this.createdById, @JsonKey(name: 'updated_by_id') this.updatedById, @JsonKey(name: 'language') this.language, @JsonKey(name: 'stories') final  List<Stories>? stories, @JsonKey(name: 'id') this.id, @JsonKey(name: 'title') this.title, @JsonKey(name: 'finish') this.finish, @JsonKey(name: 'start') this.start, @JsonKey(name: 'is_premium_only') this.isPremiumOnly, @JsonKey(name: 'preview') this.preview, @JsonKey(name: 'type') this.type}): _stories = stories;
  factory _StoryGroupsForStudent.fromJson(Map<String, dynamic> json) => _$StoryGroupsForStudentFromJson(json);

@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'created_by_id') final  int? createdById;
@override@JsonKey(name: 'updated_by_id') final  int? updatedById;
@override@JsonKey(name: 'language') final  String? language;
 final  List<Stories>? _stories;
@override@JsonKey(name: 'stories') List<Stories>? get stories {
  final value = _stories;
  if (value == null) return null;
  if (_stories is EqualUnmodifiableListView) return _stories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'title') final  String? title;
@override@JsonKey(name: 'finish') final  String? finish;
@override@JsonKey(name: 'start') final  String? start;
@override@JsonKey(name: 'is_premium_only') final  bool? isPremiumOnly;
@override@JsonKey(name: 'preview') final  String? preview;
@override@JsonKey(name: 'type') final  SoryType? type;

/// Create a copy of StoryGroupsForStudent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoryGroupsForStudentCopyWith<_StoryGroupsForStudent> get copyWith => __$StoryGroupsForStudentCopyWithImpl<_StoryGroupsForStudent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoryGroupsForStudentToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'StoryGroupsForStudent'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdById', createdById))..add(DiagnosticsProperty('updatedById', updatedById))..add(DiagnosticsProperty('language', language))..add(DiagnosticsProperty('stories', stories))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('title', title))..add(DiagnosticsProperty('finish', finish))..add(DiagnosticsProperty('start', start))..add(DiagnosticsProperty('isPremiumOnly', isPremiumOnly))..add(DiagnosticsProperty('preview', preview))..add(DiagnosticsProperty('type', type));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoryGroupsForStudent&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.updatedById, updatedById) || other.updatedById == updatedById)&&(identical(other.language, language) || other.language == language)&&const DeepCollectionEquality().equals(other._stories, _stories)&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.finish, finish) || other.finish == finish)&&(identical(other.start, start) || other.start == start)&&(identical(other.isPremiumOnly, isPremiumOnly) || other.isPremiumOnly == isPremiumOnly)&&(identical(other.preview, preview) || other.preview == preview)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdById,updatedById,language,const DeepCollectionEquality().hash(_stories),id,title,finish,start,isPremiumOnly,preview,type);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'StoryGroupsForStudent(createdAt: $createdAt, updatedAt: $updatedAt, createdById: $createdById, updatedById: $updatedById, language: $language, stories: $stories, id: $id, title: $title, finish: $finish, start: $start, isPremiumOnly: $isPremiumOnly, preview: $preview, type: $type)';
}


}

/// @nodoc
abstract mixin class _$StoryGroupsForStudentCopyWith<$Res> implements $StoryGroupsForStudentCopyWith<$Res> {
  factory _$StoryGroupsForStudentCopyWith(_StoryGroupsForStudent value, $Res Function(_StoryGroupsForStudent) _then) = __$StoryGroupsForStudentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by_id') int? createdById,@JsonKey(name: 'updated_by_id') int? updatedById,@JsonKey(name: 'language') String? language,@JsonKey(name: 'stories') List<Stories>? stories,@JsonKey(name: 'id') int? id,@JsonKey(name: 'title') String? title,@JsonKey(name: 'finish') String? finish,@JsonKey(name: 'start') String? start,@JsonKey(name: 'is_premium_only') bool? isPremiumOnly,@JsonKey(name: 'preview') String? preview,@JsonKey(name: 'type') SoryType? type
});




}
/// @nodoc
class __$StoryGroupsForStudentCopyWithImpl<$Res>
    implements _$StoryGroupsForStudentCopyWith<$Res> {
  __$StoryGroupsForStudentCopyWithImpl(this._self, this._then);

  final _StoryGroupsForStudent _self;
  final $Res Function(_StoryGroupsForStudent) _then;

/// Create a copy of StoryGroupsForStudent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdById = freezed,Object? updatedById = freezed,Object? language = freezed,Object? stories = freezed,Object? id = freezed,Object? title = freezed,Object? finish = freezed,Object? start = freezed,Object? isPremiumOnly = freezed,Object? preview = freezed,Object? type = freezed,}) {
  return _then(_StoryGroupsForStudent(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdById: freezed == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as int?,updatedById: freezed == updatedById ? _self.updatedById : updatedById // ignore: cast_nullable_to_non_nullable
as int?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,stories: freezed == stories ? _self._stories : stories // ignore: cast_nullable_to_non_nullable
as List<Stories>?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,finish: freezed == finish ? _self.finish : finish // ignore: cast_nullable_to_non_nullable
as String?,start: freezed == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as String?,isPremiumOnly: freezed == isPremiumOnly ? _self.isPremiumOnly : isPremiumOnly // ignore: cast_nullable_to_non_nullable
as bool?,preview: freezed == preview ? _self.preview : preview // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SoryType?,
  ));
}


}


/// @nodoc
mixin _$Stories implements DiagnosticableTreeMixin {

@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'created_by_id') int? get createdById;@JsonKey(name: 'updated_by_id') int? get updatedById;@JsonKey(name: 'poll_options') List<PollOptions>? get pollOptions;@JsonKey(name: 'actions') List<Actions>? get actions;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'story_group_id') int? get storyGroupId;@JsonKey(name: 'content_type') SoryContentType? get contentType;@JsonKey(name: 'content') String? get content;@JsonKey(name: 'background_color') String? get backgroundColor;@JsonKey(name: 'button_text') String? get buttonText;@JsonKey(name: 'button_url') String? get buttonUrl;@JsonKey(name: 'duration') int? get duration;@JsonKey(name: 'question') String? get question;@JsonKey(name: 'poll') bool? get poll;@JsonKey(name: 'position') int? get position;
/// Create a copy of Stories
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoriesCopyWith<Stories> get copyWith => _$StoriesCopyWithImpl<Stories>(this as Stories, _$identity);

  /// Serializes this Stories to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Stories'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdById', createdById))..add(DiagnosticsProperty('updatedById', updatedById))..add(DiagnosticsProperty('pollOptions', pollOptions))..add(DiagnosticsProperty('actions', actions))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('storyGroupId', storyGroupId))..add(DiagnosticsProperty('contentType', contentType))..add(DiagnosticsProperty('content', content))..add(DiagnosticsProperty('backgroundColor', backgroundColor))..add(DiagnosticsProperty('buttonText', buttonText))..add(DiagnosticsProperty('buttonUrl', buttonUrl))..add(DiagnosticsProperty('duration', duration))..add(DiagnosticsProperty('question', question))..add(DiagnosticsProperty('poll', poll))..add(DiagnosticsProperty('position', position));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Stories&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.updatedById, updatedById) || other.updatedById == updatedById)&&const DeepCollectionEquality().equals(other.pollOptions, pollOptions)&&const DeepCollectionEquality().equals(other.actions, actions)&&(identical(other.id, id) || other.id == id)&&(identical(other.storyGroupId, storyGroupId) || other.storyGroupId == storyGroupId)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.content, content) || other.content == content)&&(identical(other.backgroundColor, backgroundColor) || other.backgroundColor == backgroundColor)&&(identical(other.buttonText, buttonText) || other.buttonText == buttonText)&&(identical(other.buttonUrl, buttonUrl) || other.buttonUrl == buttonUrl)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.question, question) || other.question == question)&&(identical(other.poll, poll) || other.poll == poll)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdById,updatedById,const DeepCollectionEquality().hash(pollOptions),const DeepCollectionEquality().hash(actions),id,storyGroupId,contentType,content,backgroundColor,buttonText,buttonUrl,duration,question,poll,position);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Stories(createdAt: $createdAt, updatedAt: $updatedAt, createdById: $createdById, updatedById: $updatedById, pollOptions: $pollOptions, actions: $actions, id: $id, storyGroupId: $storyGroupId, contentType: $contentType, content: $content, backgroundColor: $backgroundColor, buttonText: $buttonText, buttonUrl: $buttonUrl, duration: $duration, question: $question, poll: $poll, position: $position)';
}


}

/// @nodoc
abstract mixin class $StoriesCopyWith<$Res>  {
  factory $StoriesCopyWith(Stories value, $Res Function(Stories) _then) = _$StoriesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by_id') int? createdById,@JsonKey(name: 'updated_by_id') int? updatedById,@JsonKey(name: 'poll_options') List<PollOptions>? pollOptions,@JsonKey(name: 'actions') List<Actions>? actions,@JsonKey(name: 'id') int? id,@JsonKey(name: 'story_group_id') int? storyGroupId,@JsonKey(name: 'content_type') SoryContentType? contentType,@JsonKey(name: 'content') String? content,@JsonKey(name: 'background_color') String? backgroundColor,@JsonKey(name: 'button_text') String? buttonText,@JsonKey(name: 'button_url') String? buttonUrl,@JsonKey(name: 'duration') int? duration,@JsonKey(name: 'question') String? question,@JsonKey(name: 'poll') bool? poll,@JsonKey(name: 'position') int? position
});




}
/// @nodoc
class _$StoriesCopyWithImpl<$Res>
    implements $StoriesCopyWith<$Res> {
  _$StoriesCopyWithImpl(this._self, this._then);

  final Stories _self;
  final $Res Function(Stories) _then;

/// Create a copy of Stories
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdById = freezed,Object? updatedById = freezed,Object? pollOptions = freezed,Object? actions = freezed,Object? id = freezed,Object? storyGroupId = freezed,Object? contentType = freezed,Object? content = freezed,Object? backgroundColor = freezed,Object? buttonText = freezed,Object? buttonUrl = freezed,Object? duration = freezed,Object? question = freezed,Object? poll = freezed,Object? position = freezed,}) {
  return _then(_self.copyWith(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdById: freezed == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as int?,updatedById: freezed == updatedById ? _self.updatedById : updatedById // ignore: cast_nullable_to_non_nullable
as int?,pollOptions: freezed == pollOptions ? _self.pollOptions : pollOptions // ignore: cast_nullable_to_non_nullable
as List<PollOptions>?,actions: freezed == actions ? _self.actions : actions // ignore: cast_nullable_to_non_nullable
as List<Actions>?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,storyGroupId: freezed == storyGroupId ? _self.storyGroupId : storyGroupId // ignore: cast_nullable_to_non_nullable
as int?,contentType: freezed == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as SoryContentType?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,backgroundColor: freezed == backgroundColor ? _self.backgroundColor : backgroundColor // ignore: cast_nullable_to_non_nullable
as String?,buttonText: freezed == buttonText ? _self.buttonText : buttonText // ignore: cast_nullable_to_non_nullable
as String?,buttonUrl: freezed == buttonUrl ? _self.buttonUrl : buttonUrl // ignore: cast_nullable_to_non_nullable
as String?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int?,question: freezed == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String?,poll: freezed == poll ? _self.poll : poll // ignore: cast_nullable_to_non_nullable
as bool?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Stories].
extension StoriesPatterns on Stories {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Stories value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Stories() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Stories value)  $default,){
final _that = this;
switch (_that) {
case _Stories():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Stories value)?  $default,){
final _that = this;
switch (_that) {
case _Stories() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'poll_options')  List<PollOptions>? pollOptions, @JsonKey(name: 'actions')  List<Actions>? actions, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'story_group_id')  int? storyGroupId, @JsonKey(name: 'content_type')  SoryContentType? contentType, @JsonKey(name: 'content')  String? content, @JsonKey(name: 'background_color')  String? backgroundColor, @JsonKey(name: 'button_text')  String? buttonText, @JsonKey(name: 'button_url')  String? buttonUrl, @JsonKey(name: 'duration')  int? duration, @JsonKey(name: 'question')  String? question, @JsonKey(name: 'poll')  bool? poll, @JsonKey(name: 'position')  int? position)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Stories() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.pollOptions,_that.actions,_that.id,_that.storyGroupId,_that.contentType,_that.content,_that.backgroundColor,_that.buttonText,_that.buttonUrl,_that.duration,_that.question,_that.poll,_that.position);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'poll_options')  List<PollOptions>? pollOptions, @JsonKey(name: 'actions')  List<Actions>? actions, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'story_group_id')  int? storyGroupId, @JsonKey(name: 'content_type')  SoryContentType? contentType, @JsonKey(name: 'content')  String? content, @JsonKey(name: 'background_color')  String? backgroundColor, @JsonKey(name: 'button_text')  String? buttonText, @JsonKey(name: 'button_url')  String? buttonUrl, @JsonKey(name: 'duration')  int? duration, @JsonKey(name: 'question')  String? question, @JsonKey(name: 'poll')  bool? poll, @JsonKey(name: 'position')  int? position)  $default,) {final _that = this;
switch (_that) {
case _Stories():
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.pollOptions,_that.actions,_that.id,_that.storyGroupId,_that.contentType,_that.content,_that.backgroundColor,_that.buttonText,_that.buttonUrl,_that.duration,_that.question,_that.poll,_that.position);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'poll_options')  List<PollOptions>? pollOptions, @JsonKey(name: 'actions')  List<Actions>? actions, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'story_group_id')  int? storyGroupId, @JsonKey(name: 'content_type')  SoryContentType? contentType, @JsonKey(name: 'content')  String? content, @JsonKey(name: 'background_color')  String? backgroundColor, @JsonKey(name: 'button_text')  String? buttonText, @JsonKey(name: 'button_url')  String? buttonUrl, @JsonKey(name: 'duration')  int? duration, @JsonKey(name: 'question')  String? question, @JsonKey(name: 'poll')  bool? poll, @JsonKey(name: 'position')  int? position)?  $default,) {final _that = this;
switch (_that) {
case _Stories() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.pollOptions,_that.actions,_that.id,_that.storyGroupId,_that.contentType,_that.content,_that.backgroundColor,_that.buttonText,_that.buttonUrl,_that.duration,_that.question,_that.poll,_that.position);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Stories with DiagnosticableTreeMixin implements Stories {
  const _Stories({@JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'created_by_id') this.createdById, @JsonKey(name: 'updated_by_id') this.updatedById, @JsonKey(name: 'poll_options') final  List<PollOptions>? pollOptions, @JsonKey(name: 'actions') final  List<Actions>? actions, @JsonKey(name: 'id') this.id, @JsonKey(name: 'story_group_id') this.storyGroupId, @JsonKey(name: 'content_type') this.contentType, @JsonKey(name: 'content') this.content, @JsonKey(name: 'background_color') this.backgroundColor, @JsonKey(name: 'button_text') this.buttonText, @JsonKey(name: 'button_url') this.buttonUrl, @JsonKey(name: 'duration') this.duration, @JsonKey(name: 'question') this.question, @JsonKey(name: 'poll') this.poll, @JsonKey(name: 'position') this.position}): _pollOptions = pollOptions,_actions = actions;
  factory _Stories.fromJson(Map<String, dynamic> json) => _$StoriesFromJson(json);

@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'created_by_id') final  int? createdById;
@override@JsonKey(name: 'updated_by_id') final  int? updatedById;
 final  List<PollOptions>? _pollOptions;
@override@JsonKey(name: 'poll_options') List<PollOptions>? get pollOptions {
  final value = _pollOptions;
  if (value == null) return null;
  if (_pollOptions is EqualUnmodifiableListView) return _pollOptions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Actions>? _actions;
@override@JsonKey(name: 'actions') List<Actions>? get actions {
  final value = _actions;
  if (value == null) return null;
  if (_actions is EqualUnmodifiableListView) return _actions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'story_group_id') final  int? storyGroupId;
@override@JsonKey(name: 'content_type') final  SoryContentType? contentType;
@override@JsonKey(name: 'content') final  String? content;
@override@JsonKey(name: 'background_color') final  String? backgroundColor;
@override@JsonKey(name: 'button_text') final  String? buttonText;
@override@JsonKey(name: 'button_url') final  String? buttonUrl;
@override@JsonKey(name: 'duration') final  int? duration;
@override@JsonKey(name: 'question') final  String? question;
@override@JsonKey(name: 'poll') final  bool? poll;
@override@JsonKey(name: 'position') final  int? position;

/// Create a copy of Stories
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoriesCopyWith<_Stories> get copyWith => __$StoriesCopyWithImpl<_Stories>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoriesToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Stories'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdById', createdById))..add(DiagnosticsProperty('updatedById', updatedById))..add(DiagnosticsProperty('pollOptions', pollOptions))..add(DiagnosticsProperty('actions', actions))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('storyGroupId', storyGroupId))..add(DiagnosticsProperty('contentType', contentType))..add(DiagnosticsProperty('content', content))..add(DiagnosticsProperty('backgroundColor', backgroundColor))..add(DiagnosticsProperty('buttonText', buttonText))..add(DiagnosticsProperty('buttonUrl', buttonUrl))..add(DiagnosticsProperty('duration', duration))..add(DiagnosticsProperty('question', question))..add(DiagnosticsProperty('poll', poll))..add(DiagnosticsProperty('position', position));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Stories&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.updatedById, updatedById) || other.updatedById == updatedById)&&const DeepCollectionEquality().equals(other._pollOptions, _pollOptions)&&const DeepCollectionEquality().equals(other._actions, _actions)&&(identical(other.id, id) || other.id == id)&&(identical(other.storyGroupId, storyGroupId) || other.storyGroupId == storyGroupId)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.content, content) || other.content == content)&&(identical(other.backgroundColor, backgroundColor) || other.backgroundColor == backgroundColor)&&(identical(other.buttonText, buttonText) || other.buttonText == buttonText)&&(identical(other.buttonUrl, buttonUrl) || other.buttonUrl == buttonUrl)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.question, question) || other.question == question)&&(identical(other.poll, poll) || other.poll == poll)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdById,updatedById,const DeepCollectionEquality().hash(_pollOptions),const DeepCollectionEquality().hash(_actions),id,storyGroupId,contentType,content,backgroundColor,buttonText,buttonUrl,duration,question,poll,position);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Stories(createdAt: $createdAt, updatedAt: $updatedAt, createdById: $createdById, updatedById: $updatedById, pollOptions: $pollOptions, actions: $actions, id: $id, storyGroupId: $storyGroupId, contentType: $contentType, content: $content, backgroundColor: $backgroundColor, buttonText: $buttonText, buttonUrl: $buttonUrl, duration: $duration, question: $question, poll: $poll, position: $position)';
}


}

/// @nodoc
abstract mixin class _$StoriesCopyWith<$Res> implements $StoriesCopyWith<$Res> {
  factory _$StoriesCopyWith(_Stories value, $Res Function(_Stories) _then) = __$StoriesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by_id') int? createdById,@JsonKey(name: 'updated_by_id') int? updatedById,@JsonKey(name: 'poll_options') List<PollOptions>? pollOptions,@JsonKey(name: 'actions') List<Actions>? actions,@JsonKey(name: 'id') int? id,@JsonKey(name: 'story_group_id') int? storyGroupId,@JsonKey(name: 'content_type') SoryContentType? contentType,@JsonKey(name: 'content') String? content,@JsonKey(name: 'background_color') String? backgroundColor,@JsonKey(name: 'button_text') String? buttonText,@JsonKey(name: 'button_url') String? buttonUrl,@JsonKey(name: 'duration') int? duration,@JsonKey(name: 'question') String? question,@JsonKey(name: 'poll') bool? poll,@JsonKey(name: 'position') int? position
});




}
/// @nodoc
class __$StoriesCopyWithImpl<$Res>
    implements _$StoriesCopyWith<$Res> {
  __$StoriesCopyWithImpl(this._self, this._then);

  final _Stories _self;
  final $Res Function(_Stories) _then;

/// Create a copy of Stories
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdById = freezed,Object? updatedById = freezed,Object? pollOptions = freezed,Object? actions = freezed,Object? id = freezed,Object? storyGroupId = freezed,Object? contentType = freezed,Object? content = freezed,Object? backgroundColor = freezed,Object? buttonText = freezed,Object? buttonUrl = freezed,Object? duration = freezed,Object? question = freezed,Object? poll = freezed,Object? position = freezed,}) {
  return _then(_Stories(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdById: freezed == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as int?,updatedById: freezed == updatedById ? _self.updatedById : updatedById // ignore: cast_nullable_to_non_nullable
as int?,pollOptions: freezed == pollOptions ? _self._pollOptions : pollOptions // ignore: cast_nullable_to_non_nullable
as List<PollOptions>?,actions: freezed == actions ? _self._actions : actions // ignore: cast_nullable_to_non_nullable
as List<Actions>?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,storyGroupId: freezed == storyGroupId ? _self.storyGroupId : storyGroupId // ignore: cast_nullable_to_non_nullable
as int?,contentType: freezed == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as SoryContentType?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,backgroundColor: freezed == backgroundColor ? _self.backgroundColor : backgroundColor // ignore: cast_nullable_to_non_nullable
as String?,buttonText: freezed == buttonText ? _self.buttonText : buttonText // ignore: cast_nullable_to_non_nullable
as String?,buttonUrl: freezed == buttonUrl ? _self.buttonUrl : buttonUrl // ignore: cast_nullable_to_non_nullable
as String?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int?,question: freezed == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String?,poll: freezed == poll ? _self.poll : poll // ignore: cast_nullable_to_non_nullable
as bool?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$PollOptions implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'text') String? get text;@JsonKey(name: 'position') int? get position;
/// Create a copy of PollOptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PollOptionsCopyWith<PollOptions> get copyWith => _$PollOptionsCopyWithImpl<PollOptions>(this as PollOptions, _$identity);

  /// Serializes this PollOptions to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PollOptions'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('text', text))..add(DiagnosticsProperty('position', position));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PollOptions&&(identical(other.id, id) || other.id == id)&&(identical(other.text, text) || other.text == text)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,text,position);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PollOptions(id: $id, text: $text, position: $position)';
}


}

/// @nodoc
abstract mixin class $PollOptionsCopyWith<$Res>  {
  factory $PollOptionsCopyWith(PollOptions value, $Res Function(PollOptions) _then) = _$PollOptionsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'text') String? text,@JsonKey(name: 'position') int? position
});




}
/// @nodoc
class _$PollOptionsCopyWithImpl<$Res>
    implements $PollOptionsCopyWith<$Res> {
  _$PollOptionsCopyWithImpl(this._self, this._then);

  final PollOptions _self;
  final $Res Function(PollOptions) _then;

/// Create a copy of PollOptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? text = freezed,Object? position = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [PollOptions].
extension PollOptionsPatterns on PollOptions {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PollOptions value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PollOptions() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PollOptions value)  $default,){
final _that = this;
switch (_that) {
case _PollOptions():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PollOptions value)?  $default,){
final _that = this;
switch (_that) {
case _PollOptions() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'text')  String? text, @JsonKey(name: 'position')  int? position)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PollOptions() when $default != null:
return $default(_that.id,_that.text,_that.position);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'text')  String? text, @JsonKey(name: 'position')  int? position)  $default,) {final _that = this;
switch (_that) {
case _PollOptions():
return $default(_that.id,_that.text,_that.position);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'text')  String? text, @JsonKey(name: 'position')  int? position)?  $default,) {final _that = this;
switch (_that) {
case _PollOptions() when $default != null:
return $default(_that.id,_that.text,_that.position);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PollOptions with DiagnosticableTreeMixin implements PollOptions {
  const _PollOptions({@JsonKey(name: 'id') this.id, @JsonKey(name: 'text') this.text, @JsonKey(name: 'position') this.position});
  factory _PollOptions.fromJson(Map<String, dynamic> json) => _$PollOptionsFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'text') final  String? text;
@override@JsonKey(name: 'position') final  int? position;

/// Create a copy of PollOptions
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PollOptionsCopyWith<_PollOptions> get copyWith => __$PollOptionsCopyWithImpl<_PollOptions>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PollOptionsToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PollOptions'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('text', text))..add(DiagnosticsProperty('position', position));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PollOptions&&(identical(other.id, id) || other.id == id)&&(identical(other.text, text) || other.text == text)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,text,position);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PollOptions(id: $id, text: $text, position: $position)';
}


}

/// @nodoc
abstract mixin class _$PollOptionsCopyWith<$Res> implements $PollOptionsCopyWith<$Res> {
  factory _$PollOptionsCopyWith(_PollOptions value, $Res Function(_PollOptions) _then) = __$PollOptionsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'text') String? text,@JsonKey(name: 'position') int? position
});




}
/// @nodoc
class __$PollOptionsCopyWithImpl<$Res>
    implements _$PollOptionsCopyWith<$Res> {
  __$PollOptionsCopyWithImpl(this._self, this._then);

  final _PollOptions _self;
  final $Res Function(_PollOptions) _then;

/// Create a copy of PollOptions
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? text = freezed,Object? position = freezed,}) {
  return _then(_PollOptions(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$Actions implements DiagnosticableTreeMixin {

@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'created_by_id') int? get createdById;@JsonKey(name: 'updated_by_id') int? get updatedById;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'user_id') int? get userId;@JsonKey(name: 'liked') bool? get liked;@JsonKey(name: 'followed_link') bool? get followedLink;@JsonKey(name: 'option_id') int? get optionId;
/// Create a copy of Actions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActionsCopyWith<Actions> get copyWith => _$ActionsCopyWithImpl<Actions>(this as Actions, _$identity);

  /// Serializes this Actions to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Actions'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdById', createdById))..add(DiagnosticsProperty('updatedById', updatedById))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('liked', liked))..add(DiagnosticsProperty('followedLink', followedLink))..add(DiagnosticsProperty('optionId', optionId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Actions&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.updatedById, updatedById) || other.updatedById == updatedById)&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.liked, liked) || other.liked == liked)&&(identical(other.followedLink, followedLink) || other.followedLink == followedLink)&&(identical(other.optionId, optionId) || other.optionId == optionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdById,updatedById,id,userId,liked,followedLink,optionId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Actions(createdAt: $createdAt, updatedAt: $updatedAt, createdById: $createdById, updatedById: $updatedById, id: $id, userId: $userId, liked: $liked, followedLink: $followedLink, optionId: $optionId)';
}


}

/// @nodoc
abstract mixin class $ActionsCopyWith<$Res>  {
  factory $ActionsCopyWith(Actions value, $Res Function(Actions) _then) = _$ActionsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by_id') int? createdById,@JsonKey(name: 'updated_by_id') int? updatedById,@JsonKey(name: 'id') int? id,@JsonKey(name: 'user_id') int? userId,@JsonKey(name: 'liked') bool? liked,@JsonKey(name: 'followed_link') bool? followedLink,@JsonKey(name: 'option_id') int? optionId
});




}
/// @nodoc
class _$ActionsCopyWithImpl<$Res>
    implements $ActionsCopyWith<$Res> {
  _$ActionsCopyWithImpl(this._self, this._then);

  final Actions _self;
  final $Res Function(Actions) _then;

/// Create a copy of Actions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdById = freezed,Object? updatedById = freezed,Object? id = freezed,Object? userId = freezed,Object? liked = freezed,Object? followedLink = freezed,Object? optionId = freezed,}) {
  return _then(_self.copyWith(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdById: freezed == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as int?,updatedById: freezed == updatedById ? _self.updatedById : updatedById // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,liked: freezed == liked ? _self.liked : liked // ignore: cast_nullable_to_non_nullable
as bool?,followedLink: freezed == followedLink ? _self.followedLink : followedLink // ignore: cast_nullable_to_non_nullable
as bool?,optionId: freezed == optionId ? _self.optionId : optionId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Actions].
extension ActionsPatterns on Actions {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Actions value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Actions() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Actions value)  $default,){
final _that = this;
switch (_that) {
case _Actions():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Actions value)?  $default,){
final _that = this;
switch (_that) {
case _Actions() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'liked')  bool? liked, @JsonKey(name: 'followed_link')  bool? followedLink, @JsonKey(name: 'option_id')  int? optionId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Actions() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.id,_that.userId,_that.liked,_that.followedLink,_that.optionId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'liked')  bool? liked, @JsonKey(name: 'followed_link')  bool? followedLink, @JsonKey(name: 'option_id')  int? optionId)  $default,) {final _that = this;
switch (_that) {
case _Actions():
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.id,_that.userId,_that.liked,_that.followedLink,_that.optionId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'liked')  bool? liked, @JsonKey(name: 'followed_link')  bool? followedLink, @JsonKey(name: 'option_id')  int? optionId)?  $default,) {final _that = this;
switch (_that) {
case _Actions() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.id,_that.userId,_that.liked,_that.followedLink,_that.optionId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Actions with DiagnosticableTreeMixin implements Actions {
  const _Actions({@JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'created_by_id') this.createdById, @JsonKey(name: 'updated_by_id') this.updatedById, @JsonKey(name: 'id') this.id, @JsonKey(name: 'user_id') this.userId, @JsonKey(name: 'liked') this.liked, @JsonKey(name: 'followed_link') this.followedLink, @JsonKey(name: 'option_id') this.optionId});
  factory _Actions.fromJson(Map<String, dynamic> json) => _$ActionsFromJson(json);

@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'created_by_id') final  int? createdById;
@override@JsonKey(name: 'updated_by_id') final  int? updatedById;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'user_id') final  int? userId;
@override@JsonKey(name: 'liked') final  bool? liked;
@override@JsonKey(name: 'followed_link') final  bool? followedLink;
@override@JsonKey(name: 'option_id') final  int? optionId;

/// Create a copy of Actions
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActionsCopyWith<_Actions> get copyWith => __$ActionsCopyWithImpl<_Actions>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActionsToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Actions'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdById', createdById))..add(DiagnosticsProperty('updatedById', updatedById))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('liked', liked))..add(DiagnosticsProperty('followedLink', followedLink))..add(DiagnosticsProperty('optionId', optionId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Actions&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.updatedById, updatedById) || other.updatedById == updatedById)&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.liked, liked) || other.liked == liked)&&(identical(other.followedLink, followedLink) || other.followedLink == followedLink)&&(identical(other.optionId, optionId) || other.optionId == optionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdById,updatedById,id,userId,liked,followedLink,optionId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Actions(createdAt: $createdAt, updatedAt: $updatedAt, createdById: $createdById, updatedById: $updatedById, id: $id, userId: $userId, liked: $liked, followedLink: $followedLink, optionId: $optionId)';
}


}

/// @nodoc
abstract mixin class _$ActionsCopyWith<$Res> implements $ActionsCopyWith<$Res> {
  factory _$ActionsCopyWith(_Actions value, $Res Function(_Actions) _then) = __$ActionsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by_id') int? createdById,@JsonKey(name: 'updated_by_id') int? updatedById,@JsonKey(name: 'id') int? id,@JsonKey(name: 'user_id') int? userId,@JsonKey(name: 'liked') bool? liked,@JsonKey(name: 'followed_link') bool? followedLink,@JsonKey(name: 'option_id') int? optionId
});




}
/// @nodoc
class __$ActionsCopyWithImpl<$Res>
    implements _$ActionsCopyWith<$Res> {
  __$ActionsCopyWithImpl(this._self, this._then);

  final _Actions _self;
  final $Res Function(_Actions) _then;

/// Create a copy of Actions
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdById = freezed,Object? updatedById = freezed,Object? id = freezed,Object? userId = freezed,Object? liked = freezed,Object? followedLink = freezed,Object? optionId = freezed,}) {
  return _then(_Actions(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdById: freezed == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as int?,updatedById: freezed == updatedById ? _self.updatedById : updatedById // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,liked: freezed == liked ? _self.liked : liked // ignore: cast_nullable_to_non_nullable
as bool?,followedLink: freezed == followedLink ? _self.followedLink : followedLink // ignore: cast_nullable_to_non_nullable
as bool?,optionId: freezed == optionId ? _self.optionId : optionId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
