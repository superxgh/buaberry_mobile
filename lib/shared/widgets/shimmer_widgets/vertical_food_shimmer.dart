

import 'package:buaberry_mobile/config.dart';

import 'grocery_shimmer.dart';

class VerticalFoodShimmer extends StatelessWidget {
  final bool isBottomShow;
  const VerticalFoodShimmer({Key? key,this.isBottomShow = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...foAppArray.healthyList
            .map((e) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: isBottomShow ?CrossAxisAlignment.end : CrossAxisAlignment.start,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const GroceryShimmer(
                              height: Sizes.s50,
                              width: Sizes.s50,
                              radius: AppRadius.r8),
                          const HSpace(Sizes.s15),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                GroceryShimmer(
                                    width: Sizes.s100, radius: AppRadius.r30),
                                VSpace(Sizes.s8),
                                GroceryShimmer(
                                    width: Sizes.s30, radius: AppRadius.r30),
                                VSpace(Sizes.s8),
                                GroceryShimmer(
                                    width: Sizes.s50, radius: AppRadius.r30)
                              ])
                        ]),
                    Row(children: const [
                      GroceryShimmer(
                          height: Sizes.s15,
                          width: Sizes.s15,
                          radius: AppRadius.r30),
                      HSpace(Sizes.s5),
                      GroceryShimmer(
                          height: Sizes.s8,
                          width: Sizes.s30,
                          radius: AppRadius.r30),
                    ])
                        // .foodShimmerExtension(
                        // radius: AppRadius.r5, vPadding: Insets.i5)
                  ],
                )
                    // .foodShimmerExtension(
                    //     hPadding: Insets.i15, radius: AppRadius.r8,vPadding: Insets.i18)
                    // .marginOnly(bottom: Insets.i15)
                )
            .toList()
      ],
    );
  }
}
