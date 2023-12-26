import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:let_tutor/data/datasource/remote/gpt/gpt_service.dart';
import 'package:let_tutor/data/models/chat_response/message.dart';
import 'package:let_tutor/domain/repositories/gpt_repository.dart';

@Injectable(as: GPTRepository)
class GPTRepositoryImpl implements GPTRepository {
  final GPTService _gptService;

  GPTRepositoryImpl(this._gptService);

  @override
  Future<String> getTutors({required List<Message> messages}) async {
    final res = await _gptService.chatCompletionApi(body: {
      "model": "gpt-3.5-turbo",
      "messages": [messages.map((e) => e.toJson()).toList()],
      "temperature": 0.7
    });

    return res.choices.first.message.content ?? "";
  }
}
