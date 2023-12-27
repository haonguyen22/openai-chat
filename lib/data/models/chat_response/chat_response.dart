import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openai_chat/data/models/chat_response/choice_response.dart';

part 'chat_response.freezed.dart';
part 'chat_response.g.dart';

@freezed
class ChatResponse with _$ChatResponse {
  const factory ChatResponse({
    required String id,
    required String object,
    required int created,
    required List<ChoiceResponse> choices,
  }) = _ChatResponse;

  factory ChatResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatResponseFromJson(json);
}
