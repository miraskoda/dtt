import 'package:dtt/core/constants/constants.dart';
import 'package:flutter/material.dart';

class PrimaryPadding extends StatelessWidget {
  /// 2px padding
  const PrimaryPadding.xxs({
    required Widget child,
    bool top = true,
    bool bottom = true,
    bool left = true,
    bool right = true,
    Key? key,
  }) : this._(AppConstants.kTinySpacing, child, key: key, top: top, bottom: bottom, left: left, right: right);

  /// 4px padding
  const PrimaryPadding.xs({
    required Widget child,
    bool top = true,
    bool bottom = true,
    bool left = true,
    bool right = true,
    Key? key,
  }) : this._(AppConstants.kXSmallSpacing, child, key: key, top: top, bottom: bottom, left: left, right: right);

  /// 8px padding
  const PrimaryPadding.sm({
    required Widget child,
    bool top = true,
    bool bottom = true,
    bool left = true,
    bool right = true,
    Key? key,
  }) : this._(AppConstants.kSmallSpacing, child, key: key, top: top, bottom: bottom, left: left, right: right);

  /// 16 px padding
  const PrimaryPadding.md({
    required Widget child,
    bool top = true,
    bool bottom = true,
    bool left = true,
    bool right = true,
    Key? key,
  }) : this._(AppConstants.kDefaultSpacing, child, key: key, top: top, bottom: bottom, left: left, right: right);

  /// 32 px padding
  const PrimaryPadding.lg({
    required Widget child,
    bool top = true,
    bool bottom = true,
    bool left = true,
    bool right = true,
    Key? key,
  }) : this._(AppConstants.kLargeSpacing, child, key: key, top: top, bottom: bottom, left: left, right: right);

  /// 48 px padding
  const PrimaryPadding.xl({
    required Widget child,
    bool top = true,
    bool bottom = true,
    bool left = true,
    bool right = true,
    Key? key,
  }) : this._(AppConstants.kXLargeSpacing, child, key: key, top: top, bottom: bottom, left: left, right: right);

  /// 64 px padding
  const PrimaryPadding.xxl({
    required Widget child,
    bool top = true,
    bool bottom = true,
    bool left = true,
    bool right = true,
    Key? key,
  }) : this._(AppConstants.kHugeSpacing, child, key: key, top: top, bottom: bottom, left: left, right: right);

  const PrimaryPadding._(
    this.size,
    this.child, {
    super.key,
    this.top = true,
    this.bottom = true,
    this.left = true,
    this.right = true,
  });

  final double size;
  final Widget child;
  final bool top;
  final bool bottom;
  final bool left;
  final bool right;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: top ? size : 0,
        bottom: bottom ? size : 0,
        left: left ? size : 0,
        right: right ? size : 0,
      ),
      child: child,
    );
  }
}
