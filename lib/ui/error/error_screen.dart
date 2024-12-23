import 'package:flutter/material.dart';

class ErrorScreen extends StatefulWidget {
  final String error;
  const ErrorScreen(this.error, {super.key});

  @override
  State<ErrorScreen> createState() => _ErrorScreenState();
}

class _ErrorScreenState extends State<ErrorScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
