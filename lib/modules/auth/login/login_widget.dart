

import 'package:buaberry_mobile/config.dart';

class FoodLoginWidget {
  //common text style
  Widget commonTextWithTitleColor(text) => Align(
    alignment: Alignment.center,
    child : TextLabel(
      text: text,
      alignment: Alignment.center,
      fontFamily: FontFamily.LATO,
      fontSize: FontSizes.f18,
      fontWeight: FontWeight.bold,
      color: appController.appTheme.foodContentColor,
    )
  );

  //food confirmation code
  Widget confirmationCode(String text) => Align(
    alignment: Alignment.center,
    child: FittedBox(
        child : TextLabel(
          text: text,
          alignment: Alignment.center,
          fontFamily: FontFamily.LATO,
          fontSize: FontSizes.f18,
          fontWeight: FontWeight.bold,
          color: appController.appTheme.foodContentColor,
        )

    ),
  );

  Widget PhoneNumberLabel(String text) => Align(
    alignment: Alignment.centerLeft,
    child : TextLabel(
      text: text,
      alignment: Alignment.center,
      fontFamily: FontFamily.LATO,
      fontSize: FontSizes.f24,
      fontWeight: FontWeight.bold,
      color: appController.appTheme.textColor,
    )
  );

//next button
  Widget nextButton({GestureTapCallback? onTap,title}) => FoodCustomButton(
        title: title,
        radius: AppRadius.r10,
        color: appController.appTheme.foodPrimaryColor,
        fontColor: appController.appTheme.whiteColor,
        padding: Insets.i10,
        fontSize: FontSizes.f18,
        onTap: onTap,
      );
}
