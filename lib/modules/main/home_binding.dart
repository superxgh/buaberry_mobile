import 'package:buaberry_mobile/modules/main/tabs/cart/cart/cart_controller.dart';
import 'package:buaberry_mobile/modules/main/tabs/offers/offer_controller.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController());
    Get.put<CartController>(CartController());
    Get.put<OfferController>(OfferController());
  }
}
