import 'package:flutter/material.dart';

class MessageRowWidget extends StatelessWidget {
  const MessageRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          child: const Text("Me"),
        ),
        title: const Text("A"),
        subtitle: const Text("Hello"),
      ),
    );
  }
}
