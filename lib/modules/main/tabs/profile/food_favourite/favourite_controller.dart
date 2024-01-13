

import 'package:buaberry_mobile/config.dart';

class FavouriteController extends GetxController {
  List<Product> productList = [];
  String name = "";
  var isShimmer = true.obs;

  @override
  void onReady() {
    // TODO: implement onReady
    getData();

    super.onReady();
  }

  getData()async {
    isShimmer.value = true;
    update();

    name = Get.arguments ?? "";
    for (var i = 0; i < foAppArray.favouriteList.length; i++) {
      productList.add(Product.fromJson(foAppArray.favouriteList[i]));
    }

    update();
    await Future.delayed(Durations.ms150);
    isShimmer.value = false;
    update();
  }
}
