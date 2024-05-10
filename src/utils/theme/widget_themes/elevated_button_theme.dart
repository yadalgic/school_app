//import 'package:first_app/src/features/authentication/screeens/inside/myApp.dart';
import 'package:flutter/material.dart';
//import 'package:get/get.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

class TElevatedButtonTheme {
  TElevatedButtonTheme._();

/*   static void _onButtonPressed(BuildContext context) {
    // Yeni sayfaya yönlendirme işlemini burada gerçekleştirin
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MyApp(), // Yeni sayfanın oluşturulması
      ),
    );
  }

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: StadiumBorder(),
      padding: EdgeInsets.symmetric(vertical: tButtonHeight),
      primary: tDarkColor, // Arkaplan rengi
      onPrimary: tWhiteColor, // Metin rengi
      side: BorderSide(color: tDarkColor, width: 2),
    ),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: StadiumBorder(),
      padding: EdgeInsets.symmetric(vertical: tButtonHeight),
      primary: tWhiteColor, // Arkaplan rengi
      onPrimary: tSecondaryColor, // Metin rengi
      side: BorderSide(color: tDarkColor, width: 2),
    ),
  );
}

 */

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: const StadiumBorder(),
      foregroundColor: tWhiteColor,
      backgroundColor: Colors.red.shade900,
      //side: const BorderSide(color: tDarkColor, width: 2),
      padding: const EdgeInsets.symmetric(vertical: tButtonHeight),
    ),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: const StadiumBorder(),
      foregroundColor: tSecondaryColor,
      backgroundColor: tWhiteColor,
      //side: const BorderSide(color: tDarkColor, width: 2),
      padding: const EdgeInsets.symmetric(vertical: tButtonHeight),
    ),
  );
}
