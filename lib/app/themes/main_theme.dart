import 'package:flutter/material.dart';
import '../helpers/to_hex.dart';

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
  );

  final darkTheme = ThemeData.dark().copyWith(
    primaryColor: Hex("#00275B").toColor,
    accentColor: Hex("#B69859").toColor,
  );
}
