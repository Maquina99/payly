import 'package:flutter/material.dart';
import 'package:payly_test/utils/theme/custom_themes/text_theme.dart';
import 'custom_themes/appbar_theme.dart';
import 'custom_themes/bottom_sheet_theme.dart';
import 'custom_themes/checkbox_theme.dart';
import 'custom_themes/chip_theme.dart';
import 'custom_themes/elevated_button_theme.dart';
import 'custom_themes/outlined_button_theme.dart';
import 'custom_themes/text_field_theme.dart';

class YappTheme {
  YappTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: Colors.green,
      textTheme: YTextTheme.lightTextTheme,
      chipTheme: YChipTheme.lightChipTheme,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: YAppBarTheme.lightAppBarTheme,
      checkboxTheme: YCheckboxTheme.lightCheckboxTheme,
      bottomSheetTheme: YBottomSheetTheme.lightBottomSheetTheme,
      elevatedButtonTheme: YElevatedButtonTheme.lightElevatedButtonTheme,
      outlinedButtonTheme: YOutlinedButtonTheme.lightOutlinedButtonTheme,
      inputDecorationTheme: YTextFormFieldTheme.lightInputDecorationTheme);

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.green,
      textTheme: YTextTheme.darTexTheme,
      chipTheme: YChipTheme.darkChipTheme,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: YAppBarTheme.darkAppBarTheme,
      checkboxTheme: YCheckboxTheme.darkCheckboxTheme,
      bottomSheetTheme: YBottomSheetTheme.darkBottomSheetTheme,
      elevatedButtonTheme: YElevatedButtonTheme.darkElevatedButtonTheme,
      outlinedButtonTheme: YOutlinedButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: YTextFormFieldTheme.darkInputDecorationTheme);
}
