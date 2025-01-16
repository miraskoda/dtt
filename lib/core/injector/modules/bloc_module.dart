import 'package:dtt/core/bloc/app_bloc/app_bloc.dart';
import 'package:dtt/core/bloc/house_bloc/house_bloc.dart';
import 'package:dtt/core/bloc/location_bloc/location_bloc.dart';
import 'package:dtt/core/injector/injector.dart';

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
      ..registerLazySingleton<HouseBloc>(
        () => HouseBloc(
          apiRepository: injector(),
        ),
      )
      ..registerLazySingleton<LocationBloc>(
        () => LocationBloc(
          locationService: injector(),
        ),
      );
  }
}
