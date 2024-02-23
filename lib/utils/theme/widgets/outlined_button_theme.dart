import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class AOutlinedButtonTheme {
  AOutlinedButtonTheme._();

  static final outlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: AColors.dark,
      side: const BorderSide(color: AColors.borderPrimary),
      padding: const EdgeInsets.symmetric(
          vertical: ASizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(ASizes.buttonRadius)),
      textStyle: const TextStyle(
          fontSize: 16,
          color: AColors.black,
          fontWeight: FontWeight.w600,
          fontFamily: 'Poppins'),
    ),
  );
}
