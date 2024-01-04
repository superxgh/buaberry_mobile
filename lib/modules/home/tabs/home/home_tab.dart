import 'package:buaberry_mobile/config.dart';
import 'widgets/instruction.dart';
import 'widgets/home_widget.dart';
import 'widgets/banner/banner_layout.dart';
import 'widgets/near_by/near_by_layout.dart';

class HomeTab extends GetView<HomeController> {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          FoodTextBox(hinText: FoodOrderingThemeFont.searchForDessert)
              .marginSymmetric(horizontal: Insets.i15, vertical: Insets.i15),
          //banner layout
          const BannerLayout(),
          const VSpace(Sizes.s10),
          //cuisine list
          const CuisineList(),
          const VSpace(Sizes.s20),
          //food instruction
          const InstructionLayout(),
          const VSpace(Sizes.s20),

          //near by layout
          const NearByLayout(),
          const VSpace(Sizes.s20),
          HomeWidget()
              .titleAndSeeAll(trans(FoodOrderingThemeFont.featuredRestaurant)),
          const VSpace(Sizes.s15),

          //featured restaurant
          Obx(() {
            return (controller.featuredRestaurantList.length == 0)
                ? Container()
                : RowListLayout(productList: controller.featuredRestaurantList)
                    .marginSymmetric(horizontal: Insets.i15);
          }),
          const VSpace(Sizes.s24),
          HomeWidget().titleAndSeeAll(trans(FoodOrderingThemeFont.mustTry)),
          const VSpace(Sizes.s15),

          //must try
          Obx(() {
            return (controller.mustTryList.length == 0)
                ? Container()
                : RowListLayout(productList: controller.mustTryList)
                    .marginSymmetric(horizontal: Insets.i15);
          }),
          const VSpace(Sizes.s100)
        ],
      ),
    );
  }
}
