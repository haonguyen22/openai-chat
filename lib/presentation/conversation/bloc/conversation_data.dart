import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openai_chat/data/models/chat_response/message.dart';

part 'conversation_data.freezed.dart';

@freezed
class ConversationData with _$ConversationData {
  const factory ConversationData({
    List<Message>? messages,
    String? title,
    @Default(false) bool isTyping,
    @Default([]) List<String> choices,
  }) = _ConversationData;
}
