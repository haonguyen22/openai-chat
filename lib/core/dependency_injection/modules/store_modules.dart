import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';
import 'package:openai_chat/core/constants/hive.dart';
import 'package:openai_chat/data/models/chat_response/message.dart';

@module
abstract class StoreModules {
  // @Singleton()
  // Future<HiveInterface> init() async {
  //   await Hive.initFlutter();
  //   Hive.registerAdapter(MessageAdapter());

  //   await Hive.openBox(HiveConstant.messageBox);

  //   return Hive;
  // }
}
