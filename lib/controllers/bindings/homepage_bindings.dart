import 'package:gimmenow_demo/controllers/auth_controller.dart';
import 'package:gimmenow_demo/controllers/user_controller.dart';
import 'package:get/get.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<AuthController>(AuthController(), permanent: true);
    Get.put<UserController>(UserController(), permanent: true);
  }
}
