import 'package:dtt/api/client/api_client.dart';
import 'package:dtt/api/repository/api_repository.dart';
import 'package:dtt/core/injector/injector.dart';

class RepositoryModule {
  RepositoryModule._();

  static void init() {
    final injector = Injector.instance;

    injector
      ..registerLazySingleton<ApiClient>(() => ApiClient(injector()))
      ..registerLazySingleton<ApiRepository>(() => ApiRepositoryImpl(injector()));
  }
}
