import 'dart:async';

import 'package:dtt/app.dart';
import 'package:dtt/core/bloc_core/bloc_observer.dart';
import 'package:dtt/core/injector/injector.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

Future<void> bootstrap({
  AsyncCallback? callbackInitialization,
}) async {
  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();

    await callbackInitialization?.call();
    // ignore: deprecated_member_use
    Logger.level = Level.verbose;

    Injector.init();

    await Injector.instance.allReady();

    Bloc.observer = AppBlocObserver();

    runApp(const App());
  }, (error, stack) {
    // TO-DO crashlytics
  });
}
