

import 'package:buaberry_mobile/config.dart';
import 'widgets/cart_body/cart_body.dart';
import 'widgets/cart_shimmer.dart';


class CartTab extends GetView<CartController> {
  const CartTab({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        TextLabel(
          text: commonFonts.cart,
          fontFamily: FontFamily.LATO,
          fontWeight: FontWeight.bold,
          fontSize: FontSizes.f20,
          color: appController.appTheme.foodTitleColor,
        ),
        Obx(() {
            return controller.isShimmer.value
                  ? const CartShimmer()
                  : const CartBody();
          }
        ),
      ],
    );
  }
}
