

import 'package:buaberry_mobile/config.dart';

import 'food_home_widget.dart';
import 'food_instruction.dart';
import 'home_banner_layout.dart';
import 'near_by.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            FoodTextBox(hinText: FoodOrderingThemeFont.searchForDessert)
                .marginSymmetric(
                horizontal: Insets.i15, vertical: Insets.i15),
            //banner layout
            const HomeBannerLayout(),
            const VSpace(Sizes.s10),
            //cuisine list
            const CuisineList(),
            const VSpace(Sizes.s20),
            //food instruction
            const FoodInstructionLayout(),
            const VSpace(Sizes.s20),

            //near by layout
            const NearByLayout(),
            const VSpace(Sizes.s20),
            FoodHomeWidget().titleAndSeeAll(
                trans(FoodOrderingThemeFont.featuredRestaurant)),
            const VSpace(Sizes.s15),
          ],
      ),
    );
  }
}
