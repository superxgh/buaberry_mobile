import 'package:buaberry_mobile/modules/main/tabs/cart/cart_controller.dart';
import 'package:buaberry_mobile/modules/main/tabs/home/home_controller.dart';
import 'package:buaberry_mobile/modules/main/tabs/offers/offer_controller.dart';
import 'package:buaberry_mobile/modules/main/tabs/profile/profile_controller.dart';
import 'package:buaberry_mobile/modules/main/tabs/food_search/food_search_controller.dart';
import 'package:get/get.dart';
import 'main_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<MainController>(MainController());

    Get.put<HomeController>(HomeController());
    Get.put<FoodSearchController>(FoodSearchController());
    Get.put<CartController>(CartController());
    Get.put<OfferController>(OfferController());
    Get.put<ProfileController>(ProfileController());
  }
}
