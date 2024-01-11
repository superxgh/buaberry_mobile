
import 'package:buaberry_mobile/config.dart';

class HomeController extends GetxController {

  var featuredRestaurantList = <Product>[].obs;
  var mustTryList = <Product>[].obs;
  int current = 0;
  var foodBannerList = <FoodBannerModel>[].obs;

  final CarouselController carouselController = CarouselController();
  var instructionList =[].obs;
  var nearByList = <Product>[].obs;

  @override
  void onReady() {

    getData();

    super.onReady();
  }

  getData(){
    instructionList.value = foAppArray.instructionList;
  for (var i = 0; i < foAppArray.nearByRestaurant.length; i++) {
    nearByList.add(Product.fromJson(foAppArray.nearByRestaurant[i]));
  }
    for (var i = 0; i < foAppArray.bannerList.length; i++) {
      foodBannerList.add(FoodBannerModel.fromJson(foAppArray.bannerList[i]));
    }
    for (var i = 0; i < foAppArray.featuredRestaurant.length; i++) {
      featuredRestaurantList.add(Product.fromJson(foAppArray.featuredRestaurant[i]));
    }
    for (var i = 0; i < foAppArray.mustTryList.length; i++) {
      mustTryList.add(Product.fromJson(foAppArray.featuredRestaurant[i]));
    }
    update();
  }
}
