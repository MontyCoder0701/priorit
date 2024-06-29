import 'package:flutter/material.dart';

class TaskCreateScreen extends StatefulWidget {
  const TaskCreateScreen({super.key});

  @override
  State<TaskCreateScreen> createState() => _TaskCreateScreenState();
}

class _TaskCreateScreenState extends State<TaskCreateScreen> {
  late final theme = Theme.of(context);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => print('Create task'),
            icon: const Icon(Icons.check),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  TextFormField(
                    initialValue: 'Task 1',
                    decoration: const InputDecoration(
                      labelText: 'Name',
                      hintText: 'Enter task name',
                    ),
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    readOnly: true,
                    initialValue: 'Everyday at 10:00',
                    onTap: () => print('Open Dialog'),
                    decoration: const InputDecoration(
                      labelText: 'Reminder',
                    ),
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
