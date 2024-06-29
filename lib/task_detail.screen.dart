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
                    initialValue: '10:00 AM',
                    decoration: InputDecoration(
                      labelText: 'Reminder Time',
                      suffix: IconButton(
                        onPressed: () => showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                          initialEntryMode: TimePickerEntryMode.input,
                        ),
                        icon: const Icon(Icons.edit_outlined),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    readOnly: true,
                    initialValue: '2024/06/29',
                    decoration: InputDecoration(
                      labelText: 'On Specific Day',
                      suffix: IconButton(
                        onPressed: () => showDatePicker(
                          context: context,
                          firstDate: DateTime.now(),
                          lastDate: DateTime.now(),
                        ),
                        icon: const Icon(Icons.edit_outlined),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    readOnly: true,
                    initialValue: 'Everyday',
                    decoration: InputDecoration(
                      labelText: 'Repeated Days',
                      suffix: IconButton(
                        onPressed: () => showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            content: SingleChildScrollView(
                              child: ListBody(
                                children: [
                                  CheckboxListTile(
                                    value: true,
                                    onChanged: (_) {},
                                    title: const Text('Everyday'),
                                  ),
                                  CheckboxListTile(
                                    value: true,
                                    onChanged: (_) {},
                                    title: const Text('Mon'),
                                  ),
                                  CheckboxListTile(
                                    value: true,
                                    onChanged: (_) {},
                                    title: const Text('Tues'),
                                  ),
                                  CheckboxListTile(
                                    value: true,
                                    onChanged: (_) {},
                                    title: const Text('Wed'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
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
