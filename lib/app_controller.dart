

import 'dart:async';

import 'package:buaberry_mobile/config.dart';

class AppController extends GetxController {
  AppTheme _appTheme = AppTheme.fromType(ThemeType.light);
  AppTheme get appTheme => _appTheme;
  int selectedIndex = 0;
  bool isTheme = false;
  bool isRTL = false;
  String languageVal = "in";
  int currVal = 1;
  String priceSymbol = "\$";
  dynamic currencyVal;
  double rateValue = 1.0;
  List drawerList = [];
  final dateTime = DateTime.now().obs;


//list of bottommost page
//   List<Widget> widgetOptions = <Widget>[
//     FullApp(),
//     Elements(),
//     ScreenPage(),
//     WidgetPage()
//   ];


  @override
  void onInit() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      dateTime.value  = DateTime.now();
    });
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    // getData();
    // rateValue = double.parse(mainAppArray.currencyList[0]['INR'].toString());
    // update();
    super.onReady();
  }

  // update theme
  updateTheme(theme) {
    _appTheme = theme;
    Get.forceAppUpdate();
  }


  //get data from storage
  // getData()async{
  //   //theme check
  //   bool loadThemeFromStorage = storage.read('isDarkMode') ?? false;
  //   if (loadThemeFromStorage) {
  //     isTheme = true;
  //   } else {
  //     isTheme = false;
  //   }
  //
  //   update();
  //   await storage.write("isDarkMode", isTheme);
  //   ThemeService().switchTheme(isTheme);
  //   update();
  //   Get.forceAppUpdate();
  // }


//currency change
//   currencyChange(val, code) async {
//     currencyVal = storage.read('currencyVal') ?? mainAppArray.currencyList[0];
//     priceSymbol = val['symbol'];
//
//     rateValue = currencyVal[code];
//     update();
//     update();
//     Get.forceAppUpdate();
//     await storage.write('currencyVal', val);
//     Get.back();
//   }


}
