

import 'package:buaberry_mobile/config.dart';
import '../home_widget.dart';
import 'near_by_card.dart';

class NearByLayout extends StatelessWidget {
  const NearByLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(builder: (homeCtrl) {
      return Column(
        children: [
          HomeWidget().titleAndSeeAll(trans(FoodOrderingThemeFont.nearByRestaurant)),
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
