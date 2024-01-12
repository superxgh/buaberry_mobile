import 'package:buaberry_mobile/config.dart';
import 'package:buaberry_mobile/modules/main/tabs/home/widgets/banner/banner_list.dart';
import 'package:buaberry_mobile/modules/main/tabs/home/widgets/popular_dessert_list.dart';
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
          Obx(() {
            return (controller.healthyList.length == 0)
                ? Container()
                : ColListLayout(productList: controller.healthyList)
                .marginSymmetric(horizontal: Insets.i15);
          }),
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

          // dessert list
          HomeWidget().displayDessertLabel(),
          const VSpace(Sizes.s12),
          Obx(() {
            return (controller.dessertList.length == 0)
                ? Container()
                : RowListLayout(productList: controller.dessertList)
                .marginSymmetric(horizontal: Insets.i15);
          }),
          const VSpace(Sizes.s20),

          // dimsum list
          HomeWidget().displayDimSumLabel(),
          const VSpace(Sizes.s12),
          Obx(() {
            return (controller.dimsumList.length == 0)
                ? Container()
                : RowListLayout(productList: controller.dimsumList)
                .marginSymmetric(horizontal: Insets.i15);
          }),
          const VSpace(Sizes.s20),

          // breaksnack list
          HomeWidget().displayBreakSnackLabel(),
          const VSpace(Sizes.s12),
          Obx(() {
            return (controller.breakSnackList.length == 0)
                ? Container()
                : RowListLayout(productList: controller.breakSnackList)
                .marginSymmetric(horizontal: Insets.i15);
          }),
          const VSpace(Sizes.s20)


        ],
      ),
    );
  }
}
