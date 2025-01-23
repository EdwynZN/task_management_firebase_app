import 'package:fpdart/fpdart.dart';
import 'package:task_management/feature/task/domain/failure/task_domain_failure.dart';
import 'package:task_management/feature/task/domain/model/task.dart' as t;
import 'package:task_management/feature/task/domain/model/update_task_input.dart';
import 'package:task_management/feature/task/domain/task_repository.dart';
import 'package:task_management/feature/task/domain/use_case/title_task_validation_use_case.dart';

class UpdateTaskUseCase {
  UpdateTaskUseCase({
    required TaskRepository taskRepository,
    required TitleTaskValidationUseCase titleTaskValidationUseCase,
  })  : _repository = taskRepository,
        _titleTaskValidationUseCase = titleTaskValidationUseCase;

  final TitleTaskValidationUseCase _titleTaskValidationUseCase;
  final TaskRepository _repository;

  Future<Either<UpdateTaskFailure, t.Task>> call(UpdateTaskInput input) async {
    if (input.title case Some(:final value)
        when !_titleTaskValidationUseCase(value)) {
      return Left(InvalidTitleTaskFailure(value));
    } else if (<Option>[input.title, input.description, input.isCompleted]
        .every((s) => s.isNone())) {
      return const Left(InvalidUpdateTaskDataFailure());
    }
    final result = await _repository.updateTask(input);
    return Right(result);
  }
}
