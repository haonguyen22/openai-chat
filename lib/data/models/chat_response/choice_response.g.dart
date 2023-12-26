// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choice_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChoiceResponse _$$_ChoiceResponseFromJson(Map<String, dynamic> json) =>
    _$_ChoiceResponse(
      index: json['index'] as int,
      message: Message.fromJson(json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ChoiceResponseToJson(_$_ChoiceResponse instance) =>
    <String, dynamic>{
      'index': instance.index,
      'message': instance.message,
    };
