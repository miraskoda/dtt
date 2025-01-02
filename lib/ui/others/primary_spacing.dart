import 'package:dtt/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PrimarySpacing extends StatelessWidget {
  /// 2px spacing
  const PrimarySpacing.gapXxs({
    Key? key,
  }) : this._(AppConstants.kTinySpacing, key: key);

  /// 4px spacing
  const PrimarySpacing.gapXs({
    Key? key,
  }) : this._(AppConstants.kXSmallSpacing, key: key);

  /// 8px spacing
  const PrimarySpacing.gapSm({
    Key? key,
  }) : this._(AppConstants.kSmallSpacing, key: key);

  /// 16px spacing
  const PrimarySpacing.gapMd({
    Key? key,
  }) : this._(AppConstants.kDefaultSpacing, key: key);

  /// 32px spacing
  const PrimarySpacing.gapLg({
    Key? key,
  }) : this._(AppConstants.kLargeSpacing, key: key);

  /// 48px spacing
  const PrimarySpacing.gapXl({
    Key? key,
  }) : this._(AppConstants.kXLargeSpacing, key: key);

  /// 64px spacing
  const PrimarySpacing.gapXxl({
    Key? key,
  }) : this._(AppConstants.kHugeSpacing, key: key);

  const PrimarySpacing._(
    this.gap, {
    super.key,
  });

  final double gap;

  @override
  Widget build(BuildContext context) {
    return Gap(gap);
  }
}
