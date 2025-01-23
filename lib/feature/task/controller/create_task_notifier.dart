import 'package:flutter/material.dart';
import 'package:task_management/common/lib/async_state.dart';
import 'package:task_management/feature/task/domain/failure/task_domain_failure.dart';
import 'package:task_management/feature/task/domain/model/create_task_input.dart';
import 'package:task_management/feature/task/domain/model/task.dart';
import 'package:task_management/feature/task/domain/use_case/create_task_use_case.dart';

enum CreateTaskErrorType { unknown, title }

class CreateTaskNotifier extends ChangeNotifier {
  CreateTaskNotifier(this._createTaskUseCase);

  final CreateTaskUseCase _createTaskUseCase;

  AsyncState<Task, String>? _value;
  CreateTaskErrorType? _errorType;

  AsyncState<Task, String>? get state => _value;
  CreateTaskErrorType? get errorType => _errorType;

  void clearErrorType() {
    if (_errorType == null) {
      return;
    }
    _errorType = null;
    notifyListeners();
  }

  Future<void> createTask({
    required String title,
    String? description,
  }) async {
    _value = const AsyncState.loading();
    _errorType = null;
    notifyListeners();
    try {
      final input = CreateTaskInput(title: title, description: description);
      final result = await _createTaskUseCase(input);
      result.fold(
        (l) {
          final message = switch (l) {
            InvalidTitleTaskFailure() => 'Title required',
          };
          _value = AsyncState.error(message);
          _errorType = CreateTaskErrorType.title;
        },
        (t) {
          _value = AsyncState.data(t);
        },
      );
    } catch (e) {
      _value = AsyncState.error('unknown error');
      _errorType = CreateTaskErrorType.title;
    } finally {
      notifyListeners();
    }
  }
}
