import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:openai_chat/data/models/chat_response/chat_response.dart';
import 'package:retrofit/http.dart';

part 'gpt_service.g.dart';

@RestApi()
@injectable
abstract class GPTService {
  static const String chat = '/chat/completions';

  @factoryMethod
  factory GPTService(Dio dio) = _GPTService;

  @POST(chat)
  Future<ChatResponse> chatCompletionApi(
      {@Body() required Map<String, dynamic> body});
}
