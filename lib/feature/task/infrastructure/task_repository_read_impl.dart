import 'package:firebase_database/firebase_database.dart';
import 'package:task_management/feature/task/domain/model/task.dart';
import 'package:task_management/feature/task/domain/task_repository_read.dart';

class TaskRepositoryReadImpl implements TaskRepositoryRead {
  TaskRepositoryReadImpl(this._firebaseDatabase);

  final FirebaseDatabase _firebaseDatabase;

  @override
  Stream<List<Task>> getTasks() => _firebaseDatabase.ref('tasks').onValue.map(
        (event) {
          final tasksList = event.snapshot.children;
          return tasksList.map((doc) {
            final taskValue = doc.value as Map;
            return Task(
              id: doc.key!,
              title: taskValue['title'],
              description: taskValue['description'],
              isCompleted: taskValue['complete'],
            );
          }).toList();
        },
      );
}
