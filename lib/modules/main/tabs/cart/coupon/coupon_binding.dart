

import 'package:buaberry_mobile/config.dart';

import 'coupon_controller.dart';

class CouponBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<CouponController>(CouponController());
  }
}
