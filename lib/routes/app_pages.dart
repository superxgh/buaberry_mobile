import 'package:buaberry_mobile/modules/modules.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.ON_BOARD,
      page: () => OnBoardScreen(),
      binding: OnBoardBinding(),
    ),
    GetPage(
      name: Routes.OTP,
      page: () => OTPScreen(),
      binding: OTPBinding(),
    ),
    GetPage(
      name: Routes.MAIN,
      page: () => MainScreen(),
      binding: MainBinding(),
      children: [
        GetPage(
            name: Routes.PROFILE_ORDER_HISTORY,
            binding: OrderHistoryBinding(),
            page: () => OrderHistoryScreen()
        ),
        GetPage(
            name: Routes.PROFILE_FAVOURITE_ORDER,
            binding: FavouriteBinding(),
            page: () => FavouriteScreen()
        ),
        GetPage(
            name: Routes.PROFILE_SHIPPING_ADDRESS,
            binding: ShippingAddressBinding(),
            page: () => ShippingAddressScreen()
        ),
        GetPage(
            name: Routes.PROFILE_LANGUAGE,
            binding: LanguageBinding(),
            page: () => LanguageScreen()
        ),
      ]
    )
  ];
}
