import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_ui_database/firebase_ui_database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_management/app/style/theme_provider.dart';
import 'package:task_management/feature/task/widget/add_task_dialog.dart';
import 'package:task_management/feature/task/widget/task_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tasks'),
        actions: [
          Selector<ThemeNotifier, bool>(
            selector: (context, notifier) => notifier.mode != ThemeMode.light,
            builder: (context, isLight, child) {
              return IconButton.filledTonal(
                onPressed: context.read<ThemeNotifier>().toggleMode,
                icon: Icon(isLight ? Icons.light_mode : Icons.dark_mode),
              );
            },
          ),
        ],
      ),
      body: FirebaseDatabaseQueryBuilder(
        query: FirebaseDatabase.instance.ref().child('tasks'),
        pageSize: 20,
        builder: (context, snap, _) {
          final tasks = snap.docs;
          return ListView.builder(
            itemBuilder: (context, index) {
              if (snap.hasMore && index + 1 == snap.docs.length) {
                snap.fetchMore();
              }
              final doc = tasks[index];
              final taskValue = doc.value as Map;
              return TaskCard(
                id: doc.key!,
                title: taskValue['title']!,
                description: taskValue['description'],
                isCompleted: taskValue['completed']!,
              );
            },
            itemCount: tasks.length,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Create task',
        child: const Icon(Icons.add),
        onPressed: () {
          createTaskDialog(context: context);
        },
      ),
    );
  }
}
