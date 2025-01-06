import 'package:responsive_framework/responsive_framework.dart';

class AppConstants {
  AppConstants._();

  // Spacings
  static const kDefaultSpacing = 16.0;
  static const kSmallSpacing = 8.0;
  static const kLargeSpacing = 32.0;
  static const kXSmallSpacing = 4.0;
  static const kXLargeSpacing = 48.0;

  // Specific spacings
  static const kTinySpacing = 2.0;
  static const kHugeSpacing = 64.0;
  static const kContentPadding = 12.0;

  // App border radius
  static const kNormalBorderRadius = 8.0;
  static const kLargeBorderRadius = 16.0;

  // Image real estate size
  static const kRealEstateImageSize = 80.0;
}

class Breakpoints {
  static const List<Breakpoint> all = [
    Breakpoint(start: 0, end: 450, name: MOBILE),
    Breakpoint(start: 451, end: 800, name: TABLET),
    Breakpoint(start: 801, end: 1920, name: DESKTOP),
    Breakpoint(start: 1921, end: double.infinity, name: '4K'),
  ];
}
