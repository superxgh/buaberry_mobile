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
      ]
    ),

    GetPage(
        name: Routes.PROFILE_FAVOURITE_ORDER,
        page: () => FoodFavouriteScreen()
    ),
    GetPage(
        name: Routes.PROFILE_ADDRESS_BOOK,
        page: () => FoodAddressBookScreen()
    ),
    GetPage(
        name: Routes.PROFILE_WALLETS,
        page: () => FoodPaymentScreen()
    ),
    GetPage(
        name: Routes.PROFILE_SAVED_BOOK,
        page: () => FoodPaymentScreen()
    ),
    GetPage(
        name: Routes.PROFILE_ENGLISH,
        page: () => FoodPaymentScreen()
    ),
    // GetPage(
    //   name: Routes.AUTH,
    //   page: () => AuthScreen(),
    //   binding: AuthBinding(),
    //   children: [
    //     GetPage(name: Routes.REGISTER, page: () => RegisterScreen()),
    //     GetPage(name: Routes.LOGIN, page: () => LoginScreen()),
    //   ],
    // ),
    // GetPage(name: Routes.HOME, page: () => HomeScreen(), binding: HomeBinding(), children: [
    //   GetPage(name: Routes.CARDS, page: () => CardsScreen()),
    // ]),
  ];
}
