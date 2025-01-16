import 'package:dtt/api/models/house.dart';
import 'package:dtt/core/bloc/app_bloc/app_bloc.dart';
import 'package:dtt/ui/bottom_navigation/info/info_screen.dart';
import 'package:dtt/ui/bottom_navigation/main/presentation/main_screen.dart';
import 'package:dtt/ui/bottom_navigation/nested_navigation.dart';
import 'package:dtt/ui/detail/detail_screen.dart';
import 'package:dtt/ui/splash/presentation/splash_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final _navigatorKey = GlobalKey<NavigatorState>();

final _mainKey = GlobalKey<NavigatorState>();
final _infoKey = GlobalKey<NavigatorState>();

class AppRouter {
  AppRouter._();

  static const String splash = 'splash';
  static const String splashPath = '/';

  static const String main = 'main';
  static const String mainPath = '/main';

  static const String detail = 'detail';
  static const String detailPath = '/detail';

  static const String info = 'info';
  static const String infoPath = '/info';

  static GoRouter get router => _router;
  static final _router = GoRouter(
    initialLocation: splashPath,
    debugLogDiagnostics: kDebugMode,
    redirect: (context, state) async {
      final appBloc = context.read<AppBloc>();
      final lang = state.uri.queryParameters['lang'];
      if (lang != null && lang.isNotEmpty) {
        appBloc.add(AppEvent.localeChanged(locale: lang));
      }
      return null;
    },
    navigatorKey: _navigatorKey,
    routes: [
      GoRoute(
        path: splashPath,
        name: splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: detailPath,
        name: detail,
        builder: (context, state) {
          final house = state.extra! as House;
          return DetailScreen(house: house);
        },
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return NestedNavigation(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            navigatorKey: _mainKey,
            routes: [
              GoRoute(
                path: mainPath,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: MainScreen(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _infoKey,
            routes: [
              GoRoute(
                path: infoPath,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: InfoScreen(),
                ),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
