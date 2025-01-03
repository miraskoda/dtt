import 'dart:async';

import 'package:dtt/core/injector/injector.dart';
import 'package:dtt/services/local_storage_service/local_storage_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService implements LocalStorageService {
  SharedPreferencesService() {
    init();
  }
  late final SharedPreferences _pref;

  @override
  FutureOr<void> init() async {
    _pref = await SharedPreferences.getInstance();
    Injector.instance.signalReady(this);
  }

  @override
  Object? getValue({
    required String key,
  }) {
    return _pref.get(key);
  }

  @override
  FutureOr<void> setString({
    required String key,
    required String value,
  }) async {
    await _pref.setString(key, value);
  }

  @override
  FutureOr<void> setBool({
    required String key,
    required bool value,
  }) async {
    await _pref.setBool(key, value);
  }

  @override
  FutureOr<void> setStringList({
    required String key,
    required List<String> value,
  }) async {
    await _pref.setStringList(key, value);
  }

  @override
  bool? getBool({required String key}) {
    return _pref.getBool(key);
  }

  @override
  double? getDouble({required String key}) {
    return _pref.getDouble(key);
  }

  @override
  int? getInt({required String key}) {
    return _pref.getInt(key);
  }

  @override
  String? getString({required String key}) {
    return _pref.getString(key);
  }

  @override
  List<String>? getStringList({required String key}) {
    return _pref.getStringList(key);
  }

  @override
  FutureOr<bool> removeEntry({
    required String key,
  }) async {
    final bool result = await _pref.remove(key);
    return result;
  }
}
