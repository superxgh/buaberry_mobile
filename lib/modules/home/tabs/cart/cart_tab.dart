

import 'package:buaberry_mobile/config.dart';

import 'food_cart_shimmer.dart';

class CartTab extends GetView<HomeController> {
  const CartTab({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return controller.selectedIndex == 2
        ? controller.isShimmer
        ? const FoodCartShimmer()
        : const FoodCartBody()
        : const FoodCartBody();
  }
}
