

import 'package:buaberry_mobile/config.dart';
import 'widgets/cart_body/cart_body_widget.dart';
import 'widgets/cart_shimmer.dart';


class CartTab extends GetView<CartController> {
  const CartTab({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          TextLabel(
            text: commonFonts.cart,
            fontFamily: FontFamily.LATO,
            fontWeight: FontWeight.bold,
            fontSize: FontSizes.f20,
            color: appController.appTheme.foodTitleColor,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Obx(() {
                return controller.isShimmer.value
                      ? const CartShimmer()
                      : const CartBodyWidget();
              }
            ),
          ),
        ],
      ),
    );
  }
}
