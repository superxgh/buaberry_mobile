

import 'package:buaberry_mobile/config.dart';
import 'package:buaberry_mobile/modules/main/tabs/profile/order_history/widgets/rating_reorder.dart';

import 'hisory_name_detail.dart';
import 'history_item.dart';
import 'history_status.dart';

class HistoryCard extends StatelessWidget {
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
                FoodRestaurantWidget().imageLayout(orderHistoryModel!.image!),
                const HSpace(Sizes.s10),
                HistoryNameDetail(orderHistoryModel: orderHistoryModel)
              ]),
              HistoryStatus(status: trans(orderHistoryModel!.status!))
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
                items: e.value))
            .toList(),
        Divider(color: appController.appTheme.dividerColor, thickness: 1),
        const VSpace(Sizes.s12),
        RatingReorder(rating: orderHistoryModel!.rating)
      ],
    );
  }
}
