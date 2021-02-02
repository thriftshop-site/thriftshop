import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/helpers/to_hex.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Hex("#00275B").toColor,
        accentColor: Hex("#B69859").toColor,
        primaryColor: Hex("#00275B").toColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        splashColor: Colors.pink[50],
      ),
    ),
  );
}
