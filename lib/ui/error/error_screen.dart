import 'package:dtt/core/injector/injector.dart';
import 'package:dtt/generated/assets.gen.dart';
import 'package:dtt/ui/bottom_navigation/main/application/main_screen_bloc.dart';
import 'package:dtt/ui/others/primary_spacing.dart';
import 'package:flutter/material.dart';

class ErrorScreen extends StatefulWidget {
  const ErrorScreen(
    this.error, {
    required this.isFavorite,
    super.key,
  });
  final String error;
  final bool isFavorite;

  @override
  State<ErrorScreen> createState() => _ErrorScreenState();
}

class _ErrorScreenState extends State<ErrorScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Injector.instance<MainScreenBloc>().add(MainScreenEvent.init(isFavorite: widget.isFavorite));
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: Assets.images.connectionError.image(),
          ),
          const PrimarySpacing.gapMd(),
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.2,
            child: Text(
              widget.error,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
