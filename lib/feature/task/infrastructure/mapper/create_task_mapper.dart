import 'package:task_management/feature/task/domain/model/create_task_input.dart';

Map<String, dynamic> createTaskToJson(CreateTaskInput input) => {
      'title': input.title,
      'description': input.description,
      'completed': false,
    };
