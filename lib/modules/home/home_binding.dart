import 'package:buaberry_mobile/modules/home/tabs/cart/food_cart_controller.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController());
    Get.put<FoodCartController>(FoodCartController());
  }
}
