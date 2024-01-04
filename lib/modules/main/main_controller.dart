

import 'package:buaberry_mobile/config.dart';


class MainController extends GetxController {

  final CarouselController carouselController = CarouselController();
  FoodOrderingAppArray foAppArray = FoodOrderingAppArray();

  TextEditingController searchTextController = TextEditingController();

  var currentTab = MainTabs.Home.obs;
  late HomeTab homeTab;
  late SearchTab searchTab;
  late CartTab cartTab;
  late OffersTab offersTab;
  late ProfileTab profileTab;

  int current = 0;
  var foodBannerList = <FoodBannerModel>[].obs;
  var instructionList =[].obs;
  var nearByList = <Product>[].obs;
  var featuredRestaurantList = <Product>[].obs;
  var mustTryList = <Product>[].obs;
  List recentList =[];


  bool isShimmer = false;


  @override
  void onInit() {
    super.onInit();
    homeTab = HomeTab();
    searchTab = SearchTab();
    cartTab = CartTab();
    offersTab = OffersTab();
    profileTab = ProfileTab();
  }

  @override
  void onReady() async {
    getData();
    logger.d("mustTryList length : ${mustTryList.length}");

    recentList = foAppArray.recentList;

    super.onReady();

  }

  void switchTab(index) {
    var tab = _getCurrentTab(index);
    currentTab.value = tab;
  }

  int getCurrentIndex(MainTabs tab) {
    switch (tab) {
      case MainTabs.Home:
        return 0;
      case MainTabs.Search:
        return 1;
      case MainTabs.Cart:
        return 2;
      case MainTabs.Offers:
        return 3;
      case MainTabs.Profile:
        return 4;
      default:
        return 0;
    }
  }

  MainTabs _getCurrentTab(int index) {
    switch (index) {
      case 0:
        return MainTabs.Home;
      case 1:
        return MainTabs.Search;
      case 2:
        return MainTabs.Cart;
      case 3:
        return MainTabs.Offers;
      case 4:
        return MainTabs.Profile;
      default:
        return MainTabs.Home;
    }
  }

  getData(){

    for (var i = 0; i < foAppArray.bannerList.length; i++) {
      foodBannerList.add(FoodBannerModel.fromJson(foAppArray.bannerList[i]));
    }

    instructionList.value = foAppArray.instructionList;
    for (var i = 0; i < foAppArray.nearByRestaurant.length; i++) {
      nearByList.add(Product.fromJson(foAppArray.nearByRestaurant[i]));
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
