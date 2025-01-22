import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:task_management/app/router/router.dart';
import 'package:task_management/app/style/theme_provider.dart';

final List<SingleChildWidget> providers = [
  ChangeNotifierProvider<ThemeNotifier>(create: (context) => ThemeNotifier()),
  Provider<GoRouter>(create: (context) => createRouter()),
];
