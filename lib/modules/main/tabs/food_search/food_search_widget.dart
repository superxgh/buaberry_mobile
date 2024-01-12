import 'package:buaberry_mobile/config.dart';

class FoodSearchWidget {

  // search for dessert
  Widget searchForDessert(FoodSearchController controller) {
    return FoodTextBox(
        controller: controller.searchTextController ,
        hinText: ThemeFont.searchForDessert
    ).marginSymmetric(horizontal: Insets.i15, vertical: Insets.i15);
  }

  // recent search label
  Widget displayRecentSearchLabel() => TitleAndSeeAllText(
      title: ThemeFont.recentSearch,
      isShowSeeAll: false,
  );
  // dessert search label
  Widget displayDessertSearchLabel(int recAmount) => TitleAndSeeAllText(
      title: ThemeFont.dessertItemLabel,
      isShowSeeAll: false,
    recAmount: recAmount,
  );


}
