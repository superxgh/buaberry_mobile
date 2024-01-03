

import 'package:buaberry_mobile/config.dart';

import 'food_cart_body.dart';
import 'food_cart_shimmer.dart';

class CartTab extends GetView<HomeController> {
  const CartTab({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // return FoodCartBody();
    return controller.getCurrentIndex(controller.currentTab.value) == 2
        ? controller.isShimmer
          ? const FoodCartShimmer()
        : const FoodCartBody()
        : const FoodCartBody();
  }
}
