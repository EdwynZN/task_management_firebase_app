import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_ui_database/firebase_ui_database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_management/app/style/theme_provider.dart';
import 'package:task_management/feature/task/controller/update_task_controller.dart';
import 'package:task_management/feature/task/domain/use_case/update_task_use_case.dart';
import 'package:task_management/feature/task/widget/add_task_dialog.dart';
import 'package:task_management/feature/task/widget/task_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final UpdateTaskController _updateTaskController;
  late ThemeData theme = Theme.of(context);
  String? previous;

  @override
  void initState() {
    super.initState();
    final useCase = context.read<UpdateTaskUseCase>();
    _updateTaskController = UpdateTaskController(useCase)
      ..addListener(_showSnackBar);
  }

  void _showSnackBar() {
    if (_updateTaskController.error == previous) {
      return;
    }
    previous = _updateTaskController.error;
    if (previous == null) {
      return;
    }
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          previous!,
          style: TextStyle(color: theme.colorScheme.onErrorContainer),
        ),
        backgroundColor: theme.colorScheme.errorContainer,
      ),
    );
  }

  @override
  void dispose() {
    _updateTaskController
      ..removeListener(_showSnackBar)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: _updateTaskController,
      child: Scaffold(
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
                final id = doc.key!;
                return Selector<UpdateTaskController, bool>(
                  selector: (_, controller) =>
                      controller.loadingIds.contains(id),
                  builder: (context, isLoading, _) {
                    return TaskCard(
                      id: id,
                      title: taskValue['title']!,
                      description: taskValue['description'],
                      isCompleted: taskValue['completed']!,
                      onChanged: isLoading
                          ? null
                          : (value) => _updateTaskController.updateTask(
                                id: id,
                                completed: value,
                              ),
                    );
                  },
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
      ),
    );
  }
}
