import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

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
    return GetMaterialApp(
      theme: AppThemeManager.mainTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesNames.splashView,
      onGenerateRoute: RouteGenerator.generateRoutes,
    );
  }
}
