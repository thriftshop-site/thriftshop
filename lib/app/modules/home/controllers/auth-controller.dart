import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import '../../../core/models/user.dart';
import '../../../core/services/database.dart';
import 'user-controller.dart';

class AuthController extends GetxController {
  FirebaseAuth _auth = FirebaseAuth.instance;
  Rx<User> _user = Rx<User>();

  User get user => _user.value;

  @override
  onInit() {
    _user.bindStream(_auth.authStateChanges());
    super.onInit();
  }

  void createUser(String name, String email, String password) async {
    try {
      final UserCredential _authResult =
          await _auth.createUserWithEmailAndPassword(
              email: email.trim(), password: password);
      UserModel user = UserModel(
        uid: _authResult.user.uid,
        name: name,
        email: _authResult.user.email,
      );
      if (await Database().registerUser(user)) {
        login(email, password);
        // Get.find<UserController>().user = user;
        Get.back();
      }
    } catch (e) {
      Get.snackbar(
        "Error creating Account",
        e.message,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  void login(String email, String password) async {
    try {
      UserCredential _authResult = await _auth.signInWithEmailAndPassword(
          email: email.trim(), password: password);
      Get.find<UserController>().user =
          await Database().getUser(_authResult.user.uid);
      Get.snackbar(
        "Success",
        "Youve Successfully Logged In!",
        snackPosition: SnackPosition.BOTTOM,
      );
    } catch (e) {
      Get.snackbar(
        "Error signing in",
        e.message,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  void logOut() async {
    try {
      await _auth.signOut();
      Get.find<UserController>().clear();
    } catch (e) {
      Get.snackbar(
        "Error signing out",
        e.message,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
