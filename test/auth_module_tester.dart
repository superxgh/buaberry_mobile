import 'package:buaberry_mobile/api/api.dart';
import 'package:buaberry_mobile/models/request/auth/login_request.dart';
import 'package:buaberry_mobile/modules/auth/login/login_controller.dart';
import 'package:buaberry_mobile/shared/library/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:getx_test/getx_test.dart';

void main() {
  group('Test login from controller to backend', () {
    setUp(() {
      Get.lazyPut< UserApiProvider >(() => UserApiProvider());
    });

    testController<LoginController>(
      'Test LoginController',
          (controller) async {
        logger.i(">>> Test LoginController.");
        controller.textUsernameController.text = "u001";
        controller.textPasswordController.text = "pw001";

        logger.d(": username = ${controller.textUsernameController.text}");
        logger.d(": password = ${controller.textPasswordController.text}");

        LoginRequest data = LoginRequest(
            username: controller.textUsernameController.text,
            userpw: controller.textPasswordController.text);

        final res = await controller.apiRepository.login(data);
        logger.d(": res = $res");
      },
      controller: LoginController(
          apiRepository: ApiRepository(userApiProvider: Get.find())),
      onInit: (c) {
        // c.increment();
        logger.i('>>> onInit()');
      },
      onReady: (c) {
        logger.i('>>> onReady()');
        // c.increment();
      },
      onClose: (c) {
        logger.i('>>> onClose()');
      },
    );
  });


}
