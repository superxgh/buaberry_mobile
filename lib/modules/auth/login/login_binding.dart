import 'package:get/get.dart';
import 'login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
            () => LoginController(apiRepository: Get.find()));
    // Get.put<LoginController>(LoginController());
  }
}
