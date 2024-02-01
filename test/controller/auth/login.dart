import 'package:buaberry_mobile/api/provider/user_api_provider.dart';
import 'package:buaberry_mobile/api/api_repository.dart';
import 'package:buaberry_mobile/config.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  test('Test login method', () async {

    logger.i(">>> Test login method on controller.");
    logger.i("> 1. Setup environment.");
    EasyLoading.init();

    logger.i("> 2. Setup for controller.");
    Get.lazyPut< UserApiProvider >(() => UserApiProvider());
    final controller = LoginController(apiRepository: ApiRepository(userApiProvider: Get.find()));
    Get.put(controller); // onInit was called

    logger.i("> 3. Initial variable for login method.");
      controller.textUsernameController.text = 'u001';
      controller.textPasswordController.text = 'pw001';
      logger.d(": controller.textUsernameController.text = ${controller.textUsernameController.text}");
      logger.d(": controller.textPasswordController.text = ${controller.textPasswordController.text}");

    logger.i("> 4. Call login method on controller.");
      LoginRequest data = LoginRequest(
          username: controller.textUsernameController.text,
          userpw: controller.textPasswordController.text);
      final res = await controller.apiRepository.login(data);
      logger.d(": res = $res");
      expect(res?.username, 'u001');

    // Close
    logger.i("> 5. LoginController->onClose()");
    Get.delete<LoginController>();  // onClose was called
    logger.d(": controller.name.value = ${controller.name.value}");
    expect(controller.name.value, '');
  });

}
