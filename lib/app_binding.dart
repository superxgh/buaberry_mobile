import 'package:buaberry_mobile/api/api.dart';
import 'package:get/get.dart';
import 'app_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() async {
    Get.put(UserApiProvider(), permanent: true);
    Get.put(ApiRepository(userApiProvider: Get.find()), permanent: true);
    Get.put<AppController>(AppController());
  }
}
