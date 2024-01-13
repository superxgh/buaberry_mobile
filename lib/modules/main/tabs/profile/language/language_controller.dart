

import 'package:buaberry_mobile/config.dart';

class LanguageController extends GetxController {

  var selectedLanguage = ThemeFont.profile_menu_english.obs;
  var  language = <String>[
    ThemeFont.profile_menu_english,
    ThemeFont.profile_menu_thai].obs;

  @override
  void onReady() {

    super.onReady();
  }

  void onClickRadioButton(value) {
    logger.d(": value = $value");
    selectedLanguage.value = value;
  }

  void changeLanguage() {
    logger.i("> changeLanguage(value)");
    logger.d(": selectedLanguage.value = ${selectedLanguage.value}");
  }
}
