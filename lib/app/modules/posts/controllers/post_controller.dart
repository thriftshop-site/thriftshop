import 'package:get/get.dart';
import '../../home/controllers/auth-controller.dart';
import '../../../core/services/database.dart';
import '../models/post.dart';

class PostController extends GetxController {
  Rx<List<PostModel>> postList = Rx<List<PostModel>>();

  List<PostModel> get todos => postList.value;

  @override
  // ignore: must_call_super
  void onInit() {
    String uid = Get.find<AuthController>().user.uid;
    postList
        .bindStream(Database().postStream(uid)); //stream coming from firebase
  }
}
