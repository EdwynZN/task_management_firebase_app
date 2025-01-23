import 'package:task_management/feature/task/domain/model/task.dart';

abstract interface class TaskRepositoryRead {
  Stream<List<Task>> getTasks();
}
