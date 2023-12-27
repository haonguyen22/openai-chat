import 'package:openai_chat/data/models/chat_response/message.dart';

abstract class GPTRepository {
  Future<String> getMessage({required List<Message> messages});

  Future<void> saveMessage(
      {required List<Message> message, required String title});

  Future<List<Message>> getMessages();

  Future<List<String>> getAllMessages();

  Future<List<Message>> getAllMessagesWithTitle({required String title});

  Future<List<String>> deleteMessage({required String title});
}
