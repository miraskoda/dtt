import 'package:dtt/core/constants/constants.dart';
import 'package:dtt/theme/app_themes.dart';
import 'package:dtt/ui/others/primary_padding.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class PrimaryShimmer extends StatelessWidget {
  /// General DTT shimmer for item
  const PrimaryShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppThemes.brandDarkGray,
      highlightColor: AppThemes.brandLightGray,
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (_, index) {
          return PrimaryPadding.sm(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppConstants.kNormalBorderRadius),
              ),
              child: const SizedBox(
                height: AppConstants.kRealEstateImageSize + (AppConstants.kDefaultSpacing * 2),
              ),
            ),
          );
        },
      ),
    );
  }
}
