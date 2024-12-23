import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

import '../../network/network_info.dart';
import '../injector.dart';

class RepositoryModule {
  RepositoryModule._();

  static void init() {
    final injector = Injector.instance;

    injector
        .registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(injector()));

    injector.registerLazySingleton(InternetConnection.new);
  }
}
