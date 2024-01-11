import 'package:buaberry_mobile/config.dart';
import 'package:buaberry_mobile/modules/main/tabs/home/widgets/banner/banner_list.dart';
import 'package:buaberry_mobile/modules/main/tabs/home/widgets/healthy/healthy_list.dart';
import 'widgets/home_widget.dart';

class HomeTab extends GetView<HomeController> {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          HomeWidget().searchForDessert(),
          //banner layout
          const BannerList(),
          const VSpace(Sizes.s10),
          //cuisine list
          const PopularDessertList(),
          const VSpace(Sizes.s20),
          //food instruction
          // const InstructionLayout(),
          // const VSpace(Sizes.s20),

          //near by layout

          HomeWidget().displayHealthyLabel(),
          const VSpace(Sizes.s12),
          const HealthyList(),
          const VSpace(Sizes.s20),



          //featured restaurant
          HomeWidget()
              .titleAndSeeAll(trans(ThemeFont.featuredRestaurant)),
          const VSpace(Sizes.s15),
          Obx(() {
            return (controller.featuredRestaurantList.length == 0)
                ? Container()
                : RowListLayout(productList: controller.featuredRestaurantList)
                    .marginSymmetric(horizontal: Insets.i15);
          }),
          const VSpace(Sizes.s24),
          HomeWidget().titleAndSeeAll(trans(ThemeFont.mustTry)),
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
