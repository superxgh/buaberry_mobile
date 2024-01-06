

import 'package:buaberry_mobile/config.dart';

class FoodShopShimmer extends StatelessWidget {
  const FoodShopShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: appController.appTheme.darkGray.withOpacity(.3),
        highlightColor: appController.appTheme.darkGray.withOpacity(.1),
        child:   GridView.builder(
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: foAppArray.shopList.length,
          itemBuilder: (context, index) {
            return const ColumnFoodShimmer();
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height /
                      (MediaQuery.of(context).size.width < 370
                          ? 1.3
                          : MediaQuery.of(context).size.width < 380
                          ? 1.0
                          : MediaQuery.of(context).size.width > 400
                          ? 1.2
                          : 1.8))),
        ).marginSymmetric(horizontal: Insets.i15,vertical: Insets.i20));
  }
}
