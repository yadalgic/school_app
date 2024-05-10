import 'package:first_app/src/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:first_app/src/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:first_app/src/utils/theme/widget_themes/text_theme.dart';
import 'package:flutter/material.dart';
//import 'package:login_flutter_app/src/utils/theme/widget_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    //primarySwatch: Colors.yellow,
    brightness: Brightness.light,
    textTheme: TTextTheme.lightTextTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    //appBarTheme: AppBarTheme(),
    //floatingActionButtonTheme: FloatingActionButtonThemeData(),
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
  );

  static ThemeData darkTheme = ThemeData(
    //primarySwatch: Colors.yellow,
    brightness: Brightness.dark,
    textTheme: TTextTheme.darkTextTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    //appBarTheme: AppBarTheme(),
    //floatingActionButtonTheme: FloatingActionButtonThemeData(),
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
  );
}
