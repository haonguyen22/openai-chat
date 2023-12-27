// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConversationData {
  List<Message>? get messages => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  bool get isTyping => throw _privateConstructorUsedError;
  List<String> get choices => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConversationDataCopyWith<ConversationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationDataCopyWith<$Res> {
  factory $ConversationDataCopyWith(
          ConversationData value, $Res Function(ConversationData) then) =
      _$ConversationDataCopyWithImpl<$Res, ConversationData>;
  @useResult
  $Res call(
      {List<Message>? messages,
      String? title,
      bool isTyping,
      List<String> choices});
}

/// @nodoc
class _$ConversationDataCopyWithImpl<$Res, $Val extends ConversationData>
    implements $ConversationDataCopyWith<$Res> {
  _$ConversationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = freezed,
    Object? title = freezed,
    Object? isTyping = null,
    Object? choices = null,
  }) {
    return _then(_value.copyWith(
      messages: freezed == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      isTyping: null == isTyping
          ? _value.isTyping
          : isTyping // ignore: cast_nullable_to_non_nullable
              as bool,
      choices: null == choices
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConversationDataCopyWith<$Res>
    implements $ConversationDataCopyWith<$Res> {
  factory _$$_ConversationDataCopyWith(
          _$_ConversationData value, $Res Function(_$_ConversationData) then) =
      __$$_ConversationDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Message>? messages,
      String? title,
      bool isTyping,
      List<String> choices});
}

/// @nodoc
class __$$_ConversationDataCopyWithImpl<$Res>
    extends _$ConversationDataCopyWithImpl<$Res, _$_ConversationData>
    implements _$$_ConversationDataCopyWith<$Res> {
  __$$_ConversationDataCopyWithImpl(
      _$_ConversationData _value, $Res Function(_$_ConversationData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = freezed,
    Object? title = freezed,
    Object? isTyping = null,
    Object? choices = null,
  }) {
    return _then(_$_ConversationData(
      messages: freezed == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      isTyping: null == isTyping
          ? _value.isTyping
          : isTyping // ignore: cast_nullable_to_non_nullable
              as bool,
      choices: null == choices
          ? _value._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_ConversationData implements _ConversationData {
  const _$_ConversationData(
      {final List<Message>? messages,
      this.title,
      this.isTyping = false,
      final List<String> choices = const []})
      : _messages = messages,
        _choices = choices;

  final List<Message>? _messages;
  @override
  List<Message>? get messages {
    final value = _messages;
    if (value == null) return null;
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? title;
  @override
  @JsonKey()
  final bool isTyping;
  final List<String> _choices;
  @override
  @JsonKey()
  List<String> get choices {
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choices);
  }

  @override
  String toString() {
    return 'ConversationData(messages: $messages, title: $title, isTyping: $isTyping, choices: $choices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConversationData &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.isTyping, isTyping) ||
                other.isTyping == isTyping) &&
            const DeepCollectionEquality().equals(other._choices, _choices));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_messages),
      title,
      isTyping,
      const DeepCollectionEquality().hash(_choices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConversationDataCopyWith<_$_ConversationData> get copyWith =>
      __$$_ConversationDataCopyWithImpl<_$_ConversationData>(this, _$identity);
}

abstract class _ConversationData implements ConversationData {
  const factory _ConversationData(
      {final List<Message>? messages,
      final String? title,
      final bool isTyping,
      final List<String> choices}) = _$_ConversationData;

  @override
  List<Message>? get messages;
  @override
  String? get title;
  @override
  bool get isTyping;
  @override
  List<String> get choices;
  @override
  @JsonKey(ignore: true)
  _$$_ConversationDataCopyWith<_$_ConversationData> get copyWith =>
      throw _privateConstructorUsedError;
}
