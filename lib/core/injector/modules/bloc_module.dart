import 'package:dtt/core/bloc/app_bloc.dart';
import 'package:dtt/core/injector/injector.dart';
import 'package:dtt/core/keys/app_keys.dart';
import 'package:dtt/ui/bottom_navigation/main/application/main_screen_bloc.dart';

class BlocModule {
  BlocModule._();

  static void init() {
    final injector = Injector.instance;

    injector
      ..registerLazySingleton<AppBloc>(
        () => AppBloc(
          appService: injector(),
          logService: injector(),
        ),
      )
      ..registerLazySingleton<MainScreenBloc>(
        () => MainScreenBloc(
          apiRepository: injector(),
          locationService: injector(),
          localStorageService: injector(),
        ),
      )
      ..registerLazySingleton<MainScreenBloc>(
        () => MainScreenBloc(
          apiRepository: injector(),
          locationService: injector(),
          localStorageService: injector(),
        ),
        instanceName: AppKeys.favConst,
      );
  }
}
