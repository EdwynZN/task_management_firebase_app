import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:task_management/feature/task/domain/failure/task_domain_failure.dart';
import 'package:task_management/feature/task/domain/model/update_task_input.dart';
import 'package:task_management/feature/task/domain/use_case/update_task_use_case.dart';

class UpdateTaskController extends ChangeNotifier {
  UpdateTaskController(this._updateTaskUseCase);

  final UpdateTaskUseCase _updateTaskUseCase;

  final Set<String> _map = {};

  String? _error;

  Set<String> get loadingIds => _map;
  String? get error => _error;

  Future<void> updateTask({
    required String id,
    required bool completed,
  }) async {
    _map.add(id);
    _error = null;
    notifyListeners();
    try {
      final input = UpdateTaskInput(
        id: id,
        description: const None(),
        title: const None(),
        isCompleted: Some(completed),
      );
      final result = await _updateTaskUseCase(input);
      result.fold(
        (l) {
          final message = switch (l) {
            InvalidTitleTaskFailure() => 'Title required',
            InvalidUpdateTaskDataFailure() => 'Please change a value',
          };
          _error = message;
        },
        (r) {
          _error = null;
        },
      );
    } catch (e) {
      _error = 'unknown error';
    } finally {
      _map.remove(id);
      notifyListeners();
    }
  }
}
