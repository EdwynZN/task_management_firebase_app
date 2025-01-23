part of 'task_domain_failure.dart';

sealed class UpdateTaskFailure implements DomainFailure {
  const UpdateTaskFailure();
}

final class InvalidUpdateTaskDataFailure implements UpdateTaskFailure {
  const InvalidUpdateTaskDataFailure();
}
