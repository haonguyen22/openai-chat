import 'package:injectable/injectable.dart';
import 'package:openai_chat/data/datasource/remote/gpt/gpt_service.dart';
import 'package:openai_chat/data/models/chat_response/message.dart';
import 'package:openai_chat/domain/repositories/gpt_repository.dart';

@Injectable(as: GPTRepository)
class GPTRepositoryImpl implements GPTRepository {
  final GPTService _gptService;

  GPTRepositoryImpl(this._gptService);

  @override
  Future<String> getMessage({required List<Message> messages}) async {

    
    final res = await _gptService.chatCompletionApi(body: {
      "model": "gpt-3.5-turbo",
      "messages": messages.map((e) => e.toJson()).toList(),
      "temperature": 0.7
    });

    return res.choices.first.message.content ?? "";
  }
}
