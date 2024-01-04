import 'package:buaberry_mobile/config.dart';
import 'package:buaberry_mobile/modules/main/widgets/home_app_bar.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: appController.appTheme.foodPrimaryLightColor,
        appBar:  HomeAppbar(),
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
