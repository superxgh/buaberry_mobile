import 'package:buaberry_mobile/config.dart';
import 'package:buaberry_mobile/modules/main/tabs/offers/widgets/food_offer_list.dart';
import 'package:buaberry_mobile/shared/widgets/commons/style_extension.dart';

class OffersTab extends GetView<OfferController> {
  const OffersTab({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      const VSpace(Sizes.s20),
      //offers list
      Column(
        children: [
          ...controller.offerList
              .map((e) => FoodOfferList(offerModel: e).offerListExtension())
              .toList()
        ],
      ),
    ]));
  }
}
