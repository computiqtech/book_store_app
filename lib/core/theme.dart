import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme._();

  // Light Theme Colors.
  static Color lightBackgroundColor = const Color(0xffFDFDFD);
  static Color lightPrimaryColor = const Color(0xff06070D);
  static Color lightSecondaryColor = lightPrimaryColor.withOpacity(0.5);
  static Color lightTertiaryColor = const Color(0xff9C9EA8);
  static Color lightErrorColor = const Color(0xffe63946);

  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    backgroundColor: lightBackgroundColor,
    errorColor: lightErrorColor,
    primaryColor: lightPrimaryColor,
    textTheme: _textTheme,
    colorScheme: _colorScheme,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static final _textTheme = const TextTheme().copyWith();

  static final _colorScheme = ColorScheme.light(
    secondary: lightSecondaryColor,
    tertiary: lightTertiaryColor,
  );
}
