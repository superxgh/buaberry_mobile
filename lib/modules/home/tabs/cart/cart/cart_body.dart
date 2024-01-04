
import 'package:buaberry_mobile/config.dart';

import '../address/food_address_layout.dart';
import '../bill/bill_detail_layout.dart';
import 'cart_list.dart';
import '../coupon_layout.dart';
import '../delivery/delivery_instruction_layout.dart';

class CartBody extends GetView<CartController> {
  const CartBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: Insets.i15,bottom: Insets.i100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //cart list
                CartList(
                    cartList: controller.cartList.isNotEmpty
                        ? controller.cartList
                        : controller.cartData),
                const VSpace(Sizes.s20),

                //coupon layout
                const CouponLayout(),
                const VSpace(Sizes.s20),

                //delivery instruction
                const DeliveryInstructionLayout(),
                const VSpace(Sizes.s20),

                //bill layout
                const BillLayout(),
                const VSpace(Sizes.s20),
                const FoodAddressLayout(),
              ],
            ),
          )
        );
  }
}
