// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConversationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) chat,
    required TResult Function(String title) getAllMessage,
    required TResult Function(String title) saveMessage,
    required TResult Function() getAllTitle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? chat,
    TResult? Function(String title)? getAllMessage,
    TResult? Function(String title)? saveMessage,
    TResult? Function()? getAllTitle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? chat,
    TResult Function(String title)? getAllMessage,
    TResult Function(String title)? saveMessage,
    TResult Function()? getAllTitle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Chat value) chat,
    required TResult Function(_GetAllMessageWithTitle value) getAllMessage,
    required TResult Function(_SaveMessage value) saveMessage,
    required TResult Function(_GetAllTitle value) getAllTitle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Chat value)? chat,
    TResult? Function(_GetAllMessageWithTitle value)? getAllMessage,
    TResult? Function(_SaveMessage value)? saveMessage,
    TResult? Function(_GetAllTitle value)? getAllTitle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Chat value)? chat,
    TResult Function(_GetAllMessageWithTitle value)? getAllMessage,
    TResult Function(_SaveMessage value)? saveMessage,
    TResult Function(_GetAllTitle value)? getAllTitle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationEventCopyWith<$Res> {
  factory $ConversationEventCopyWith(
          ConversationEvent value, $Res Function(ConversationEvent) then) =
      _$ConversationEventCopyWithImpl<$Res, ConversationEvent>;
}

/// @nodoc
class _$ConversationEventCopyWithImpl<$Res, $Val extends ConversationEvent>
    implements $ConversationEventCopyWith<$Res> {
  _$ConversationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ChatCopyWith<$Res> {
  factory _$$_ChatCopyWith(_$_Chat value, $Res Function(_$_Chat) then) =
      __$$_ChatCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ChatCopyWithImpl<$Res>
    extends _$ConversationEventCopyWithImpl<$Res, _$_Chat>
    implements _$$_ChatCopyWith<$Res> {
  __$$_ChatCopyWithImpl(_$_Chat _value, $Res Function(_$_Chat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_Chat(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Chat implements _Chat {
  const _$_Chat({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ConversationEvent.chat(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Chat &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatCopyWith<_$_Chat> get copyWith =>
      __$$_ChatCopyWithImpl<_$_Chat>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) chat,
    required TResult Function(String title) getAllMessage,
    required TResult Function(String title) saveMessage,
    required TResult Function() getAllTitle,
  }) {
    return chat(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? chat,
    TResult? Function(String title)? getAllMessage,
    TResult? Function(String title)? saveMessage,
    TResult? Function()? getAllTitle,
  }) {
    return chat?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? chat,
    TResult Function(String title)? getAllMessage,
    TResult Function(String title)? saveMessage,
    TResult Function()? getAllTitle,
    required TResult orElse(),
  }) {
    if (chat != null) {
      return chat(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Chat value) chat,
    required TResult Function(_GetAllMessageWithTitle value) getAllMessage,
    required TResult Function(_SaveMessage value) saveMessage,
    required TResult Function(_GetAllTitle value) getAllTitle,
  }) {
    return chat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Chat value)? chat,
    TResult? Function(_GetAllMessageWithTitle value)? getAllMessage,
    TResult? Function(_SaveMessage value)? saveMessage,
    TResult? Function(_GetAllTitle value)? getAllTitle,
  }) {
    return chat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Chat value)? chat,
    TResult Function(_GetAllMessageWithTitle value)? getAllMessage,
    TResult Function(_SaveMessage value)? saveMessage,
    TResult Function(_GetAllTitle value)? getAllTitle,
    required TResult orElse(),
  }) {
    if (chat != null) {
      return chat(this);
    }
    return orElse();
  }
}

abstract class _Chat implements ConversationEvent {
  const factory _Chat({required final String message}) = _$_Chat;

  String get message;
  @JsonKey(ignore: true)
  _$$_ChatCopyWith<_$_Chat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetAllMessageWithTitleCopyWith<$Res> {
  factory _$$_GetAllMessageWithTitleCopyWith(_$_GetAllMessageWithTitle value,
          $Res Function(_$_GetAllMessageWithTitle) then) =
      __$$_GetAllMessageWithTitleCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$_GetAllMessageWithTitleCopyWithImpl<$Res>
    extends _$ConversationEventCopyWithImpl<$Res, _$_GetAllMessageWithTitle>
    implements _$$_GetAllMessageWithTitleCopyWith<$Res> {
  __$$_GetAllMessageWithTitleCopyWithImpl(_$_GetAllMessageWithTitle _value,
      $Res Function(_$_GetAllMessageWithTitle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$_GetAllMessageWithTitle(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetAllMessageWithTitle implements _GetAllMessageWithTitle {
  const _$_GetAllMessageWithTitle({required this.title});

  @override
  final String title;

  @override
  String toString() {
    return 'ConversationEvent.getAllMessage(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetAllMessageWithTitle &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetAllMessageWithTitleCopyWith<_$_GetAllMessageWithTitle> get copyWith =>
      __$$_GetAllMessageWithTitleCopyWithImpl<_$_GetAllMessageWithTitle>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) chat,
    required TResult Function(String title) getAllMessage,
    required TResult Function(String title) saveMessage,
    required TResult Function() getAllTitle,
  }) {
    return getAllMessage(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? chat,
    TResult? Function(String title)? getAllMessage,
    TResult? Function(String title)? saveMessage,
    TResult? Function()? getAllTitle,
  }) {
    return getAllMessage?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? chat,
    TResult Function(String title)? getAllMessage,
    TResult Function(String title)? saveMessage,
    TResult Function()? getAllTitle,
    required TResult orElse(),
  }) {
    if (getAllMessage != null) {
      return getAllMessage(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Chat value) chat,
    required TResult Function(_GetAllMessageWithTitle value) getAllMessage,
    required TResult Function(_SaveMessage value) saveMessage,
    required TResult Function(_GetAllTitle value) getAllTitle,
  }) {
    return getAllMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Chat value)? chat,
    TResult? Function(_GetAllMessageWithTitle value)? getAllMessage,
    TResult? Function(_SaveMessage value)? saveMessage,
    TResult? Function(_GetAllTitle value)? getAllTitle,
  }) {
    return getAllMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Chat value)? chat,
    TResult Function(_GetAllMessageWithTitle value)? getAllMessage,
    TResult Function(_SaveMessage value)? saveMessage,
    TResult Function(_GetAllTitle value)? getAllTitle,
    required TResult orElse(),
  }) {
    if (getAllMessage != null) {
      return getAllMessage(this);
    }
    return orElse();
  }
}

