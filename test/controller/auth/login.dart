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
    controller.setUsernamePasswordText('u001', 'pw001');

    logger.i("> 4. Call login method on controller.");
    final res = await controller.loginProcess(
        username: controller.textUsernameController.text,
        userpw: controller.textPasswordController.text);
      logger.d(": res = $res");
      expect(res?.username, 'u001');

    // Close
    logger.i("> 5. LoginController->onClose()");
    Get.delete<LoginController>();  // onClose was called
    logger.d(": controller.name.value = ${controller.name.value}");
    expect(controller.name.value, '');
  });

}
