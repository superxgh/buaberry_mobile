

import 'package:buaberry_mobile/config.dart';

class FoodPaymentController extends GetxController {
  List<PaymentModel> paymentList = [];
  String price = "0";

  getData() {
    for (int i = 0; i < foAppArray.paymentMethod.length; i++) {
      paymentList.add(PaymentModel.fromJson(foAppArray.paymentMethod[i]));
    }
    price = Get.arguments ?? "";
    update();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    getData();
    super.onReady();
  }
}