abstract class _GetAllMessageWithTitle implements ConversationEvent {
  const factory _GetAllMessageWithTitle({required final String title}) =
      _$_GetAllMessageWithTitle;

  String get title;
  @JsonKey(ignore: true)
  _$$_GetAllMessageWithTitleCopyWith<_$_GetAllMessageWithTitle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SaveMessageCopyWith<$Res> {
  factory _$$_SaveMessageCopyWith(
          _$_SaveMessage value, $Res Function(_$_SaveMessage) then) =
      __$$_SaveMessageCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$_SaveMessageCopyWithImpl<$Res>
    extends _$ConversationEventCopyWithImpl<$Res, _$_SaveMessage>
    implements _$$_SaveMessageCopyWith<$Res> {
  __$$_SaveMessageCopyWithImpl(
      _$_SaveMessage _value, $Res Function(_$_SaveMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$_SaveMessage(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SaveMessage implements _SaveMessage {
  const _$_SaveMessage({required this.title});

  @override
  final String title;

  @override
  String toString() {
    return 'ConversationEvent.saveMessage(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveMessage &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaveMessageCopyWith<_$_SaveMessage> get copyWith =>
      __$$_SaveMessageCopyWithImpl<_$_SaveMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) chat,
    required TResult Function(String title) getAllMessage,
    required TResult Function(String title) saveMessage,
    required TResult Function() getAllTitle,
  }) {
    return saveMessage(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? chat,
    TResult? Function(String title)? getAllMessage,
    TResult? Function(String title)? saveMessage,
    TResult? Function()? getAllTitle,
  }) {
    return saveMessage?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? chat,
    TResult Function(String title)? getAllMessage,
    TResult Function(String title)? saveMessage,
    TResult Function()? getAllTitle,
    required TResult orElse(),
  }) {
    if (saveMessage != null) {
      return saveMessage(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Chat value) chat,
    required TResult Function(_GetAllMessageWithTitle value) getAllMessage,
    required TResult Function(_SaveMessage value) saveMessage,
    required TResult Function(_GetAllTitle value) getAllTitle,
  }) {
    return saveMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Chat value)? chat,
    TResult? Function(_GetAllMessageWithTitle value)? getAllMessage,
    TResult? Function(_SaveMessage value)? saveMessage,
    TResult? Function(_GetAllTitle value)? getAllTitle,
  }) {
    return saveMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Chat value)? chat,
    TResult Function(_GetAllMessageWithTitle value)? getAllMessage,
    TResult Function(_SaveMessage value)? saveMessage,
    TResult Function(_GetAllTitle value)? getAllTitle,
    required TResult orElse(),
  }) {
    if (saveMessage != null) {
      return saveMessage(this);
    }
    return orElse();
  }
}

