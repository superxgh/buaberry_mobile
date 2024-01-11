

import '../../../config.dart';

class OTPController extends GetxController {

  final TextEditingController fieldOne = TextEditingController();
  final TextEditingController fieldTwo = TextEditingController();
  final TextEditingController fieldThree = TextEditingController();
  final TextEditingController fieldFour = TextEditingController();
  final TextEditingController fieldFive = TextEditingController();
  final TextEditingController fieldSix = TextEditingController();

  @override
  void onReady() async {
    super.onReady();
  }

  void login() {
    PageRouter.gotoMainScreen();
  }
}
