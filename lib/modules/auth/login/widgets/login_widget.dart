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

}
