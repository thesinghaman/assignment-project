import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'widgets/appbar_theme.dart';
import 'widgets/elevated_button_theme.dart';
import 'widgets/outlined_button_theme.dart';
import 'widgets/text_field_theme.dart';
import 'widgets/text_theme.dart';

class AAppTheme {
  AAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: AColors.grey,
    brightness: Brightness.light,
    primaryColor: AColors.primary,
    textTheme: ATextTheme.textTheme,
    scaffoldBackgroundColor: AColors.white,
    appBarTheme: AAppBarTheme.appBarTheme,
    elevatedButtonTheme: AElevatedButtonTheme.elevatedButtonTheme,
    outlinedButtonTheme: AOutlinedButtonTheme.outlinedButtonTheme,
    inputDecorationTheme: ATextFormFieldTheme.inputDecorationTheme,
  );
}
