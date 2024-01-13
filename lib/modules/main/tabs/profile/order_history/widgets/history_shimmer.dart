

import 'package:buaberry_mobile/config.dart';

class HistoryShimmer extends StatelessWidget {
  const HistoryShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: appController.appTheme.darkGray.withOpacity(.3),
        highlightColor: appController.appTheme.darkGray.withOpacity(.1),
        child:   ListView.builder(
            itemBuilder: (context, index) => Column(
              children: [
                Row(
                  children: const [
                    FoodShimmer(height: Sizes.s50,width: Sizes.s50)

                  ],
                )
              ],
            )
                .paddingOnly(bottom: Insets.i20),
            itemCount: foAppArray.orderHistory.length)
            .marginSymmetric(horizontal: Insets.i15, vertical: Insets.i20));
  }
}
