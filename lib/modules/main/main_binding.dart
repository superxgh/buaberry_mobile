import 'package:buaberry_mobile/modules/main/tabs/cart/cart_controller.dart';
import 'package:buaberry_mobile/modules/main/tabs/offers/offer_controller.dart';
import 'package:get/get.dart';
import 'main_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<MainController>(MainController());
    Get.put<CartController>(CartController());
    Get.put<OfferController>(OfferController());
  }
}
