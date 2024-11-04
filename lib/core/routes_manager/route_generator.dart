import 'package:bookly_app/core/routes_manager/routes_names.dart';
import 'package:bookly_app/features/splash_view/presentaion/views/splash.dart';

import 'package:flutter/material.dart';

import '../../features/home_view/presentation/views/home_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RoutesNames.splashView:
        return MaterialPageRoute(
          builder: (context) => const Splash(),
          settings: settings,
        );

      case RoutesNames.homeView:
        return MaterialPageRoute(
          builder: (context) => const HomeView(),
          settings: settings,
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const Splash(),
          settings: settings,
        );
    }
  }
}
