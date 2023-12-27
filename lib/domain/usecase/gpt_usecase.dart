import 'package:injectable/injectable.dart';
import 'package:openai_chat/data/models/chat_response/message.dart';
import 'package:openai_chat/domain/repositories/gpt_repository.dart';
import 'package:openai_chat/domain/usecase/shared_preferences_usecase.dart';

@injectable
class GPTUseCase {
  final GPTRepository _gptRepository;
  final SharedPreferencesUseCase _sharedPreferencesUseCase;

  GPTUseCase(this._gptRepository, this._sharedPreferencesUseCase);

  Future<String> getMessageResponseFromGPT(
      {required List<Message> messages}) async {
    final res = await _gptRepository.getMessage(messages: messages);
    return res;
  }

  Future<void> setApiKey(String apiKey) async {
    _sharedPreferencesUseCase.setApikey(apiKey);
  }
}
