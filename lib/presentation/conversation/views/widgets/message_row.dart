import 'package:flutter/material.dart';
import 'package:openai_chat/core/enums/role.dart';

class MessageRowWidget extends StatelessWidget {
  final Role role;
  final String content;

  const MessageRowWidget({
    super.key,
    required this.role,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: role == Role.user ? Colors.blue : Colors.red,
          child: Text(role.title),
        ),
        title: Text(content),
      ),
    );
  }
}
