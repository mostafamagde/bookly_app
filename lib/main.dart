import 'package:flutter/material.dart';

import 'core/app_theme/app_theme_manager.dart';
import 'core/routes_manager/route_generator.dart';
import 'core/routes_manager/routes_names.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemeManager.mainTheme,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.generateRoutes,
    );
  }
}