abstract class _SaveMessage implements ConversationEvent {
  const factory _SaveMessage({required final String title}) = _$_SaveMessage;

  String get title;
  @JsonKey(ignore: true)
  _$$_SaveMessageCopyWith<_$_SaveMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetAllTitleCopyWith<$Res> {
  factory _$$_GetAllTitleCopyWith(
          _$_GetAllTitle value, $Res Function(_$_GetAllTitle) then) =
      __$$_GetAllTitleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetAllTitleCopyWithImpl<$Res>
    extends _$ConversationEventCopyWithImpl<$Res, _$_GetAllTitle>
    implements _$$_GetAllTitleCopyWith<$Res> {
  __$$_GetAllTitleCopyWithImpl(
      _$_GetAllTitle _value, $Res Function(_$_GetAllTitle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetAllTitle implements _GetAllTitle {
  const _$_GetAllTitle();

  @override
  String toString() {
    return 'ConversationEvent.getAllTitle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetAllTitle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) chat,
    required TResult Function(String title) getAllMessage,
    required TResult Function(String title) saveMessage,
    required TResult Function() getAllTitle,
  }) {
    return getAllTitle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? chat,
    TResult? Function(String title)? getAllMessage,
    TResult? Function(String title)? saveMessage,
    TResult? Function()? getAllTitle,
  }) {
    return getAllTitle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? chat,
    TResult Function(String title)? getAllMessage,
    TResult Function(String title)? saveMessage,
    TResult Function()? getAllTitle,
    required TResult orElse(),
  }) {
    if (getAllTitle != null) {
      return getAllTitle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Chat value) chat,
    required TResult Function(_GetAllMessageWithTitle value) getAllMessage,
    required TResult Function(_SaveMessage value) saveMessage,
    required TResult Function(_GetAllTitle value) getAllTitle,
  }) {
    return getAllTitle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Chat value)? chat,
    TResult? Function(_GetAllMessageWithTitle value)? getAllMessage,
    TResult? Function(_SaveMessage value)? saveMessage,
    TResult? Function(_GetAllTitle value)? getAllTitle,
  }) {
    return getAllTitle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Chat value)? chat,
    TResult Function(_GetAllMessageWithTitle value)? getAllMessage,
    TResult Function(_SaveMessage value)? saveMessage,
    TResult Function(_GetAllTitle value)? getAllTitle,
    required TResult orElse(),
  }) {
    if (getAllTitle != null) {
      return getAllTitle(this);
    }
    return orElse();
  }
}

abstract class _GetAllTitle implements ConversationEvent {
  const factory _GetAllTitle() = _$_GetAllTitle;
}

