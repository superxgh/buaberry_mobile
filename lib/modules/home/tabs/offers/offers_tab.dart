

import 'package:buaberry_mobile/config.dart';

class OffersTab extends GetView<OfferController> {
  const OffersTab({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        //search text box
        FoodTextBox(
        controller: controller.controller,
        hinText: trans(FoodOrderingThemeFont.searchForOffer),
      ),
      const VSpace(Sizes.s20),
      //offers list
      Column(
        children: [
          ...controller.offerList
              .map((e) => FoodOfferList(offerModel: e).offerListExtension()
          )
              .toList()
        ],
      ),
    );
  }
}
