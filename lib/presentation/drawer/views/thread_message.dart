import 'package:flutter/material.dart';

class ThreadMessageWidget extends StatelessWidget {
  final String title;
  final Function()? onTap;
  final Function()? onDelete;
  const ThreadMessageWidget({
    super.key,
    required this.title,
    this.onTap,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: ListTile(
          leading: const Icon(Icons.message),
          title: Text(title),
          trailing: GestureDetector(
            onTap: onDelete,
            child: Icon(
              Icons.delete_forever,
              color: Colors.red.withOpacity(0.6),
            ),
          ),
        ),
      ),
    );
  }
}
