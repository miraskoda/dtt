import 'package:dtt/core/injector/modules/bloc_module.dart';
import 'package:get_it/get_it.dart';

import 'modules/dio_module.dart';
import 'modules/repository_module.dart';
import 'modules/service_module.dart';

class Injector {
  Injector._();
  static GetIt instance = GetIt.instance;

  static void init() {
    DioModule.setup();
    ServiceModule.init();
    RepositoryModule.init();
    BlocModule.init();
  }

  static void reset() {
    instance.reset();
  }

  static void resetLazySingleton() {
    instance.resetLazySingleton();
  }
}
