import 'package:buaberry_mobile/config.dart';
import 'package:buaberry_mobile/shared/widgets/text_fields/custom_text_field.dart';

class HomeWidget {

  // search for dessert
  Widget searchForDessert() {
    return CustomTextField(hinText: ThemeFont.searchForDessert)
        .marginSymmetric(horizontal: Insets.i15, vertical: Insets.i15);
  }

  // healthy list
  Widget displayHealthyLabel() => TitleAndSeeAllText(title: ThemeFont.healthyLabel);

  // breakfast list
  Widget displayBreakfastLabel() => TitleAndSeeAllText(title: ThemeFont.breakfastLabel);

  // dessert list
  Widget displayDessertLabel() => TitleAndSeeAllText(title: ThemeFont.dessertLabel);

  // dimsum list
  Widget displayDimSumLabel() => TitleAndSeeAllText(title: ThemeFont.dimsumLabel);

  // break snack list
  Widget displayBreakSnackLabel() => TitleAndSeeAllText(title: ThemeFont.breakSnackLabel);

}
