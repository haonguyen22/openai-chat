import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:openai_chat/core/constants/hive.dart';

part 'message.g.dart';

@HiveType(typeId: HiveConstant.messageHiveId)
class Message {
  @HiveField(0)
  final String? role;

  @HiveField(1)
  final String? content;

  Message({
    this.role,
    this.content,
  });

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      role: json['role'],
      content: json['content'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'role': role,
      'content': content,
    };
  }

  Map<String, dynamic> toMap(String e) {
    return jsonDecode(e);
  }
}
