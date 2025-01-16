import 'package:dtt/generated/assets.gen.dart';
import 'package:dtt/generated/l10n.dart';
import 'package:flutter/material.dart';

class EmptyScreen extends StatelessWidget {
  /// Generic empty screen for reuse
  const EmptyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Assets.images.searchStateEmpty.image(width: MediaQuery.of(context).size.width / 2),
        Text(
          S.of(context).emptyResult,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
