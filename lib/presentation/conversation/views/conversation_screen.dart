import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jumping_dot/jumping_dot.dart';
import 'package:openai_chat/core/enums/role.dart';
import 'package:openai_chat/core/extensions/string_ext.dart';
import 'package:openai_chat/presentation/app_setting/bloc/app_setting_bloc.dart';
import 'package:openai_chat/presentation/conversation/bloc/conversation_bloc.dart';
import 'package:openai_chat/presentation/conversation/views/widgets/message_row.dart';
import 'package:openai_chat/presentation/drawer/views/drawer.dart';

class ConversationScreen extends StatefulWidget {
  const ConversationScreen({super.key});

  @override
  State<ConversationScreen> createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _apiKeyController = TextEditingController(
      text: "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");

  final TextEditingController _titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConversationBloc, ConversationState>(
      builder: (_, state) => Scaffold(
        drawer: const DrawerWidget(),
        appBar: AppBar(
          title: const Text("Chat"),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                showDialog<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Conversation title'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Please enter the conversation title "),
                          const SizedBox(height: 10),
                          TextField(
                            controller: _titleController,
                            decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                      actions: <Widget>[
                        TextButton(
                          style: TextButton.styleFrom(
                            textStyle: Theme.of(context).textTheme.labelLarge,
                          ),
                          child: const Text('Cancel'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            textStyle: Theme.of(context).textTheme.labelLarge,
                          ),
                          child: const Text('Save'),
                          onPressed: () {
                            context.read<ConversationBloc>().add(
                                ConversationEvent.saveMessage(
                                    title: _titleController.text));
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              icon: const Icon(Icons.save),
            ),
            IconButton(
              onPressed: () {
                showDialog<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('API Key'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                              "Please enter your API key to enable the chat bot "),
                          const SizedBox(height: 10),
                          TextField(
                            controller: _apiKeyController,
                            decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                      actions: <Widget>[
                        TextButton(
                          style: TextButton.styleFrom(
                            textStyle: Theme.of(context).textTheme.labelLarge,
                          ),
                          child: const Text('Cancel'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            textStyle: Theme.of(context).textTheme.labelLarge,
                          ),
                          child: const Text('Save'),
                          onPressed: () {
                            context
                                .read<AppSettingBloc>()
                                .add(SaveApiKeyEvent(_apiKeyController.text));
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              icon: const Icon(Icons.settings),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ...List.generate(
                      state.data.messages?.length ?? 0,
                      (index) => MessageRowWidget(
                        content: state.data.messages![index].content ?? "",
                        role: state.data.messages![index].role?.toRole() ??
                            Role.user,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            if (state.data.isTyping)
              JumpingDots(
                color: Colors.black,
                radius: 6,
                numberOfDots: 3,
                animationDuration: const Duration(milliseconds: 200),
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: "Type a message",
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  suffixIcon: IconButton(
                    onPressed: () {
                      context.read<ConversationBloc>().add(
                          ConversationEvent.chat(message: _controller.text));
                      _controller.clear();
                    },
                    icon: const Icon(Icons.send),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
