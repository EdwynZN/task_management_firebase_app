import 'package:firebase_database/firebase_database.dart';
import 'package:task_management/feature/task/domain/model/create_task_input.dart';
import 'package:task_management/feature/task/domain/model/task.dart';
import 'package:task_management/feature/task/domain/model/update_task_input.dart';
import 'package:task_management/feature/task/domain/task_repository.dart';
import 'package:task_management/feature/task/infrastructure/mapper/create_task_mapper.dart';
import 'package:task_management/feature/task/infrastructure/model/update_task_dto.dart';

class TaskRepositoryImpl implements TaskRepository {
  TaskRepositoryImpl(this._databaseReference);

  final DatabaseReference _databaseReference;

  @override
  Future<Task> addTask(CreateTaskInput task) async {
    final ref = _databaseReference.push();
    await ref.set(createTaskToJson(task));
    return Task(
      id: ref.key!,
      title: task.title,
      description: task.description,
      isCompleted: false,
    );
  }

  @override
  Future<void> removeTask(String id) async {
    await _databaseReference.child(id).remove();
  }

  @override
  Future<Task> updateTask(UpdateTaskInput task) async {
    final ref = _databaseReference.child(task.id);
    final dto = UpdateTaskDto.fromInput(task);
    await ref.update(dto.toJson());
    final doc = await ref.get();
    final taskValue = doc.value as Map;
    return Task(
      id: doc.key!,
      title: taskValue['title'],
      description: taskValue['description'],
      isCompleted: taskValue['completed'],
    );
  }
}
