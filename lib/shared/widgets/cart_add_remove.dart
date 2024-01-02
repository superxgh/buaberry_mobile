

import 'package:buaberry_mobile/config.dart';
import 'package:buaberry_mobile/shared/widgets/qty_dec_button.dart';

import 'add_button.dart';

class CartAddRemove extends StatelessWidget {
  final Product? product;
  final GestureTapCallback? onTap;
  const CartAddRemove({Key? key,this.product,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FoodCartController>(
      builder: (cartCtrl) => !cartCtrl.isInCart(product!)
          ? InkWell(onTap: onTap , child: AddButton())
          : IncDecButton(
          qty: product!.qty.toString(),
          addTap: ()=> cartCtrl.addToCart(product: product),
          minusTap: ()=> cartCtrl.removeFromCart(product: product))
    );
  }
}
