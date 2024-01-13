

import 'package:buaberry_mobile/config.dart';

class FavouriteBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<FavouriteController>(FavouriteController());
  }
}
