import 'package:dtt/core/constants/constants.dart';
import 'package:dtt/generated/assets.gen.dart';
import 'package:dtt/ui/others/primary_spacing.dart';
import 'package:flutter/material.dart';

class BuildIconWithText extends StatelessWidget {
  /// DTT icon with small belonging text as a label for DTT house item
  const BuildIconWithText({
    required this.icon,
    required this.text,
    super.key,
  });
  final SvgGenImage icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return buildIconWithText(icon, text, context);
  }

  Widget buildIconWithText(SvgGenImage icon, String text, BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        icon.svg(colorFilter: _iconColorFilter(context), width: AppConstants.kDefaultSpacing),
        const PrimarySpacing.gapXxs(),
        Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }

  ColorFilter _iconColorFilter(BuildContext context) {
    return ColorFilter.mode(
      Theme.of(context).iconTheme.color!.withAlpha(128),
      BlendMode.srcIn,
    );
  }
}
