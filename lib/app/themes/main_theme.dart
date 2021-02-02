import 'package:flutter/material.dart';
import 'package:thriftshop/app/helpers/to_hex.dart';

// use inside GetMaterialApp
// darkTheme: MainTheme().darkTheme,
// theme: MainTheme().darkTheme,
// themeMode: ThemeMode.light,

// can be toggle with in any button
// Get.changeThemeMode(Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);

class MainTheme {
  final lightTheme = ThemeData.light().copyWith(
      primaryColor: Hex("#00275B").toColor,
      accentColor: Hex("#B69859").toColor,
      appBarTheme: AppBarTheme(
        brightness: Brightness.dark,
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      buttonColor: Colors.pink,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Hex("#00275B").toColor,
        foregroundColor: Hex("#B69859").toColor,
      ));

  final darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: Colors.black,
      ),
      bodyText2: TextStyle(
        color: Color(0xFFE6206C),
      ),
      headline1: TextStyle(
        color: Colors.black,
      ),
      headline2: TextStyle(
        color: Colors.black,
      ),
      headline3: TextStyle(
        color: Colors.black,
      ),
      headline4: TextStyle(
        color: Colors.black,
      ),
      headline5: TextStyle(
        color: Colors.black,
      ),
      headline6: TextStyle(
        color: Colors.black,
      ),
    ),
    primaryColor: Hex("#00275B").toColor,
    accentColor: Hex("#B69859").toColor,
    appBarTheme: AppBarTheme(
      brightness: Brightness.light,
      textTheme: TextTheme(
        headline1: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
    buttonColor: Hex("#B69859").toColor,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Hex("#00275B").toColor,
      foregroundColor: Colors.white70,
    ),
  );
}
