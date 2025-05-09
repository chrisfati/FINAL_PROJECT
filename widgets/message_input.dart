import 'package:flutter/material.dart';

class MessageInput extends StatefulWidget {
  final Function(String) sendMessage;

  MessageInput(this.sendMessage);

  @override
  _MessageInputState createState() => _MessageInputState();
}

class _MessageInputState extends State<MessageInput> {
  final _controller = TextEditingController();

  void _send() {
    if (_controller.text.isNotEmpty) {
      widget.sendMessage(_controller.text);
      _controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(hintText: 'Enter message'),
            ),
          ),
          IconButton(
            onPressed: _send,
            icon: Icon(Icons.send),
          ),
        ],
      ),
    );
  }
}
