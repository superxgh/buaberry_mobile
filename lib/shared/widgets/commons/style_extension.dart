
import 'package:buaberry_mobile/config.dart';

extension StyleExtension on Widget {
  //offer list extension
  Widget offerListExtension() {
    return Container(
        padding: EdgeInsets.only(
            top: Insets.i20,
          bottom: Insets.i20,
          left: Insets.i5,
          right: Insets.i5,
        ),
        child: this,
        decoration: BoxDecoration(color: appController.appTheme.whiteColor,
          borderRadius: BorderRadius.circular(12)
        )
    )
        .paddingSymmetric(vertical: Insets.i10, horizontal: Insets.i15);
        // .
        // .decorated(
        //     color: appController.appTheme.whiteColor,
        //     borderRadius: BorderRadius.circular(AppRadius.r8))
        // .boxShadow(
        //     color: appController.appTheme.foodShadowColor,
        //     blurRadius: 6,
        //     offset: const Offset(2, 3))
        // .paddingOnly(bottom: Insets.i20);
  }

  //profile list extension
  Widget profileListExtension() {
    return Container(child: this)
        .paddingSymmetric(vertical: Insets.i10)
        // .decorated(
        //     color: appController.appTheme.whiteColor,
        //     borderRadius: BorderRadius.circular(AppRadius.r8))
        // .boxShadow(
        //     color: appController.appTheme.foodShadowColor,
        //     blurRadius: 6,
        //     offset: const Offset(2, 3))
    ;
  }

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
