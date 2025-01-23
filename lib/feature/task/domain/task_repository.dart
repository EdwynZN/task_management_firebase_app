import 'package:task_management/feature/task/domain/model/task.dart';

abstract interface class TaskRepository {
  Future<Task> addTask(Task task);

  Future<Task> updateTask(Task task);

  Future<void> removeTask(String id);
}
