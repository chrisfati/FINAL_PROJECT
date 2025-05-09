import 'package:flutter/material.dart';
import 'package:your_project/models/message.dart';

class MessageBubble extends StatelessWidget {
  final Message message;

  MessageBubble({required this.message});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Text(
            message.userName,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 8),
          Text(
            message.text,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
      subtitle: Text(
        message.timestamp.toString(),
        style: TextStyle(fontSize: 12, color: Colors.grey),
      ),
    );
  }
}
