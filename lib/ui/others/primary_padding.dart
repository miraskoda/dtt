import 'package:dtt/core/constants/constants.dart';
import 'package:flutter/material.dart';

class PrimaryPadding extends StatelessWidget {
  const PrimaryPadding.xxs({
    bool top = true,
    bool bottom = true,
    bool left = true,
    bool right = true,
    required Widget child,
    Key? key,
  }) : this._(AppConstants.kTinySpacing, child, key: key, top: top, bottom: bottom, left: left, right: right);

  const PrimaryPadding.xs({
    bool top = true,
    bool bottom = true,
    bool left = true,
    bool right = true,
    required Widget child,
    Key? key,
  }) : this._(AppConstants.kXSmallSpacing, child, key: key, top: top, bottom: bottom, left: left, right: right);

  const PrimaryPadding.sm({
    bool top = true,
    bool bottom = true,
    bool left = true,
    bool right = true,
    required Widget child,
    Key? key,
  }) : this._(AppConstants.kSmallSpacing, child, key: key, top: top, bottom: bottom, left: left, right: right);

  const PrimaryPadding.md({
    bool top = true,
    bool bottom = true,
    bool left = true,
    bool right = true,
    required Widget child,
    Key? key,
  }) : this._(AppConstants.kDefaultSpacing, child, key: key, top: top, bottom: bottom, left: left, right: right);

  const PrimaryPadding.lg({
    bool top = true,
    bool bottom = true,
    bool left = true,
    bool right = true,
    required Widget child,
    Key? key,
  }) : this._(AppConstants.kLargeSpacing, child, key: key, top: top, bottom: bottom, left: left, right: right);

  const PrimaryPadding.xl({
    bool top = true,
    bool bottom = true,
    bool left = true,
    bool right = true,
    required Widget child,
    Key? key,
  }) : this._(AppConstants.kXLargeSpacing, child, key: key, top: top, bottom: bottom, left: left, right: right);

  const PrimaryPadding.xxl({
    bool top = true,
    bool bottom = true,
    bool left = true,
    bool right = true,
    required Widget child,
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
