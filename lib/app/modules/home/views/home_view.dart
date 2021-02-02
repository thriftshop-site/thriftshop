import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thriftshop/app/themes/theme_service.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            const String assetName = 'assets/images/logo.svg';
            return Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: SvgPicture.asset(assetName),
            );
          },
        ),
        title: Text(
          'GOLDCODERS CORP',
          style: TextStyle(
            color: Theme.of(context).accentColor,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'HomeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          ThemeService().changeThemeMode();
        },
      ),
    );
  }
}
