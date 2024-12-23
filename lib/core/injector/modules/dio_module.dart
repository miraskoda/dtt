import 'package:dio/dio.dart';
import 'package:dtt/core/app_config.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../interceptors/token_interceptor.dart';
import '../injector.dart';

class DioModule {
  DioModule._();

  static final GetIt _injector = Injector.instance;

  static void setup() {
    _setupDio();
  }

  static void _setupDio() {
    /// Dio
    _injector.registerLazySingleton<Dio>(
      () {
        final Dio dio = Dio(
          BaseOptions(
            baseUrl: AppConfig.baseUrl,
          ),
        );
        if (!kReleaseMode) {
          dio.interceptors
            ..add(
              PrettyDioLogger(
                requestHeader: true,
                requestBody: true,
                responseHeader: true,
                request: false,
              ),
            )
            ..add(TokenInterceptor(dio));
        }
        return dio;
      },
    );
  }
}
