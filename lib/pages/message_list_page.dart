import 'package:flutter/material.dart';
import 'package:fs01_day02_01/models/message.dart';
import 'package:fs01_day02_01/themes/app_colors.dart';
import 'package:fs01_day02_01/widgets/widgets.dart';

class MessageListPage extends StatelessWidget {
  const MessageListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Message> _messages = Message.getDummyMessages;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Message List Page'),
        leading: const BackButton(),
      ),
      backgroundColor: AppColors.backgroundDark,
      body: ListView.builder(
        padding: const EdgeInsets.only(
          left: 20,
        ),
        itemCount: _messages.length,
        itemBuilder: (context, index) {
          final Message item = _messages[index];
          return MessageItemWidget(
            message: item,
          );
        },
      ),
    );
  }
}
