import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messages'),
        backgroundColor: Colors.green[600],
      ),
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Text(
          'No Contacts!',
          style: TextStyle(fontSize: 18, color: Colors.grey[600]),
        ),
      ),
    );
  }
}
