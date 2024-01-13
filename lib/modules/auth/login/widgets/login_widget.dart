import 'package:buaberry_mobile/config.dart';

class FoodLoginWidget {

  Widget displayInputText() => TextLabel(
        text: ThemeFont.loginInputScreenText,
        alignment: Alignment.center,
        fontFamily: FontFamily.LATO,
        fontSize: FontSizes.f30,
        fontWeight: FontWeight.bold,
        color: appController.appTheme.textColor
  );

  Widget loginWithUsernameAndPasswordLabel() => TextLabel(
      text: ThemeFont.loginWithUsernamePassword,
      alignment: Alignment.center,
      fontFamily: FontFamily.LATO,
      fontSize: FontSizes.f18,
      fontWeight: FontWeight.bold,
      color: appController.appTheme.foodContentColor
  );

  Widget usernameTextBox() => FoodTextBox(
      hinText: trans(ThemeFont.loginEnterUsername))
      .marginSymmetric(horizontal: Insets.i15);

  Widget passwordTextBox() => FoodTextBox(
      hinText: trans(ThemeFont.loginEnterPassword))
      .marginSymmetric(horizontal: Insets.i15);

  Widget loginWith() => TextLabel(
      text: ThemeFont.loginWith,
      alignment: Alignment.center,
      fontFamily: FontFamily.LATO,
      fontSize: FontSizes.f18,
      fontWeight: FontWeight.bold,
      color: appController.appTheme.foodContentColor
  );

  Widget loginWithUsernameAndPasswordButton({GestureTapCallback? onTap,title}) => CustomButton(
    title: title,
    radius: AppRadius.r10,
    color: appController.appTheme.foodPrimaryColor,
    fontColor: appController.appTheme.whiteColor,
    padding: Insets.i10,
    fontSize: FontSizes.f18,
    onTap: onTap,
  );
}
