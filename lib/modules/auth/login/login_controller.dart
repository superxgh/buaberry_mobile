

import 'package:buaberry_mobile/api/api.dart';
import 'package:buaberry_mobile/config.dart';

class LoginController extends GetxController {

  final ApiRepository apiRepository;
  LoginController({required this.apiRepository});
  final name = 'LoginController'.obs;

  final formLoginKey = GlobalKey<FormState>();
  final textUsernameController = TextEditingController();
  final textPasswordController = TextEditingController();

  @override
  void onInit() {
    logger.i(">>> LoginController->onInit()");
    super.onInit();
    name.value = 'LoginController->onInit()';
  }

  @override
  void onReady() async {

    logger.i(">>> LoginController->onReady()");

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
    super.onReady();
  }

  Future<void> login() async {
    logger.i(">>> login()");
    if (formLoginKey.currentState!.validate()) {

      String username;
      String userpw;

      // Get username and password text.
      (username,userpw) = getUsernamePasswordText();
      logger.d(": username = $username");
      logger.d(": userpw = $userpw");

      // login to system.
      final res = await loginProcess(
          username: username,
          userpw: userpw);
      logger.d(": res = $res");

      final prefs = Get.find<SharedPreferences>();
      if (res!.token.isNotEmpty) {
        prefs.setString(StorageConstants.token, res.token);
        Get.toNamed(Routes.HOME);
      } else {
        CommonWidget.toast("Can not login.");
      }
    }
  }

  (String, String) getUsernamePasswordText() {
    String username = textUsernameController.text;
    String userpw = textPasswordController.text;
    return (username, userpw);
  }

  Future<LoginResponse?> loginProcess({
    required String username,
    required String userpw}) async {
    LoginRequest data = LoginRequest(
        username: username,
        userpw: userpw);
    final res = await apiRepository.login(data);
    return res;
  }

  @override
  void onClose() {
    name.value = '';
    super.onInit();
  }

}
