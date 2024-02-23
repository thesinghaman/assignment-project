import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class AElevatedButtonTheme {
  AElevatedButtonTheme._();

  static final elevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: AColors.light,
    backgroundColor: AColors.primary,
    disabledBackgroundColor: AColors.buttonDisabled,
    disabledForegroundColor: AColors.darkGrey,
    side: const BorderSide(color: AColors.primary),
    padding: const EdgeInsets.symmetric(vertical: ASizes.buttonHeight),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(ASizes.buttonRadius)),
    textStyle: const TextStyle(
        fontSize: 16,
        color: AColors.textWhite,
        fontWeight: FontWeight.w600,
        fontFamily: 'Poppins'),
  ));
}
