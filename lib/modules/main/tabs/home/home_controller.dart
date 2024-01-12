import 'package:buaberry_mobile/config.dart';

class HomeController extends GetxController {


  var foodBannerList = <FoodBannerModel>[].obs;
  var healthyList = <Product>[].obs;
  var breakfastList = <Product>[].obs;
  var dessertList = <Product>[].obs;
  var dimsumList = <Product>[].obs;
  var breakSnackList = <Product>[].obs;
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
    for (var i = 0; i < foAppArray.dessertList.length; i++) {
      dessertList.add(Product.fromJson(foAppArray.dessertList[i]));
    }
    for (var i = 0; i < foAppArray.dimsumList.length; i++) {
      dimsumList.add(Product.fromJson(foAppArray.dimsumList[i]));
    }
    for (var i = 0; i < foAppArray.breakSnackList.length; i++) {
      breakSnackList.add(Product.fromJson(foAppArray.breakSnackList[i]));
    }
    update();
  }
}
