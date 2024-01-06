

import 'package:buaberry_mobile/config.dart';

class FoodFavouriteController extends GetxController {
  List<Product> productList = [];
  String name = "";
  bool isShimmer = false;

  @override
  void onReady() {
    // TODO: implement onReady
    getData();

    super.onReady();
  }

  getData()async {
    isShimmer = true;
    update();

    name = Get.arguments ?? "";
    for (var i = 0; i < foAppArray.favouriteList.length; i++) {
      productList.add(Product.fromJson(foAppArray.favouriteList[i]));
    }

    update();
    await Future.delayed(Durations.ms150);
    isShimmer = false;
    update();
  }
}
