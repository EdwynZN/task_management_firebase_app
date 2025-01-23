import 'package:firebase_database/firebase_database.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:task_management/app/router/router.dart';
import 'package:task_management/app/style/theme_provider.dart';
import 'package:task_management/feature/task/domain/model/task.dart';
import 'package:task_management/feature/task/domain/task_repository_read.dart';
import 'package:task_management/feature/task/infrastructure/task_repository_read_impl.dart';

final List<SingleChildWidget> providers = [
  /// Repositories
  Provider<TaskRepositoryRead>(create: (_) => TaskRepositoryReadImpl(FirebaseDatabase.instance),),
  /// 
  ChangeNotifierProvider<ThemeNotifier>(create: (context) => ThemeNotifier()),
  Provider<GoRouter>(create: (context) => createRouter()),
  StreamProvider<List<Task>>(
    create: (context) => context.read<TaskRepositoryRead>().getTasks(),
    initialData: [],
  ),
];
