import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:openai_chat/core/constants/hive.dart';
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

  @override
  Future<void> saveMessage(
      {required List<Message> message, required String title}) async {
    final box = Hive.box<String>(HiveConstant.messageBox);

    await box.put(title, message.map((e) => jsonEncode(e)).join(' - '));
  }

  @override
  Future<List<Message>> getMessages() async {
    final box = Hive.box<String>(HiveConstant.messageBox);

    final messages = box.values.first
        .split(' - ')
        .map((e) => Message.fromJson(jsonDecode(e)))
        .toList();

    return messages;
  }

  @override
  Future<List<String>> getAllMessages() async {
    final box = Hive.box<String>(HiveConstant.messageBox);
    final messages = box.keys.toList();
    return messages.first;
  }

  @override
  Future<List<Message>> getAllMessagesWithTitle({required String title}) async {
    final box = Hive.box<String>(HiveConstant.messageBox);

    final messages = box
            .get(title, defaultValue: "")
            ?.split(' - ')
            .map((e) => Message.fromJson(jsonDecode(e)))
            .toList() ??
        [];
    return messages;
  }

  @override
  Future<List<String>> deleteMessage({required String title}) async {
    final box = Hive.box<String>(HiveConstant.messageBox);
    await box.delete(title);
    final messages = box.keys.toList();
    return messages.first;
  }
}
