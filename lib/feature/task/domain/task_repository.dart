import 'package:task_management/feature/task/domain/model/create_task_input.dart';
import 'package:task_management/feature/task/domain/model/task.dart';
import 'package:task_management/feature/task/domain/model/update_task_input.dart';

abstract interface class TaskRepository {
  Future<Task> addTask(CreateTaskInput task);

  Future<Task> updateTask(UpdateTaskInput task);

  Future<void> removeTask(String id);
}
