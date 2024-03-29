import 'dart:async';

import 'package:buaberry_mobile/routes/routes.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends GetxController {

  Timer? timer;

  @override
  void onInit() async {
    timer = Timer(
        const Duration(seconds: 1),
            () =>  Get.toNamed(Routes.LOGIN));
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
    timer!.cancel();
  }
}
