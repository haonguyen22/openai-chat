import 'package:let_tutor/data/models/chat_response/message.dart';

abstract class GPTRepository {
  Future<String> getTutors({required List<Message> messages});
}
