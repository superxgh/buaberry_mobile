import 'package:buaberry_mobile/config.dart';

class FoodLoginWidget {

  Widget enterYourPhoneNumber() => TextLabel(
        text: FoodOrderingThemeFont.enterYourPhoneNumber,
        alignment: Alignment.center,
        fontFamily: FontFamily.LATO,
        fontSize: FontSizes.f18,
        fontWeight: FontWeight.bold,
        color: appController.appTheme.foodContentColor
  );

  Widget confirmationCode() => Align(
    alignment: Alignment.center,
    child: FittedBox(
        child : TextLabel(
          text: FoodOrderingThemeFont.confirmationCode,
          alignment: Alignment.center,
          fontFamily: FontFamily.LATO,
          fontSize: FontSizes.f18,
          fontWeight: FontWeight.bold,
          color: appController.appTheme.foodContentColor,
        )

    ),
  );

  Widget phoneNumberLabel() => TextLabel(
      text: commonFonts.phoneNumber,
      alignment: Alignment.center,
      fontFamily: FontFamily.LATO,
      fontSize: FontSizes.f24,
      fontWeight: FontWeight.bold,
      color: appController.appTheme.textColor
  );

  Widget phoneNumberTextBox() => FoodTextBox(
      hinText: trans(FoodOrderingThemeFont.enterPhoneNumber))
      .marginSymmetric(horizontal: Insets.i15);

  Widget loginWith() => TextLabel(
      text: FoodOrderingThemeFont.loginWith,
      alignment: Alignment.center,
      fontFamily: FontFamily.LATO,
      fontSize: FontSizes.f18,
      fontWeight: FontWeight.bold,
      color: appController.appTheme.foodContentColor
  );

  Widget nextButton({GestureTapCallback? onTap,title}) => CustomButton(
    title: title,
    radius: AppRadius.r10,
    color: appController.appTheme.foodPrimaryColor,
    fontColor: appController.appTheme.whiteColor,
    padding: Insets.i10,
    fontSize: FontSizes.f18,
    onTap: onTap,
  );
}
