import 'package:fpdart/fpdart.dart';
import 'package:task_management/feature/task/domain/failure/task_domain_failure.dart';
import 'package:task_management/feature/task/domain/model/create_task_input.dart';
import 'package:task_management/feature/task/domain/model/task.dart' as t;
import 'package:task_management/feature/task/domain/task_repository.dart';
import 'package:task_management/feature/task/domain/use_case/title_task_validation_use_case.dart';

class CreateTaskUseCase {
  CreateTaskUseCase({
    required TaskRepository taskRepository,
    required TitleTaskValidationUseCase titleTaskValidationUseCase,
  })  : _repository = taskRepository,
        _titleTaskValidationUseCase = titleTaskValidationUseCase;

  final TitleTaskValidationUseCase _titleTaskValidationUseCase;
  final TaskRepository _repository;

  Future<Either<CreateTaskFailure, t.Task>> call(CreateTaskInput input) async {
    if (!_titleTaskValidationUseCase(input.title)) {
      return Left(InvalidTitleTaskFailure(input.title));
    }
    final result = await _repository.addTask(input);
    return Right(result);
  }
}
