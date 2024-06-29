import 'package:flutter/material.dart';

class TaskCreateScreen extends StatefulWidget {
  const TaskCreateScreen({super.key});

  @override
  State<TaskCreateScreen> createState() => _TaskCreateScreenState();
}

class _TaskCreateScreenState extends State<TaskCreateScreen> {
  late final theme = Theme.of(context);
  late bool isRepeated = false;

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
                    initialValue: '10:00 AM',
                    onTap: () => showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                      initialEntryMode: TimePickerEntryMode.input,
                    ),
                    decoration: const InputDecoration(
                      labelText: 'Reminder Time',
                    ),
                  ),
                  const SizedBox(height: 30),
                  CheckboxListTile(
                    contentPadding: EdgeInsets.zero,
                    value: isRepeated,
                    title: const Text('Repeated?'),
                    onChanged: (bool? value) {
                      setState(() => isRepeated = value!);
                    },
                  ),
                  const SizedBox(height: 30),
                  Visibility(
                    visible: !isRepeated,
                    child: TextFormField(
                      readOnly: true,
                      initialValue: '2024/06/29',
                      onTap: () => showDatePicker(
                        context: context,
                        firstDate: DateTime.now(),
                        lastDate: DateTime.now(),
                      ),
                      decoration: const InputDecoration(
                        labelText: 'On Specific Day',
                      ),
                    ),
                  ),
                  Visibility(
                    visible: isRepeated,
                    child: TextFormField(
                      readOnly: true,
                      initialValue: 'Everyday',
                      onTap: () => showDialog(
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
                      decoration: const InputDecoration(
                        labelText: 'Repeated Days',
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
