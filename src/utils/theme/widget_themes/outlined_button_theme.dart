import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

class TOutlinedButtonTheme {
  TOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      shape: const StadiumBorder(), //RoundedRectangleBorder(),
      foregroundColor: tDarkColor,
      side: const BorderSide(color: tDarkColor, width: 3),
      padding: const EdgeInsets.symmetric(vertical: tButtonHeight),
    ),
  );

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      shape: const StadiumBorder(),
      foregroundColor: tWhiteColor,
      side: const BorderSide(color: tWhiteColor, width: 3),
      padding: const EdgeInsets.symmetric(vertical: tButtonHeight),
    ),
  );
}
