
import 'package:buaberry_mobile/config.dart';

class HomeController extends GetxController {

  var featuredRestaurantList = <Product>[].obs;
  var mustTryList = <Product>[].obs;

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  getData(){
    for (var i = 0; i < foAppArray.featuredRestaurant.length; i++) {
      featuredRestaurantList.add(Product.fromJson(foAppArray.featuredRestaurant[i]));
    }
    for (var i = 0; i < foAppArray.mustTryList.length; i++) {
      mustTryList.add(Product.fromJson(foAppArray.featuredRestaurant[i]));
    }
  }

}
