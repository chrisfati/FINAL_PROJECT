import 'package:flutter/material.dart';
import 'package:your_project/widgets/message_bubble.dart';
import 'package:your_project/widgets/message_input.dart';
import 'package:your_project/models/message.dart';

class ChatScreen extends StatefulWidget {
  final String userName;

  ChatScreen({required this.userName});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<Message> _messages = [];

  void _sendMessage(String text) {
    final newMessage = Message(
      text: text,
      userName: widget.userName,
      timestamp: DateTime.now(),
    );
    setState(() {
      _messages.add(newMessage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chat - ${widget.userName}')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (ctx, index) {
                return MessageBubble(
                  message: _messages[index],
                );
              },
            ),
          ),
          MessageInput(_sendMessage),
        ],
      ),
    );
  }
}
