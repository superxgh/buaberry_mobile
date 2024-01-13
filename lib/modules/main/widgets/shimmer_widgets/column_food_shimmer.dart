
import 'package:buaberry_mobile/config.dart';

import 'grocery_shimmer.dart';

class ColumnFoodShimmer extends StatelessWidget {
  final bool iSFullWidth;
  const ColumnFoodShimmer({Key? key,this.iSFullWidth = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         GroceryShimmer(
            height: Sizes.s50, width: iSFullWidth ? MediaQuery.of(context).size.width : Sizes.s120, radius: 0),
        const VSpace(Sizes.s3),
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VSpace(Sizes.s15),
              const GroceryShimmer(
                  width: Sizes.s100, radius: AppRadius.r30),
              const VSpace(Sizes.s5),
              const GroceryShimmer(
                  width: Sizes.s80, radius: AppRadius.r30),
              const VSpace(Sizes.s8),
              const GroceryShimmer(
                  width: Sizes.s30, radius: AppRadius.r30),
              const VSpace(Sizes.s8),
              Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: const [
                    FittedBox(
                        child: GroceryShimmer(
                            width: Sizes.s50,
                            radius: AppRadius.r30)),
                    HSpace(Sizes.s35),
                    GroceryShimmer(
                        height: Sizes.s15,
                        width: Sizes.s15,
                        radius: AppRadius.r30)
                  ]),
            ])
            .foodShimmerExtension(hPadding: Insets.i10, radius: 0)
      ],
    );
  }
}
