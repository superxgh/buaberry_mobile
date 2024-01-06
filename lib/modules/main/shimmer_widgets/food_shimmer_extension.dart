import 'package:buaberry_mobile/config.dart';

extension FoodExtension on Widget {
  Widget foodShimmerExtension(
      {double hPadding = 10, double vPadding = 10, double radius = 30}) {
    return Container(
      child: this,
      decoration: BoxDecoration(
          color: appController.appTheme.foodContentColor.withOpacity(.5),
          borderRadius: BorderRadius.circular(radius)),
    ).paddingSymmetric(horizontal: hPadding, vertical: vPadding);
  }
}
