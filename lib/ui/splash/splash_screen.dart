import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE34A32), // Barva pozadí
      body: Center(
        child: Icon(
          Icons.clear, // Můžeš vyměnit za vlastní obrázek
          size: 100,
          color: Colors.white,
        ),
      ),
    );
  }
}
