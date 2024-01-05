import 'package:buaberry_mobile/config.dart';
import 'package:buaberry_mobile/modules/main/tabs/profile/order_history/widgets/history_card.dart';
import 'order_history_controller.dart';

class OrderHistoryScreen extends StatelessWidget {
  final historyCtrl = Get.put(OrderHistoryController());

  OrderHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrderHistoryController>(builder: (_) {
      return  Scaffold(
          backgroundColor: appController.appTheme.foodPrimaryLightColor,
          appBar: CommonAppBar(name: trans(FoodOrderingThemeFont.profile_menu_orders)),
          body: historyCtrl.isShimmer ?const FoodHistoryShimmer() : ListView.builder(
                  itemBuilder: (context, index) => HistoryCard(orderHistoryModel:historyCtrl.orderHistory[index])
                          .paddingSymmetric(
                              horizontal: Insets.i12, vertical: Insets.i15)
                          // .decorated(
                          //     color: appController.appTheme.whiteColor,
                          //     borderRadius: BorderRadius.circular(AppRadius.r8))
                          // .boxShadow(
                          //     color: appController.appTheme.foodShadowColor,
                          //     blurRadius: 6,
                          //     offset: const Offset(2, 3))
                          .paddingOnly(bottom: Insets.i20),
                  itemCount: historyCtrl.orderHistory.length)
              .marginSymmetric(horizontal: Insets.i15, vertical: Insets.i20),
        );
    });
  }
}
