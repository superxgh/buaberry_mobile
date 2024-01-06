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
      name: Routes.ON_BOARD,
      page: () => OnBoardScreen(),
      binding: OnBoardBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.OTP,
      page: () => OTPScreen(),
      binding: OTPBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => MainScreen(),
      binding: MainBinding(),
    ),
    GetPage(
      name: Routes.PROFILE_ORDER,
      page: () => OrderHistoryScreen()
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
