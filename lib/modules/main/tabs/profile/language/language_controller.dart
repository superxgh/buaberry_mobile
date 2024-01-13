

import 'package:buaberry_mobile/config.dart';

class LanguageController extends GetxController {
  var addressList = <AddressModel>[].obs;

  @override
  void onReady() {
    getData();
    super.onReady();
  }

  getData() {
    for (int i = 0; i < foAppArray.addressList.length; i++) {
      addressList.add(AddressModel.fromJson(foAppArray.addressList[i]));
    }
  }

}
