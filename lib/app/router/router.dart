import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task_management/common/router/router_names.dart';
import 'package:task_management/page/home_page.dart';

GoRouter createRouter() {
  return GoRouter(
    debugLogDiagnostics: kDebugMode,
    errorBuilder: (context, __) => Material(
      child: Center(
        child: Text(
          '404',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    ),
    routerNeglect: true,
    initialLocation: '/',
    observers: const [],
    routes: [
      GoRoute(
        name: RouterNames.home,
        path: '/',
        builder: (_, __) => const HomePage(),
      ),
    ],
  );
}