import 'package:flutter/material.dart';

class TaskDetailScreen extends StatefulWidget {
  const TaskDetailScreen({super.key});

  @override
  State<TaskDetailScreen> createState() => _TaskDetailScreenState();
}

class _TaskDetailScreenState extends State<TaskDetailScreen> {
  late final theme = Theme.of(context);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => print('Delete task'),
            icon: const Icon(Icons.delete_outline),
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
                    readOnly: true,
                    initialValue: 'Task 1',
                    decoration: InputDecoration(
                      labelText: 'Name',
                      hintText: 'Enter task name',
                      suffix: IconButton(
                        onPressed: () => print('Edit task'),
                        icon: const Icon(Icons.edit_outlined),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    readOnly: true,
                    initialValue: 'Everyday at 10:00',
                    decoration: InputDecoration(
                      labelText: 'Reminder',
                      hintText: 'Enter task name',
                      suffix: IconButton(
                        onPressed: () => print('Edit task'),
                        icon: const Icon(Icons.edit_outlined),
                      ),
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
