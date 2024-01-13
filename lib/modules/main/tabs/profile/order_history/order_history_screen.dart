import 'package:buaberry_mobile/config.dart';

import 'widgets/history_card.dart';
import 'widgets/history_shimmer.dart';

class OrderHistoryScreen extends GetView<OrderHistoryController> {

  OrderHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appController.appTheme.foodPrimaryLightColor,
        appBar: CommonAppBar(
            name: trans(ThemeFont.profile_menu_order_history)),
        body: Obx(() {
            return controller.isShimmer.value
                ? const HistoryShimmer()
                : ListView.builder(
                        itemBuilder: (context, index) => Container(
                              decoration: BoxDecoration(
                                  color: appController.appTheme.whiteColor,
                                  borderRadius: BorderRadius.circular(AppRadius.r8),
                                  boxShadow: [
                                    BoxShadow(
                                        color:
                                            appController.appTheme.foodShadowColor,
                                        blurRadius: 6,
                                        offset: const Offset(2, 3))
                                  ]),
                              child: HistoryCard(
                                      orderHistoryModel:
                                      controller.orderHistory[index])
                                  .paddingSymmetric(
                                      horizontal: Insets.i12, vertical: Insets.i15)
                                  .paddingOnly(bottom: Insets.i20),
                            ),
                        itemCount: controller.orderHistory.length)
                    .marginSymmetric(horizontal: Insets.i15, vertical: Insets.i20);
          }
        ),
      );
  }
}
