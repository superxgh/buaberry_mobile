

import 'package:buaberry_mobile/config.dart';

class OrderHistoryController extends GetxController {
  List<OrderHistoryModel> orderHistory = [];
  bool isShimmer = false;

  @override
  void onReady() {
    // TODO: implement onReady
    getData();
    super.onReady();
  }

  getData() async {
    isShimmer = true;
    update();
    for (int i = 0; i < foAppArray.orderHistory.length; i++) {
      orderHistory.add(OrderHistoryModel.fromJson(foAppArray.orderHistory[i]));
    }
    update();
    await Future.delayed(Durations.ms150);
    isShimmer = false;
    update();
  }


}
