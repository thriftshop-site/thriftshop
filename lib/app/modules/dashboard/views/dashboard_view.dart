import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../home/controllers/auth-controller.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  final _auth = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DashboardView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Dashboard"),
            RaisedButton(
              onPressed: () => {_auth.logOut()},
              child: Text("Sign Out!"),
            )
          ],
        ),
      ),
    );
  }
}
