import 'package:dtt/core/injector/injector.dart';
import 'package:dtt/generated/assets.gen.dart';
import 'package:dtt/generated/l10n.dart';
import 'package:dtt/ui/bottom_navigation/main/application/main_screen_bloc.dart';
import 'package:flutter/material.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({
    required this.isFavorite,
    super.key,
  });
  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Injector.instance<MainScreenBloc>().add(MainScreenEvent.init(isFavorite: isFavorite));
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.images.searchStateEmpty.image(width: MediaQuery.of(context).size.width / 2),
          Text(
            S.of(context).emptyResult,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
