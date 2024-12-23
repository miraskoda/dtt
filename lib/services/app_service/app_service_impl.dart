import 'dart:ui';

import 'package:dtt/core/app_config.dart';
import 'package:flutter/scheduler.dart';

import '../../../core/keys/app_keys.dart';
import '../local_storage_service/local_storage_service.dart';
import 'app_service.dart';

class AppServiceImpl implements AppService {
  AppServiceImpl({
    required LocalStorageService localStorageService,
  }) : _localStorageService = localStorageService;
  late final LocalStorageService _localStorageService;

  @override
  bool get isDarkMode =>
      _localStorageService.getBool(key: AppKeys.darkModeKey) ??
      SchedulerBinding.instance.platformDispatcher.platformBrightness == Brightness.dark;

  @override
  String get locale => _localStorageService.getString(key: AppKeys.localeKey) ?? AppConfig.defaultLocale;

  @override
  Future<void> setIsDarkMode({required bool darkMode}) async {
    return _localStorageService.setValue(
      key: AppKeys.darkModeKey,
      value: darkMode,
    );
  }

  @override
  Future<void> setLocale({required String locale}) async {
    return _localStorageService.setValue(
      key: AppKeys.localeKey,
      value: locale,
    );
  }
}
