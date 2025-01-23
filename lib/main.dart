import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:task_management/app/style/theme_provider.dart';
import 'package:task_management/app/provider/main_injection.dart';
import 'package:task_management/firebase_options.dart';

void main() async {
  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    FirebaseDatabase.instance
      ..useDatabaseEmulator('localhost', 9000)
      ..setPersistenceEnabled(true);
    
    runApp(const MainApp());
  }, (error, stackTrace) {
    debugPrintStack(stackTrace: stackTrace, label: error.toString());
  });
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      builder: (context, _) {
        final themeNotifier = context.watch<ThemeNotifier>();
        return MaterialApp.router(
          routerConfig: context.watch<GoRouter>(),
          theme: themeNotifier.light,
          darkTheme: themeNotifier.dark,
          themeMode: themeNotifier.mode,
        );
      },
    );
  }
}
