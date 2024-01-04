

import 'package:buaberry_mobile/config.dart';

import 'cart/cart_body.dart';
import 'cart/cart_shimmer.dart';

class CartTab extends GetView<MainController> {
  const CartTab({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // return FoodCartBody();
    return controller.getCurrentIndex(controller.currentTab.value) == 2
        ? controller.isShimmer
          ? const CartShimmer()
        : const CartBody()
        : const CartBody();
  }
}
