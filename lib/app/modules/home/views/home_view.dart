import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../dashboard/views/dashboard_view.dart';
import '../controllers/auth-controller.dart';
import '../controllers/user-controller.dart';
import 'login_view.dart';

class HomeView extends GetWidget<AuthController> {
  @override
  Widget build(BuildContext context) {
    return GetX(
      initState: (_) async {
        Get.put<UserController>(UserController());
      },
      builder: (_) {
        if (Get.find<AuthController>().user?.uid != null) {
          return DashboardView();
        } else {
          return LoginView();
        }
      },
    );
  }
}
