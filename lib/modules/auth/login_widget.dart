
import 'package:flutter/cupertino.dart';

class FoodLoginWidget {
  //common text style
  Widget commonTextWithTitleColor(text) => Text(text,
          style: AppCss.latoSemiBold18
              .letterSpace(.8)
              .textColor(appCtrl.appTheme.foodTitleColor))
      .alignment(Alignment.center);

  //food confirmation code
  Widget confirmationCode(text) => FittedBox(
        child: Text(text,
                style: AppCss.latoRegular18
                    .letterSpace(.8)
                    .textColor(appCtrl.appTheme.foodContentColor))
            .marginSymmetric(horizontal: Insets.i40),
      );

  //next button
  Widget nextButton({GestureTapCallback? onTap,title}) => FoodCustomButton(
        title: title,
        radius: AppRadius.r10,
        color: appCtrl.appTheme.foodPrimaryColor,
        padding: Insets.i10,
        fontSize: FontSizes.f18,
        onTap: onTap,
      ).marginOnly(bottom: Sizes.s20);
}
