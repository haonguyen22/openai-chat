import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:let_tutor/data/models/chat_response/message.dart';

part 'choice_response.freezed.dart';
part 'choice_response.g.dart';

@freezed
class ChoiceResponse with _$ChoiceResponse {
  const factory ChoiceResponse({
    required int index,
    required Message message,
  }) = _ChoiceResponse;

  factory ChoiceResponse.fromJson(Map<String, dynamic> json) =>
      _$ChoiceResponseFromJson(json);
}