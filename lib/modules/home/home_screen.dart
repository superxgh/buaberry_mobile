import 'package:buaberry_mobile/config.dart';

import 'home_app_bar.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: appController.appTheme.foodPrimaryLightColor,
        appBar:  AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: appController.appTheme.foodPrimaryLightColor,
          title: Row(
            children: [
              Image.asset(
                foIconAssets.sendColor,
                height: Sizes.s20,
                fit: BoxFit.cover,
              ),
              const HSpace(Sizes.s10),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Row(
                  children: [
                    Text(trans('home'),
                        style: TextStyle(
                          color: appController.appTheme.foodTitleColor,
                          fontFamily: GoogleFonts.lato().fontFamily,
                          fontWeight: FontWeight.w400,
                          fontSize: FontSizes.f16,
                          letterSpacing: 0,
                          height: 1,
                        )),
                    const Icon(Icons.keyboard_arrow_down_rounded, size: Sizes.s20)
                  ],
                ),
                Text(trans(FoodOrderingThemeFont.lakeForestAddress),
                    style: TextStyle(
                      color: appController.appTheme.foodContentColor,
                      fontFamily: GoogleFonts.lato().fontFamily,
                      fontWeight: FontWeight.w400,
                      fontSize: FontSizes.f14,
                      letterSpacing: 0,
                      height: 1,
                    ))
              ])
            ],
          ),
          actions: [
            SvgPicture.asset(
              commonSvgAssets.bell,
              height: Sizes.s20,
            ).marginSymmetric(horizontal: Insets.i15)
          ],
        ),
        body: _buildContent(controller.currentTab.value),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.check_circle_outline),
                label: 'Offers',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_outlined),
                label: 'Profile',
              ),
            ],
            type: BottomNavigationBarType.fixed,
            currentIndex:
                controller.getCurrentIndex(controller.currentTab.value),
            selectedItemColor: Colors.black,
            backgroundColor: appController.appTheme.foodPrimaryLightColor,
            unselectedItemColor: Colors.grey,
            onTap: (index) => controller.switchTab(index),
          ),
        ),
      ),
    );
  }

  Widget _buildContent(MainTabs tab) {
    switch (tab) {
      case MainTabs.Home:
        return controller.homeTab;
      case MainTabs.Search:
        return controller.searchTab;
      case MainTabs.Cart:
        return controller.cartTab;
      case MainTabs.Offers:
        return controller.offersTab;
      case MainTabs.Profile:
        return controller.profileTab;
      default:
        return controller.homeTab;
    }
  }
}
