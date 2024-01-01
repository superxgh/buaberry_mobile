

import 'package:buaberry_mobile/config.dart';

import 'food_home_widget.dart';

class NearByLayout extends StatelessWidget {
  const NearByLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (homeCtrl) {
      return Column(
        children: [
          FoodHomeWidget().titleAndSeeAll(trans(FoodOrderingThemeFont.nearByRestaurant)),
          const VSpace(Sizes.s12),
          ...homeCtrl.nearByList.map((e) {
            return NearByCard(
              product: e,
            ).marginSymmetric(horizontal: Insets.i15);
          }).toList()
        ],
      );
    });
  }
}
