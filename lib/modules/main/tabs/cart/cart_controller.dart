
import 'package:buaberry_mobile/config.dart';

class CartController extends GetxController {


  var isShimmer = true.obs;

  List<Product> cartList = [];
  List<Product>? cartData;
  String name = "";
  List deliveryInstruction = [];
  String selected = "";
  AddressModel? addressModel;


  //addToCart
  addToCart({Product? product}) {
    String name = product!.name.toString();
    int index = cartList.indexWhere((element) => element.name! == name);
    if (index > -1) {
      int qty = int.parse(product.qty.toString());
      qty++;
      product.qty = qty;
    } else {
      product.qty = 1;
      cartList.add(product);
    }
    update();
  }

  //remove from cart
  removeFromCart({Product? product}) {
    String name = product!.name.toString();
    int index = cartList.indexWhere((element) => element.name! == name);
    if (index > -1) {
      int qty = int.parse(cartList[index].qty.toString());

      if (cartList[index].qty == 1) {
        cartList.removeAt(index);
      } else {
        qty--;
        cartList[index].qty = qty;
      }
    }

    update();
  }

  bool isInCart(Product product) {
    return cartList.isNotEmpty
        ? cartList.any((element) => element.name! == product.name)
        : false;
  }

  double get cartTotal =>
      cartList.fold(
          0,
              (i, j) =>
          i +
              (int.parse(j.qty.toString()) *
                  double.parse(j.name != null
                      ? j.price.toString()
                      : '0.0')));

  getData() {
    name = Get.arguments ?? "";
    update();
    cartData = foAppArray.cartData.map((e) => Product.fromJson(e)).toList();
    deliveryInstruction = foAppArray.deliveryInstruction;
    update();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    getData();
    super.onReady();
  }
}
