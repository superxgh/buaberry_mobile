import 'package:buaberry_mobile/shared/shared.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  @override
  void onReady() async {
    super.onReady();

    await Future.delayed(Duration(milliseconds: 2000));
    var storage = Get.find<SharedPreferences>();
    // try {
    //   if (storage.getString(StorageConstants.token) != null) {
    //     Get.toNamed(Routes.HOME);
    //   } else {
    //     Get.toNamed(Routes.AUTH);
    //   }
    // } catch (e) {
    //   Get.toNamed(Routes.AUTH);
    // }
  }

  void login() {
    PageRouter.gotoHomeScreen();
  }
}
