

import 'package:buaberry_mobile/api/api.dart';
import 'package:buaberry_mobile/config.dart';

class LoginController extends GetxController {

  final ApiRepository apiRepository;
  LoginController({required this.apiRepository});

  final formLoginKey = GlobalKey<FormState>();
  final textUsernameController = TextEditingController();
  final textPasswordController = TextEditingController();

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

  Future<void> login() async {
    logger.i(">>> login()");
    if (formLoginKey.currentState!.validate()) {
      String usernameTxt = textUsernameController.text;
      String passwordTxt = textPasswordController.text;

      logger.d(": username = $usernameTxt");
      logger.d(": passowrd = $passwordTxt");

      LoginRequest data = LoginRequest(
          username: usernameTxt,
          password: usernameTxt);

      final res = await apiRepository.login(data);
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
}
