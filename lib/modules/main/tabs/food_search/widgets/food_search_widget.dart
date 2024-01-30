import 'package:buaberry_mobile/config.dart';
import 'package:buaberry_mobile/shared/widgets/text_fields/custom_text_field.dart';

class FoodSearchWidget {

  // search for dessert
  Widget searchForDessert(FoodSearchController controller) {
    return CustomTextField(
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
