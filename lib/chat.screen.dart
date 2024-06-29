import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: Text(
                      DateFormat.yMMMMEEEEd().add_jms().format(DateTime.now()),
                    ),
                  ),
                  const Card.filled(
                    child: ListTile(
                      title: Text('Hey! Make sure to finish this for today!'),
                    ),
                  ),
                  ...List.generate(
                    10,
                    (index) => Card.filled(
                      child: ListTile(title: Text('Task ${index + 1}')),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.thumb_up_alt_outlined),
                    label: const Text('Alright!'),
                  ),
                  const SizedBox(width: 10),
                  OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.thumb_down_alt_outlined),
                    label: const Text('Nope!'),
                  ),
                  const SizedBox(width: 10),
                  OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.access_time_outlined),
                    label: const Text('Maybe Later!'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
