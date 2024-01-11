
import 'package:buaberry_mobile/config.dart';

export 'package:get/get.dart';
export 'package:buaberry_mobile/app_controller.dart';
export 'package:flutter/material.dart';
export 'package:buaberry_mobile/shared/shared.dart';
export 'package:buaberry_mobile/theme/theme.dart';
export 'package:google_fonts/google_fonts.dart';
export 'package:flutter_svg/flutter_svg.dart';
export 'package:buaberry_mobile/modules/modules.dart';
export 'package:buaberry_mobile/routes/routes.dart';
export 'package:flutter/gestures.dart';
export 'package:carousel_slider/carousel_slider.dart';
export 'package:buaberry_mobile/models/models.dart';
export 'package:shared_preferences/shared_preferences.dart';
export 'package:buaberry_mobile/shared/utils/logger.dart';
export 'package:shimmer/shimmer.dart';
export 'package:font_awesome_flutter/font_awesome_flutter.dart';
export 'package:get_storage/get_storage.dart';
export 'lang/translation_service.dart';
export 'package:date_time_format/date_time_format.dart';


final appController = Get.isRegistered<AppController>()
    ? Get.find<AppController>()
    : Get.put(AppController());

AppArray foAppArray = AppArray();
