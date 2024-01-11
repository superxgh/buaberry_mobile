import 'package:buaberry_mobile/config.dart';

class HomeWidget {

  // search for dessert
  Widget searchForDessert() {
    return FoodTextBox(hinText: ThemeFont.searchForDessert)
        .marginSymmetric(horizontal: Insets.i15, vertical: Insets.i15);
  }
  // healthy list
  Widget displayHealthyLabel() => titleAndSeeAll(trans(ThemeFont.healthyLabel));

  //title and see all layout
  Widget titleAndSeeAll(title) => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      TextLabel(
        text: title,
        fontFamily: FontFamily.LATO,
        fontWeight: FontWeight.bold,
        fontSize: FontSizes.f16,
        color: appController.appTheme.foodTitleColor,
      ),
      TextLabel(
        text: commonFonts.seeAll,
        fontFamily: FontFamily.LATO,
        fontWeight: FontWeight.bold,
        fontSize: FontSizes.f16,
        color: appController.appTheme.foodPrimaryColor,
      ),
    ],
  ).marginSymmetric(horizontal: Insets.i15);
}
