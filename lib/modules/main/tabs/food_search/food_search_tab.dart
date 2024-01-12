

import 'package:buaberry_mobile/config.dart';
import 'package:buaberry_mobile/modules/main/tabs/food_search/recent_search_card.dart';

import 'food_search_widget.dart';

class FoodSearchTab extends GetView<FoodSearchController> {
  const FoodSearchTab({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            FoodSearchWidget().searchForDessert(controller),
            const VSpace(Sizes.s15),
            FoodSearchWidget().displayRecentSearchLabel(),
            const VSpace(Sizes.s15),
            //recent search
            ...controller.recentList
                .map((e) => RecentSearchCard(data: e))
                .toList(),
            const VSpace(Sizes.s20)
          ],
        ),
      ),
    );
  }
}
