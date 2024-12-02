import 'package:bookly_app/features/home_view/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/app_theme/app_theme_manager.dart';
import 'core/routes_manager/route_generator.dart';
import 'core/routes_manager/routes_names.dart';
import 'core/utils/service_locator.dart';
import 'features/home_view/data/repos/home_repo_imp.dart';
import 'features/home_view/presentation/manager/featured_books_cubit/featured_books_cubit.dart';

void main() {
  ServiceLocator.setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeaturedBooksCubit(ServiceLocator.getIt.get<HomeRepoImp>())
                ..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) =>
              NewestBooksCubit(ServiceLocator.getIt.get<HomeRepoImp>())
                ..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp(
        theme: AppThemeManager.mainTheme,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteGenerator.generateRoutes,
      ),
    );
  }
}
