
import 'package:buaberry_mobile/config.dart';
import 'package:get/get_core/src/get_main.dart';

export 'package:get/get.dart';
export 'package:buaberry_mobile/app_controller.dart';
export 'package:flutter/material.dart';
export 'package:get/get.dart';
export 'package:buaberry_mobile/shared/shared.dart';
export 'package:buaberry_mobile/theme/theme.dart';
export 'package:google_fonts/google_fonts.dart';
export 'package:flutter_svg/flutter_svg.dart';
export 'package:buaberry_mobile/modules/modules.dart';
export 'package:buaberry_mobile/routes/routes.dart';
export 'package:flutter/gestures.dart';

final appController = Get.isRegistered<AppController>()
    ? Get.find<AppController>()
    : Get.put(AppController());