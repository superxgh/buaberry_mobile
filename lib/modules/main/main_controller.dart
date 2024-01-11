

import 'package:buaberry_mobile/config.dart';


class MainController extends GetxController {

  AppArray foAppArray = AppArray();

  TextEditingController searchTextController = TextEditingController();

  var currentTab = MainTabs.Home.obs;
  late HomeTab homeTab;
  late FoodSearchTab searchTab;
  late CartTab cartTab;
  late OffersTab offersTab;
  late ProfileTab profileTab;


  List recentList =[];


  bool isShimmer = false;


  @override
  void onInit() {
    super.onInit();
    homeTab = HomeTab();
    searchTab = FoodSearchTab();
    cartTab = CartTab();
    offersTab = OffersTab();
    profileTab = ProfileTab();
  }

  @override
  void onReady() async {
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



}
