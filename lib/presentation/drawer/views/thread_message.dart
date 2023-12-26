import 'package:flutter/material.dart';

class ThreadMessageWidget extends StatelessWidget {
  const ThreadMessageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.message),
        title: const Text("A"),
        trailing:
            Icon(Icons.delete_forever, color: Colors.red.withOpacity(0.6)),
      ),
    );
  }
}
