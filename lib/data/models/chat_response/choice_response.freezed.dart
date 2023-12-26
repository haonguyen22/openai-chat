// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choice_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChoiceResponse _$ChoiceResponseFromJson(Map<String, dynamic> json) {
  return _ChoiceResponse.fromJson(json);
}

/// @nodoc
mixin _$ChoiceResponse {
  int get index => throw _privateConstructorUsedError;
  Message get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChoiceResponseCopyWith<ChoiceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoiceResponseCopyWith<$Res> {
  factory $ChoiceResponseCopyWith(
          ChoiceResponse value, $Res Function(ChoiceResponse) then) =
      _$ChoiceResponseCopyWithImpl<$Res, ChoiceResponse>;
  @useResult
  $Res call({int index, Message message});
}

/// @nodoc
class _$ChoiceResponseCopyWithImpl<$Res, $Val extends ChoiceResponse>
    implements $ChoiceResponseCopyWith<$Res> {
  _$ChoiceResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChoiceResponseCopyWith<$Res>
    implements $ChoiceResponseCopyWith<$Res> {
  factory _$$_ChoiceResponseCopyWith(
          _$_ChoiceResponse value, $Res Function(_$_ChoiceResponse) then) =
      __$$_ChoiceResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, Message message});
}

/// @nodoc
class __$$_ChoiceResponseCopyWithImpl<$Res>
    extends _$ChoiceResponseCopyWithImpl<$Res, _$_ChoiceResponse>
    implements _$$_ChoiceResponseCopyWith<$Res> {
  __$$_ChoiceResponseCopyWithImpl(
      _$_ChoiceResponse _value, $Res Function(_$_ChoiceResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? message = null,
  }) {
    return _then(_$_ChoiceResponse(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChoiceResponse implements _ChoiceResponse {
  const _$_ChoiceResponse({required this.index, required this.message});

  factory _$_ChoiceResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ChoiceResponseFromJson(json);

  @override
  final int index;
  @override
  final Message message;

  @override
  String toString() {
    return 'ChoiceResponse(index: $index, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChoiceResponse &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, index, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChoiceResponseCopyWith<_$_ChoiceResponse> get copyWith =>
      __$$_ChoiceResponseCopyWithImpl<_$_ChoiceResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChoiceResponseToJson(
      this,
    );
  }
}

abstract class _ChoiceResponse implements ChoiceResponse {
  const factory _ChoiceResponse(
      {required final int index,
      required final Message message}) = _$_ChoiceResponse;

  factory _ChoiceResponse.fromJson(Map<String, dynamic> json) =
      _$_ChoiceResponse.fromJson;

  @override
  int get index;
  @override
  Message get message;
  @override
  @JsonKey(ignore: true)
  _$$_ChoiceResponseCopyWith<_$_ChoiceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
