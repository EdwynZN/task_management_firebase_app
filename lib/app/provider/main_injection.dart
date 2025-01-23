import 'package:firebase_database/firebase_database.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:task_management/app/router/router.dart';
import 'package:task_management/app/style/theme_provider.dart';
import 'package:task_management/feature/task/domain/model/task.dart';
import 'package:task_management/feature/task/domain/task_repository.dart';
import 'package:task_management/feature/task/domain/task_repository_read.dart';
import 'package:task_management/feature/task/domain/use_case/create_task_use_case.dart';
import 'package:task_management/feature/task/domain/use_case/title_task_validation_use_case.dart';
import 'package:task_management/feature/task/domain/use_case/update_task_use_case.dart';
import 'package:task_management/feature/task/infrastructure/task_repository_impl.dart';
import 'package:task_management/feature/task/infrastructure/task_repository_read_impl.dart';

final List<SingleChildWidget> providers = [
  /// Repositories
  Provider<TaskRepositoryRead>(
    create: (_) => TaskRepositoryReadImpl(FirebaseDatabase.instance),
  ),
  Provider<TaskRepository>(
    create: (_) => TaskRepositoryImpl(FirebaseDatabase.instance.ref('tasks')),
  ),

  /// UseCases
  Provider(create: (_) => const TitleTaskValidationUseCase()),
  Provider(
    create: (context) => CreateTaskUseCase(
      taskRepository: context.read<TaskRepository>(),
      titleTaskValidationUseCase: context.read<TitleTaskValidationUseCase>(),
    ),
  ),
  Provider<UpdateTaskUseCase>(
    create: (context) => UpdateTaskUseCase(
      taskRepository: context.read<TaskRepository>(),
      titleTaskValidationUseCase: context.read<TitleTaskValidationUseCase>(),
    ),
  ),

  /// Services and Controllers
  ChangeNotifierProvider<ThemeNotifier>(create: (context) => ThemeNotifier()),
  Provider<GoRouter>(create: (context) => createRouter()),
  StreamProvider<List<Task>>(
    create: (context) => context.read<TaskRepositoryRead>().getTasks(),
    initialData: [],
  ),
];
