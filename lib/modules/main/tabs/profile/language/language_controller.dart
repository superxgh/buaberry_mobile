

import 'package:buaberry_mobile/config.dart';

class LanguageController extends GetxController {

  var selectedLanguage = ThemeFont.profileMenuEnglish.obs;
  var  language = <String>[
    ThemeFont.profileMenuEnglish,
    ThemeFont.profileMenuThai].obs;

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