/// @nodoc
mixin _$ConversationState {
  ConversationData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ConversationData data) initial,
    required TResult Function(ConversationData data) loading,
    required TResult Function(ConversationData data) success,
    required TResult Function(ConversationData data) failure,
    required TResult Function(ConversationData data) getAllMessageSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConversationData data)? initial,
    TResult? Function(ConversationData data)? loading,
    TResult? Function(ConversationData data)? success,
    TResult? Function(ConversationData data)? failure,
    TResult? Function(ConversationData data)? getAllMessageSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConversationData data)? initial,
    TResult Function(ConversationData data)? loading,
    TResult Function(ConversationData data)? success,
    TResult Function(ConversationData data)? failure,
    TResult Function(ConversationData data)? getAllMessageSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_GetAllMessageSuccess value) getAllMessageSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_GetAllMessageSuccess value)? getAllMessageSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_GetAllMessageSuccess value)? getAllMessageSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConversationStateCopyWith<ConversationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationStateCopyWith<$Res> {
  factory $ConversationStateCopyWith(
          ConversationState value, $Res Function(ConversationState) then) =
      _$ConversationStateCopyWithImpl<$Res, ConversationState>;
  @useResult
  $Res call({ConversationData data});

  $ConversationDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ConversationStateCopyWithImpl<$Res, $Val extends ConversationState>
    implements $ConversationStateCopyWith<$Res> {
  _$ConversationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ConversationData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConversationDataCopyWith<$Res> get data {
    return $ConversationDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $ConversationStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ConversationData data});

  @override
  $ConversationDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ConversationStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Initial(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ConversationData,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.data});

  @override
  final ConversationData data;

  @override
  String toString() {
    return 'ConversationState.initial(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ConversationData data) initial,
    required TResult Function(ConversationData data) loading,
    required TResult Function(ConversationData data) success,
    required TResult Function(ConversationData data) failure,
    required TResult Function(ConversationData data) getAllMessageSuccess,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConversationData data)? initial,
    TResult? Function(ConversationData data)? loading,
    TResult? Function(ConversationData data)? success,
    TResult? Function(ConversationData data)? failure,
    TResult? Function(ConversationData data)? getAllMessageSuccess,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConversationData data)? initial,
    TResult Function(ConversationData data)? loading,
    TResult Function(ConversationData data)? success,
    TResult Function(ConversationData data)? failure,
    TResult Function(ConversationData data)? getAllMessageSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_GetAllMessageSuccess value) getAllMessageSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_GetAllMessageSuccess value)? getAllMessageSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_GetAllMessageSuccess value)? getAllMessageSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ConversationState {
  const factory _Initial({required final ConversationData data}) = _$_Initial;

  @override
  ConversationData get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $ConversationStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ConversationData data});

  @override
  $ConversationDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$ConversationStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Loading(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ConversationData,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading({required this.data});

  @override
  final ConversationData data;

  @override
  String toString() {
    return 'ConversationState.loading(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ConversationData data) initial,
    required TResult Function(ConversationData data) loading,
    required TResult Function(ConversationData data) success,
    required TResult Function(ConversationData data) failure,
    required TResult Function(ConversationData data) getAllMessageSuccess,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConversationData data)? initial,
    TResult? Function(ConversationData data)? loading,
    TResult? Function(ConversationData data)? success,
    TResult? Function(ConversationData data)? failure,
    TResult? Function(ConversationData data)? getAllMessageSuccess,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConversationData data)? initial,
    TResult Function(ConversationData data)? loading,
    TResult Function(ConversationData data)? success,
    TResult Function(ConversationData data)? failure,
    TResult Function(ConversationData data)? getAllMessageSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_GetAllMessageSuccess value) getAllMessageSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_GetAllMessageSuccess value)? getAllMessageSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_GetAllMessageSuccess value)? getAllMessageSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ConversationState {
  const factory _Loading({required final ConversationData data}) = _$_Loading;

  @override
  ConversationData get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res>
    implements $ConversationStateCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ConversationData data});

  @override
  $ConversationDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$ConversationStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Success(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ConversationData,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success({required this.data});

  @override
  final ConversationData data;

  @override
  String toString() {
    return 'ConversationState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ConversationData data) initial,
    required TResult Function(ConversationData data) loading,
    required TResult Function(ConversationData data) success,
    required TResult Function(ConversationData data) failure,
    required TResult Function(ConversationData data) getAllMessageSuccess,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConversationData data)? initial,
    TResult? Function(ConversationData data)? loading,
    TResult? Function(ConversationData data)? success,
    TResult? Function(ConversationData data)? failure,
    TResult? Function(ConversationData data)? getAllMessageSuccess,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConversationData data)? initial,
    TResult Function(ConversationData data)? loading,
    TResult Function(ConversationData data)? success,
    TResult Function(ConversationData data)? failure,
    TResult Function(ConversationData data)? getAllMessageSuccess,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_GetAllMessageSuccess value) getAllMessageSuccess,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_GetAllMessageSuccess value)? getAllMessageSuccess,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_GetAllMessageSuccess value)? getAllMessageSuccess,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements ConversationState {
  const factory _Success({required final ConversationData data}) = _$_Success;

  @override
  ConversationData get data;
  @override
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res>
    implements $ConversationStateCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ConversationData data});

  @override
  $ConversationDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$ConversationStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Failure(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ConversationData,
    ));
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure({required this.data});

  @override
  final ConversationData data;

  @override
  String toString() {
    return 'ConversationState.failure(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ConversationData data) initial,
    required TResult Function(ConversationData data) loading,
    required TResult Function(ConversationData data) success,
    required TResult Function(ConversationData data) failure,
    required TResult Function(ConversationData data) getAllMessageSuccess,
  }) {
    return failure(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConversationData data)? initial,
    TResult? Function(ConversationData data)? loading,
    TResult? Function(ConversationData data)? success,
    TResult? Function(ConversationData data)? failure,
    TResult? Function(ConversationData data)? getAllMessageSuccess,
  }) {
    return failure?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConversationData data)? initial,
    TResult Function(ConversationData data)? loading,
    TResult Function(ConversationData data)? success,
    TResult Function(ConversationData data)? failure,
    TResult Function(ConversationData data)? getAllMessageSuccess,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_GetAllMessageSuccess value) getAllMessageSuccess,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_GetAllMessageSuccess value)? getAllMessageSuccess,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_GetAllMessageSuccess value)? getAllMessageSuccess,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements ConversationState {
  const factory _Failure({required final ConversationData data}) = _$_Failure;

  @override
  ConversationData get data;
  @override
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetAllMessageSuccessCopyWith<$Res>
    implements $ConversationStateCopyWith<$Res> {
  factory _$$_GetAllMessageSuccessCopyWith(_$_GetAllMessageSuccess value,
          $Res Function(_$_GetAllMessageSuccess) then) =
      __$$_GetAllMessageSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ConversationData data});

  @override
  $ConversationDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetAllMessageSuccessCopyWithImpl<$Res>
    extends _$ConversationStateCopyWithImpl<$Res, _$_GetAllMessageSuccess>
    implements _$$_GetAllMessageSuccessCopyWith<$Res> {
  __$$_GetAllMessageSuccessCopyWithImpl(_$_GetAllMessageSuccess _value,
      $Res Function(_$_GetAllMessageSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_GetAllMessageSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ConversationData,
    ));
  }
}

