import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'en_US.dart';
import 'th_TH.dart';

class TranslationService extends Translations {
  static Locale? get locale => Get.deviceLocale;
  static final fallbackLocale = Locale('th', 'TH');
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': en_US,
        'th_TH': th_TH,
      };
}
