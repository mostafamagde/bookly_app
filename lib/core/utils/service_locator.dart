import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home_view/data/repos/home_repo_imp.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

class ServiceLocator {
  static var getIt = GetIt.instance;

  static void setup() {
    getIt.registerSingleton<Dio>(Dio());
    getIt.registerSingleton<ApiService>(ApiService(getIt.get<Dio>()));
    getIt.registerSingleton<HomeRepoImp>(HomeRepoImp(getIt.get<ApiService>()));
  }
}
