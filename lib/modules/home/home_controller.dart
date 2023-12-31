import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:buaberry_mobile/modules/home/tabs/tabs.dart';

class HomeController extends GetxController {
  var currentTab = MainTabs.Features.obs;
  late HomeTab featuresTab;
  late MenuTab bbbTab;
  late LiveTab liveTab;
  late NotifyTab notifyTab;
  late MeTab meTab;

  @override
  void onInit() {
    super.onInit();
    featuresTab = HomeTab();
    bbbTab = MenuTab();
    liveTab = LiveTab();
    notifyTab = NotifyTab();
    meTab = MeTab();
  }

  @override
  void onReady() async {
    super.onReady();

    await Future.delayed(Duration(milliseconds: 2000));
    var storage = Get.find<SharedPreferences>();
    // try {
    //   if (storage.getString(StorageConstants.token) != null) {
    //     Get.toNamed(Routes.HOME);
    //   } else {
    //     Get.toNamed(Routes.AUTH);
    //   }
    // } catch (e) {
    //   Get.toNamed(Routes.AUTH);
    // }
  }

  void switchTab(index) {
    var tab = _getCurrentTab(index);
    currentTab.value = tab;
  }

  int getCurrentIndex(MainTabs tab) {
    switch (tab) {
      case MainTabs.Features:
        return 0;
      case MainTabs.BBB:
        return 1;
      case MainTabs.Live:
        return 2;
      case MainTabs.Nofity:
        return 3;
      case MainTabs.Me:
        return 4;
      default:
        return 0;
    }
  }

  MainTabs _getCurrentTab(int index) {
    switch (index) {
      case 0:
        return MainTabs.Features;
      case 1:
        return MainTabs.BBB;
      case 2:
        return MainTabs.Live;
      case 3:
        return MainTabs.Nofity;
      case 4:
        return MainTabs.Me;
      default:
        return MainTabs.Features;
    }
  }
}
