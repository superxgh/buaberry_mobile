

import 'package:buaberry_mobile/config.dart';

class ShippingAddressBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ShippingAddressController>(ShippingAddressController());
  }
}
