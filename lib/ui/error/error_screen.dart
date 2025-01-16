import 'package:dtt/core/bloc/house_bloc/house_bloc.dart';
import 'package:dtt/core/injector/injector.dart';
import 'package:dtt/generated/assets.gen.dart';
import 'package:dtt/ui/others/primary_spacing.dart';
import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen(this.error, {super.key});
  final String error;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Injector.instance<HouseBloc>().add(const HouseEvent.init());
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
              error,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
