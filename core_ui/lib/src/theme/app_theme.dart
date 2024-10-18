import 'package:flutter/material.dart';

import '../../core_ui.dart';

const LightColors _appColors = LightColors();

final ThemeData lightTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: _appColors.white,
  cardTheme: CardTheme(
    color: _appColors.secondaryBg,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppDimens.BORDER_RADIUS_18),
    ),
  ),
  indicatorColor: _appColors.secondaryBg,
  appBarTheme: AppBarTheme(
    backgroundColor: _appColors.secondaryBg,
    foregroundColor: _appColors.white,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: _appColors.secondaryBg,
  ),
  textTheme: _getTextTheme(),
  inputDecorationTheme: _getInputDecorationTheme(),
  primaryColor: _appColors.primaryBg,
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: _appColors.primaryBg,
    primary: _appColors.primaryBg,
  ),
);

TextTheme _getTextTheme() {
  return TextTheme(
    titleMedium: AppFonts.normal13,
    bodyMedium: AppFonts.normal13,
  ).apply(
    bodyColor: _appColors.secondaryBg,
    displayColor: _appColors.primaryBg,
  );
}

InputDecorationTheme _getInputDecorationTheme() {
  return InputDecorationTheme(
    hintStyle: AppFonts.normal13.copyWith(color: _appColors.primaryBg),
    border: OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(AppDimens.BORDER_RADIUS_12),
      ),
      borderSide: BorderSide(
        color: _appColors.primaryBg,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(AppDimens.BORDER_RADIUS_12),
      ),
      borderSide: BorderSide(
        color: _appColors.primaryBg,
        width: 2,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(AppDimens.BORDER_RADIUS_6),
      ),
      borderSide: BorderSide(
        color: _appColors.primaryBg,
        width: 2,
      ),
    ),
    labelStyle: AppFonts.normal13.copyWith(color: _appColors.primaryBg),
  );
}