/// @nodoc

class _$_GetAllMessageSuccess implements _GetAllMessageSuccess {
  const _$_GetAllMessageSuccess({required this.data});

  @override
  final ConversationData data;

  @override
  String toString() {
    return 'ConversationState.getAllMessageSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetAllMessageSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetAllMessageSuccessCopyWith<_$_GetAllMessageSuccess> get copyWith =>
      __$$_GetAllMessageSuccessCopyWithImpl<_$_GetAllMessageSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ConversationData data) initial,
    required TResult Function(ConversationData data) loading,
    required TResult Function(ConversationData data) success,
    required TResult Function(ConversationData data) failure,
    required TResult Function(ConversationData data) getAllMessageSuccess,
  }) {
    return getAllMessageSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConversationData data)? initial,
    TResult? Function(ConversationData data)? loading,
    TResult? Function(ConversationData data)? success,
    TResult? Function(ConversationData data)? failure,
    TResult? Function(ConversationData data)? getAllMessageSuccess,
  }) {
    return getAllMessageSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConversationData data)? initial,
    TResult Function(ConversationData data)? loading,
    TResult Function(ConversationData data)? success,
    TResult Function(ConversationData data)? failure,
    TResult Function(ConversationData data)? getAllMessageSuccess,
    required TResult orElse(),
  }) {
    if (getAllMessageSuccess != null) {
      return getAllMessageSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_GetAllMessageSuccess value) getAllMessageSuccess,
  }) {
    return getAllMessageSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_GetAllMessageSuccess value)? getAllMessageSuccess,
  }) {
    return getAllMessageSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_GetAllMessageSuccess value)? getAllMessageSuccess,
    required TResult orElse(),
  }) {
    if (getAllMessageSuccess != null) {
      return getAllMessageSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetAllMessageSuccess implements ConversationState {
  const factory _GetAllMessageSuccess({required final ConversationData data}) =
      _$_GetAllMessageSuccess;

  @override
  ConversationData get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetAllMessageSuccessCopyWith<_$_GetAllMessageSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
