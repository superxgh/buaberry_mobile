import 'package:buaberry_mobile/config.dart';

class OrderHistoryScreen extends StatelessWidget {
  final orderHistoryController = Get.put(OrderHistoryController());

  OrderHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrderHistoryController>(builder: (_) {
      return Scaffold(
        backgroundColor: appController.appTheme.foodPrimaryLightColor,
        appBar: CommonAppBar(
            name: trans(ThemeFont.profile_menu_orders)),
        body: orderHistoryController.isShimmer
            ? const FoodHistoryShimmer()
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
                                      orderHistoryController.orderHistory[index])
                              .paddingSymmetric(
                                  horizontal: Insets.i12, vertical: Insets.i15)
                              .paddingOnly(bottom: Insets.i20),
                        ),
                    itemCount: orderHistoryController.orderHistory.length)
                .marginSymmetric(horizontal: Insets.i15, vertical: Insets.i20),
      );
    });
  }
}
