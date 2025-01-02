import 'package:dtt/generated/assets.gen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE34A32), // Barva pozadí
      body: Assets.icons.icDtt.svg(),
    );
  }
}
