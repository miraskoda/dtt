import 'package:dtt/api/client/api_client.dart' if (dart.library.html) 'package:dtt/api/client/api_client_fake.dart'
    as mp;
import 'package:dtt/api/repository/api_repository.dart';
import 'package:dtt/core/injector/injector.dart';

class RepositoryModule {
  RepositoryModule._();

  static void init() {
    final injector = Injector.instance;

    injector
      ..registerLazySingleton<mp.ApiClient>(() => mp.ApiClient(injector()))
      ..registerLazySingleton<ApiRepository>(() => ApiRepositoryImpl(injector()));
  }
}
