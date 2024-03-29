
import 'package:buaberry_mobile/config.dart';

class CartList extends StatelessWidget {
  final List<Product>? cartList;
  const CartList({Key? key,this.cartList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartController>(builder: (foodCartController) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(AppRadius.r8),
              child: Column(children: [
                ...cartList!
                    .asMap()
                    .entries
                    .map((e) => Column(
                          children: [
                            ProductCard(
                              isShadow: false,
                                product: e.value, isRatingShow: false),
                            if (e.key != foodCartController.cartList.length - 1)
                              const Divider(endIndent: 15, indent: 15)
                          ],
                        )
                    //.inkWell(onTap:()=>Get.toNamed(Routes.foRestaurant))
                      )
                    .toList(),
                const VSpace(Sizes.s20),
                 DottedButton(name:  trans(commonFonts.addItem)),
                const VSpace(Sizes.s20),
              ])
          )





                  // .backgroundColor(Colors.white).boxShadow(
                  // color: appController.appTheme.foodShadowColor,
                  // blurRadius: 6,
                  // offset: const Offset(2, 3)))
        ],
      );
    });
  }
}
