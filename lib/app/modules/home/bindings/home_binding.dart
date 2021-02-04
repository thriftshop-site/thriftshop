import 'package:get/get.dart';
import '../controllers/auth-controller.dart';
import '../controllers/user-controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(
      () => AuthController(),
    );
    Get.lazyPut<UserController>(
      () => UserController(),
    );
  }
}
