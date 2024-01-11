import 'package:buaberry_mobile/config.dart';

class HomeController extends GetxController {


  var foodBannerList = <FoodBannerModel>[].obs;
  var healthyList = <Product>[].obs;
  var breakfastList = <Product>[].obs;

  var mustTryList = <Product>[].obs;
  int current = 0;

  final CarouselController carouselController = CarouselController();
  var instructionList = [].obs;

  @override
  void onReady() {
    getData();
    super.onReady();
  }

  getData() {

    for (var i = 0; i < foAppArray.bannerList.length; i++) {
      foodBannerList.add(FoodBannerModel.fromJson(foAppArray.bannerList[i]));
    }
    for (var i = 0; i < foAppArray.healthyList.length; i++) {
      healthyList.add(Product.fromJson(foAppArray.healthyList[i]));
    }
    for (var i = 0; i < foAppArray.breakfastList.length; i++) {
      breakfastList
          .add(Product.fromJson(foAppArray.breakfastList[i]));
    }

    instructionList.value = foAppArray.instructionList;
    for (var i = 0; i < foAppArray.mustTryList.length; i++) {
      mustTryList.add(Product.fromJson(foAppArray.breakfastList[i]));
    }
    update();
  }
}
