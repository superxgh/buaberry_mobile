
import '/../../config.dart';

class FoodAddressBookController extends GetxController {
  List<AddressModel> addressList = [];

  getData() {
    for (int i = 0; i < foAppArray.addressList.length; i++) {
      addressList.add(AddressModel.fromJson(foAppArray.addressList[i]));
    }
    update();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    getData();
    super.onReady();
  }
}
