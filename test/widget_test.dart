import 'package:buaberry_mobile/api/provider/user_api_provider.dart';
import 'package:buaberry_mobile/api/api_repository.dart';
import 'package:buaberry_mobile/config.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Test load init and close controller', () async {
    // Load
    final controller = LoginController(apiRepository: ApiRepository(userApiProvider: UserApiProvider()));
    expect(controller.name.value, 'LoginController');
    print(">>> LoginController");
    // Init
    Get.put(controller); // onInit was called
    expect(controller.name.value, 'LoginController->onInit()');
    print(">>> LoginController->onInit()");

    // /// Test your functions
    // controller.changeName();
    // expect(controller.name.value, 'name3');

    // Close
    print(">>> LoginController->onClose()");
    Get.delete<LoginController>();  // onClose was called
    print(": controller.name.value = ${controller.name.value}");
    expect(controller.name.value, '');
      });

  test('Test login method', () async {
    // Load
    EasyLoading.init();
    Get.lazyPut< UserApiProvider >(() => UserApiProvider());
    final controller = LoginController(apiRepository: ApiRepository(userApiProvider: Get.find()));
    expect(controller.name.value, 'LoginController');
    logger.i(">>> LoginController");
    // Init
    Get.put(controller); // onInit was called
    expect(controller.name.value, 'LoginController->onInit()');
    logger.i(">>> LoginController->onInit()");


    // Test login()
    // Initial variable
      logger.i(">>> initial variable");
      controller.textUsernameController.text = 'u001';
      controller.textPasswordController.text = 'pw001';
      logger.d(": controller.textUsernameController.text = ${controller.textUsernameController.text}");
      logger.d(": controller.textPasswordController.text = ${controller.textPasswordController.text}");

      LoginRequest data = LoginRequest(
          username: controller.textUsernameController.text,
          password: controller.textPasswordController.text);

      final res = await controller.apiRepository.login(data);
      logger.d(": res = $res");

      // final prefs = Get.find<SharedPreferences>();
      // if (res!.token.isNotEmpty) {
      //   prefs.setString(StorageConstants.token, res.token);
      //   Get.toNamed(Routes.HOME);
      // } else {
      //   CommonWidget.toast("Can not login.");
      // }

    // controller.changeName();
    // expect(controller.name.value, 'name3');

    // Close
    print(">>> LoginController->onClose()");
    Get.delete<LoginController>();  // onClose was called
    print(": controller.name.value = ${controller.name.value}");
    expect(controller.name.value, '');
  });

}
