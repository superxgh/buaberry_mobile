

import 'package:buaberry_mobile/config.dart';
import 'package:buaberry_mobile/modules/main/tabs/profile/order_history/widgets/order_history_widget.dart';

class HistoryCard extends GetView<OrderHistoryController> {
  final OrderHistoryModel? orderHistoryModel;

  const HistoryCard({Key? key, this.orderHistoryModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FittedBox(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                ImageWidget().productLayout(orderHistoryModel!.image!),
                const HSpace(Sizes.s10),
                HistoryNameDetail(orderHistoryModel: orderHistoryModel)
              ]),
              HistoryStatus(status: orderHistoryModel!.status!)
            ],
          ),
        ),
        const VSpace(Sizes.s12),
        Divider(color: appController.appTheme.dividerColor, thickness: 1),
        ...orderHistoryModel!.items!
            .asMap()
            .entries
            .map((e) => HistoryItem(
                totalLength: orderHistoryModel!.items!.length - 1,
                index: e.key,
                items: e.value,
                status: orderHistoryModel!.status!,
        ))
            .toList(),

        Divider(color: appController.appTheme.dividerColor, thickness: 1),
        const VSpace(Sizes.s12),
        if (orderHistoryModel!.status! == commonFonts.processing) OrderHistoryWidget().monitorOrderButton(
            onTap: () => controller.viewOrderDetail(),
            title: commonFonts.monitorOrder
        ),
        if (orderHistoryModel!.status! == commonFonts.delivered) OrderHistoryWidget().viewOrderButton(
            onTap: () => controller.monitorOrderDetail(),
            title: commonFonts.viewOrderDetail
        )
        // RatingReorder(rating: orderHistoryModel!.rating)
      ],
    );
  }
}
