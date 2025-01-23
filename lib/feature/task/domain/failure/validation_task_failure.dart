part of 'task_domain_failure.dart';

final class InvalidTitleTaskFailure
    implements CreateTaskFailure, UpdateTaskFailure {
  const InvalidTitleTaskFailure(this.title);

  final String? title;
}
