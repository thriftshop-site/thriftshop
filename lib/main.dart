import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'app/modules/home/bindings/home_binding.dart';
import 'app/themes/main_theme.dart';
import 'app/themes/theme_service.dart';
import 'app/routes/app_pages.dart';

void main() async {
  const bool USE_FIRESTORE_EMULATOR = true;

  await GetStorage.init();

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  if (USE_FIRESTORE_EMULATOR) {
    String host = GetPlatform.isAndroid ? '10.0.2.2:8080' : 'localhost:8080';
    FirebaseFirestore.instance.settings =
        Settings(host: host, sslEnabled: false, persistenceEnabled: false);
  }

  runApp(
    GetMaterialApp(
      initialBinding: HomeBinding(),
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      theme: MainTheme().lightTheme,
      darkTheme: MainTheme().darkTheme,
      themeMode: ThemeService().getThemeMode(),
    ),
  );
}
