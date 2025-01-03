import 'package:dtt/core/injector/injector.dart';
import 'package:dtt/services/app_service/app_service.dart';
import 'package:dtt/services/app_service/app_service_impl.dart';
import 'package:dtt/services/crashlytics_service/crashlytics_service.dart';
import 'package:dtt/services/crashlytics_service/firebase_crashlytics_service.dart';
import 'package:dtt/services/local_storage_service/local_storage_service.dart';
import 'package:dtt/services/local_storage_service/shared_preferences_service.dart';
import 'package:dtt/services/location_service/location_service.dart';
import 'package:dtt/services/location_service/location_service_impl.dart';
import 'package:dtt/services/log_service/debug_log_service.dart';
import 'package:dtt/services/log_service/log_service.dart';

class ServiceModule {
  ServiceModule._();

  static void init() {
    final injector = Injector.instance;

    injector
      ..registerFactory<LogService>(DebugLogService.new)
      ..registerSingleton<LocalStorageService>(
        SharedPreferencesService(),
        signalsReady: true,
      )
      ..registerSingletonAsync<CrashlyticsService>(() async {
        return FirebaseCrashlyticsService();
      })
      ..registerSingleton<AppService>(
        AppServiceImpl(
          localStorageService: injector(),
        ),
      )
      ..registerSingleton<LocationService>(LocationServiceImpl());
  }
}
