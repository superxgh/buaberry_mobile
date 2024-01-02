
import 'package:buaberry_mobile/config.dart';

import 'food_bill_detail_layout.dart';
import 'food_cart_list.dart';
import 'food_coupon_layout.dart';
import 'food_delivery_instruction_layout.dart';

class FoodCartBody extends StatelessWidget {
  const FoodCartBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FoodCartController>(
      builder: (foodCartCtrl) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: Insets.i15,bottom: Insets.i100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //cart list
                FoodCartList(
                    cartList: foodCartCtrl.cartList.isNotEmpty
                        ? foodCartCtrl.cartList
                        : foodCartCtrl.cartData),
                const VSpace(Sizes.s20),

                //coupon layout
                const FoodCouponLayout(),
                const VSpace(Sizes.s20),

                //delivery instruction
                const FoodDeliveryInstructionLayout(),
                const VSpace(Sizes.s20),

                //bill layout
                const FoodBillLayout(),
                const VSpace(Sizes.s20),
                const FoodAddressLayout(),
              ],
            ),
          )
        );
      }
    );
  }
}
