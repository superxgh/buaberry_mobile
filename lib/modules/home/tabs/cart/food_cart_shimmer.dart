

import 'package:buaberry_mobile/config.dart';
import 'package:buaberry_mobile/modules/home/tabs/cart/vertical_food_shimmer.dart';

import 'food_shimmer.dart';

class FoodCartShimmer extends StatelessWidget {
  const FoodCartShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: appController.appTheme.darkGray.withOpacity(.3),
        highlightColor: appController.appTheme.darkGray.withOpacity(.1),
        child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const FoodShimmer(width: Sizes.s100, radius: AppRadius.r8),
          const VSpace(Sizes.s15),
          const VerticalFoodShimmer(),
          const VSpace(Sizes.s15),
          const FoodShimmer(width: Sizes.s100, radius: AppRadius.r8),
          const VSpace(Sizes.s15),
          const VSpace(Sizes.s20),
          Column(children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  FoodShimmer(width: Sizes.s80, radius: AppRadius.r30),
                  FoodShimmer(width: Sizes.s50, radius: AppRadius.r30)
                ]),
            const VSpace(Sizes.s15),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  FoodShimmer(width: Sizes.s80, radius: AppRadius.r30),
                  FoodShimmer(width: Sizes.s50, radius: AppRadius.r30)
                ]),
            const VSpace(Sizes.s15),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  FoodShimmer(width: Sizes.s80, radius: AppRadius.r30),
                  FoodShimmer(width: Sizes.s50, radius: AppRadius.r30)
                ]),
            const VSpace(Sizes.s15),
            HorizontalDashDivider(
                color: appController.appTheme.darkGray.withOpacity(.3)),
            const VSpace(Sizes.s15),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  FoodShimmer(width: Sizes.s80, radius: AppRadius.r30),
                  FoodShimmer(width: Sizes.s50, radius: AppRadius.r30)
                ])
          ]),
              //   .foodShimmerExtension(
              // hPadding: Insets.i15, radius: AppRadius.r8,vPadding: Insets.i18),
        ]).marginSymmetric(horizontal: Insets.i15, vertical: Insets.i20)));
  }
}
