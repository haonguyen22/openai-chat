import 'package:openai_chat/data/models/chat_response/message.dart';

abstract class GPTRepository {
  Future<String> getMessage({required List<Message> messages});
}
