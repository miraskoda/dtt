import 'package:dtt/core/injector/modules/bloc_module.dart';
import 'package:dtt/core/injector/modules/dio_module.dart';
import 'package:dtt/core/injector/modules/repository_module.dart';
import 'package:dtt/core/injector/modules/service_module.dart';
import 'package:get_it/get_it.dart';

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
