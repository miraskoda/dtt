import 'package:dtt/generated/fonts.gen.dart';
import 'package:flutter/material.dart';

class AppThemes {
  AppThemes._();

  //Primary
  static const Color brandRedColor = Color(0xFFE65541);
  static const Color brandWhiteColor = Color(0xffffffff);
  static const Color brandLightGray = Color(0xFFf7f7f7);
  static const Color brandDarkGray = Color(0xFFEBEBEB);
  static const Color brandStrongColor = Color(0xCC000000);
  static const Color brandMediumColor = Color(0x66000000);
  static const Color brandLightColor = Color(0x33000000);

  static const Color _lightPrimaryColor = Color(0xffF2F2FF);
  static const Color _darkPrimaryColor = Color(0xFF1a222d);

  //Background
  static const Color _lightBackgroundColor = Color(0xfff1f1fe);
  static const Color _darkBackgroundColor = Color(0xff161925);

  //Text
  static const Color _lightTextColor = Color(0xff000000);
  static const Color _darkTextColor = Color(0xffffffff);

  //Icon
  static const Color _lightIconColor = Color(0xff000000);
  static const Color _darkIconColor = Color(0xffffffff);

  //Text themes
  static const TextTheme _lightTextTheme = TextTheme(
    displayLarge: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
      color: _lightTextColor,
    ), // Title 01
    displayMedium: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
      color: _lightTextColor,
    ), // Title 02
    displaySmall: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: _lightTextColor,
    ), // Title 03
    bodyLarge: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: _lightTextColor,
    ), // Body
    bodyMedium: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w300,
      color: _lightTextColor,
    ), // Input
    bodySmall: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: _lightTextColor,
    ), // Hint / Detail
    titleMedium: TextStyle(
      fontSize: 10.0,
      fontWeight: FontWeight.normal,
      color: _lightTextColor,
    ), // Subtitle
  );

  static const TextTheme _darkTextTheme = TextTheme(
    displayLarge: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
      color: _darkTextColor,
    ), // Title 01
    displayMedium: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
      color: _darkTextColor,
    ), // Title 02
    displaySmall: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: _darkTextColor,
    ), // Title 03
    bodyLarge: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: _darkTextColor,
    ), // Body
    bodyMedium: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w300,
      color: _darkTextColor,
    ), // Input
    bodySmall: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: _darkTextColor,
    ), // Hint / Detail
    titleMedium: TextStyle(
      fontSize: 10.0,
      fontWeight: FontWeight.normal,
      color: _darkTextColor,
    ), // Subtitle
  );

  ///Light theme
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    listTileTheme: const ListTileThemeData(
      tileColor: Colors.white,
      selectedColor: Colors.white,
      selectedTileColor: brandRedColor,
    ),
    sliderTheme: SliderThemeData(
      showValueIndicator: ShowValueIndicator.always,
      activeTrackColor: brandRedColor,
      inactiveTrackColor: brandRedColor.withOpacity(0.3),
      thumbColor: brandRedColor,
      overlayColor: brandRedColor.withOpacity(0.3),
      valueIndicatorColor: brandRedColor,
      valueIndicatorTextStyle: const TextStyle(
        color: Colors.white,
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      checkColor: WidgetStateProperty.all(Colors.white),
      fillColor: WidgetStateProperty.all(brandRedColor),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.all(brandRedColor),
      trackColor: WidgetStateProperty.all(brandRedColor.withOpacity(0.3)),
    ),
    radioTheme: RadioThemeData(fillColor: WidgetStateProperty.all(brandRedColor)),
    unselectedWidgetColor: Colors.black54,
    progressIndicatorTheme: const ProgressIndicatorThemeData(color: brandRedColor),
    brightness: Brightness.light,
    primaryColor: _lightPrimaryColor,
    scaffoldBackgroundColor: _lightBackgroundColor,
    navigationBarTheme: NavigationBarThemeData(
      height: 40,
      backgroundColor: Colors.white,
      indicatorColor: Colors.transparent,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
    ),
    appBarTheme: AppBarTheme(
      color: _lightBackgroundColor,
      iconTheme: const IconThemeData(color: _lightIconColor),
      toolbarTextStyle: _lightTextTheme.bodyMedium,
      titleTextStyle: _lightTextTheme.titleLarge,
    ),
    iconTheme: const IconThemeData(
      color: _lightIconColor,
    ),
    textTheme: _lightTextTheme,
    fontFamily: FontFamily.gothamSSm,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: brandRedColor,
      selectionColor: brandRedColor,
      selectionHandleColor: brandRedColor,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      labelStyle: TextStyle(
        color: brandRedColor,
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: brandRedColor,
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: brandRedColor,
        minimumSize: const Size.fromHeight(50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
    dividerTheme: const DividerThemeData(
      color: Colors.grey,
    ),
  );

  ///Dark theme
  static final ThemeData darkTheme = ThemeData(
    listTileTheme: const ListTileThemeData(
      tileColor: brandLightColor,
      selectedColor: Colors.white,
      selectedTileColor: brandLightColor,
    ),
    sliderTheme: SliderThemeData(
      showValueIndicator: ShowValueIndicator.always,
      activeTrackColor: brandRedColor,
      inactiveTrackColor: brandRedColor.withOpacity(0.3),
      thumbColor: brandRedColor,
      overlayColor: brandRedColor.withOpacity(0.3),
      valueIndicatorColor: brandRedColor,
      valueIndicatorTextStyle: const TextStyle(
        color: Colors.white,
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      checkColor: WidgetStateProperty.all(Colors.white),
      fillColor: WidgetStateProperty.all(brandRedColor),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.all(brandLightGray),
      trackColor: WidgetStateProperty.all(brandLightGray.withOpacity(0.3)),
    ),
    navigationBarTheme: NavigationBarThemeData(
      indicatorColor: Colors.transparent,
      height: 40,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
    ),
    radioTheme: RadioThemeData(fillColor: WidgetStateProperty.all(brandRedColor)),
    unselectedWidgetColor: Colors.white,
    progressIndicatorTheme: const ProgressIndicatorThemeData(color: brandRedColor),
    brightness: Brightness.dark,
    primaryColor: _darkPrimaryColor,
    scaffoldBackgroundColor: _darkBackgroundColor,
    appBarTheme: AppBarTheme(
      color: _darkBackgroundColor,
      iconTheme: const IconThemeData(color: _darkIconColor),
      toolbarTextStyle: _darkTextTheme.bodyMedium,
      titleTextStyle: _darkTextTheme.titleLarge,
    ),
    iconTheme: const IconThemeData(
      color: _darkIconColor,
    ),
    fontFamily: FontFamily.gothamSSm,
    textTheme: _darkTextTheme,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: brandRedColor,
      selectionColor: brandRedColor,
      selectionHandleColor: brandRedColor,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      labelStyle: TextStyle(
        color: brandRedColor,
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: brandRedColor,
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: _lightPrimaryColor,
        backgroundColor: brandRedColor,
        minimumSize: const Size.fromHeight(50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
    dividerTheme: const DividerThemeData(
      color: Colors.grey,
    ),
  );
}
