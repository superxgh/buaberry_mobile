

import 'package:buaberry_mobile/config.dart';

class OrderHistoryController extends GetxController {
  var orderHistory = <OrderHistoryModel>[].obs;
  var isShimmer = false.obs;

  @override
  void onReady() {
    // TODO: implement onReady
    getData();
    super.onReady();
  }

  getData() async {
    isShimmer.value = true;
    update();
    for (int i = 0; i < foAppArray.orderHistory.length; i++) {
      orderHistory.add(OrderHistoryModel.fromJson(foAppArray.orderHistory[i]));
    }
    // update();
    await Future.delayed(Durations.ms150);
    isShimmer.value = false;
    // update();
  }

  void viewOrderDetail() {

  }

  void monitorOrderDetail() {

  }
}
