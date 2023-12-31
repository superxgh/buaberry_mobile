import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:buaberry_mobile/modules/home/home.dart';
import 'package:buaberry_mobile/shared/shared.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: CommonWidget.getAppBlackgroundColor(),
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CommonWidget.getAppBranner(iconSize: 40.0),
              CommonWidget.getLogoutIcon(
                  iconSize: 30.0,
                  onPressed: () {
                    // controller.signOut();
                  }),
            ],
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: _buildContent(controller.currentTab.value),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.newspaper),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.history),
                label: 'Menu',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Live',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'Notify',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Me',
              ),
            ],
            type: BottomNavigationBarType.fixed,
            currentIndex:
                controller.getCurrentIndex(controller.currentTab.value),
            selectedItemColor: Colors.orange,
            backgroundColor: Colors.black,
            unselectedItemColor: Colors.grey,
            onTap: (index) => controller.switchTab(index),
          ),
        ),
      ),
    );
  }

  Widget _buildContent(MainTabs tab) {
    switch (tab) {
      case MainTabs.Features:
        return controller.featuresTab;
      case MainTabs.BBB:
        return controller.bbbTab;
      case MainTabs.Live:
        return controller.liveTab;
      case MainTabs.Nofity:
        return controller.notifyTab;
      case MainTabs.Me:
        return controller.meTab;
      default:
        return controller.featuresTab;
    }
  }
}
