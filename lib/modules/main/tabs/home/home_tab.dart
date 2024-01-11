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

          //banner list
          const BannerList(),
          const VSpace(Sizes.s10),

          //popular dessert list
          const PopularDessertList(),
          const VSpace(Sizes.s20),

          // Healthy list
          HomeWidget().displayHealthyLabel(),
          const VSpace(Sizes.s12),
          const HealthyList(),
          const VSpace(Sizes.s20),



          // Breakfast list
          HomeWidget().displayBreakfastLabel(),
          const VSpace(Sizes.s12),
          Obx(() {
            return (controller.breakfastList.length == 0)
                ? Container()
                : RowListLayout(productList: controller.breakfastList)
                    .marginSymmetric(horizontal: Insets.i15);
          }),
          const VSpace(Sizes.s20),


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
