import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              Card.filled(
                child: ListTile(
                  title: Text('Chat 1'),
                ),
              ),
              Card.filled(
                child: ListTile(
                  title: Text('Chat 2'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
