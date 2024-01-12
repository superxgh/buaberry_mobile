import 'package:buaberry_mobile/config.dart';
import 'address/food_address_layout.dart';
import 'bill/bill_detail_layout.dart';
import 'coupon/coupon_layout.dart';
import 'list/cart_list.dart';

class CartBodyWidget extends GetView<CartController> {
  const CartBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.only(top: Insets.i15,bottom: Insets.i100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //cart list
                Obx(() {
                  logger.d(": controller.cartList.isNotEmpty = ${controller.cartList.isNotEmpty}");
                  logger.d(": controller.cartData.length = ${controller.cartData.length}");
                    return CartList(
                        cartList: controller.cartList.isNotEmpty
                            ? controller.cartList
                            : controller.cartData);
                  }
                ),
                const VSpace(Sizes.s20),


                //coupon layout
                const CouponLayout(),
                const VSpace(Sizes.s20),

                //bill layout
                const BillLayout(),
                const VSpace(Sizes.s20),
                const FoodAddressLayout(),
              ],
            )
        );
  }
}
