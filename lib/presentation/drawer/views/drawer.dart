import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:openai_chat/core/constants/hive.dart';
import 'package:openai_chat/core/extensions/context_ext.dart';
import 'package:openai_chat/presentation/conversation/bloc/conversation_bloc.dart';
import 'package:openai_chat/presentation/drawer/views/thread_message.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  late Box<String> box;

  @override
  void initState() {
    box = Hive.box(HiveConstant.messageBox);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConversationBloc, ConversationState>(
      builder: (_, state) => Drawer(
        width: 250,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(5),
            bottomRight: Radius.circular(5),
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: ValueListenableBuilder(
                  valueListenable: box.listenable(),
                  builder: (_, value, __) => ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      ...List.generate(
                        value.keys.length,
                        (index) => ThreadMessageWidget(
                            title: value.keys.elementAt(index),
                            onTap: () {
                              context.read<ConversationBloc>().add(
                                  ConversationEvent.getAllMessage(
                                      title: value.keys.elementAt(index)));
                              Navigator.pop(context);
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ElevatedButton(
                  onPressed: () {
                    context
                        .read<ConversationBloc>()
                        .add(const ConversationEvent.reset());
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    "New chat",
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
