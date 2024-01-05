
import 'package:buaberry_mobile/config.dart';

class OrderHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<OrderHistoryController>(OrderHistoryController());
  }
}
