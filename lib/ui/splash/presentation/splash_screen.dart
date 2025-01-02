import 'package:dtt/core/router/app_router.dart';
import 'package:dtt/generated/assets.gen.dart';
import 'package:dtt/theme/app_themes.dart';
import 'package:dtt/ui/splash/application/splash_screen_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SplashScreenBloc()..add(const Start()),
      child: BlocListener<SplashScreenBloc, SplashScreenState>(
        listener: (context, state) {
          if (state is MainPage) {
            context.go(AppRouter.mainPath);
          }
        },
        child: Scaffold(
          backgroundColor: AppThemes.brandRedColor,
          body: Center(
            child: Assets.icons.icDtt.svg(),
          ),
        ),
      ),
    );
  }
}
