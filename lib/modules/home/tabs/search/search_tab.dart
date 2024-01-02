

import 'package:buaberry_mobile/config.dart';
import 'package:buaberry_mobile/modules/home/tabs/search/recent_search_card.dart';

class SearchTab extends GetView<HomeController> {
  const SearchTab({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                FoodTextBox(
                  controller: controller.searchTextController,
                  hinText: FoodOrderingThemeFont.searchForRestaurant,
                ),
                const VSpace(Sizes.s15),
                TextLabel(
                  text: FoodOrderingThemeFont.recentSearch,
                  alignment: Alignment.centerLeft,
                  fontFamily: FontFamily.LATO,
                  fontWeight: FontWeight.bold,
                  fontSize: FontSizes.f16,
                  color: appController.appTheme.foodTitleColor,
                ),
                const VSpace(Sizes.s15),
                //recent search
                ...controller.recentList
                    .map((e) => RecentSearchCard(data: e))
                    .toList(),
                const VSpace(Sizes.s20),
                TextLabel(
                  text: FoodOrderingThemeFont.topCuisine,
                  fontFamily: FontFamily.LATO,
                  fontWeight: FontWeight.bold,
                  fontSize: FontSizes.f16,
                  color: appController.appTheme.foodTitleColor,
                ),
                const VSpace(Sizes.s15),
              ],
            ),
            const CuisineList()
          ],
        ),
      ),
    );
  }
}
