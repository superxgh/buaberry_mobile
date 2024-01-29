import 'package:buaberry_mobile/config.dart';

class FoodLoginWidget {

  Widget displayInputText() => TextLabel(
        text: ThemeFont.login_input_screen_text,
        alignment: Alignment.center,
        fontFamily: FontFamily.LATO,
        fontSize: FontSizes.f30,
        fontWeight: FontWeight.bold,
        color: appController.appTheme.textColor
  );

  Widget loginWithUsernameAndPasswordLabel() => TextLabel(
      text: ThemeFont.login_with_username_pasword,
      alignment: Alignment.center,
      fontFamily: FontFamily.LATO,
      fontSize: FontSizes.f18,
      fontWeight: FontWeight.bold,
      color: appController.appTheme.foodContentColor
  );

  Widget usernameTextBox() => CustomTextField(
      hinText: trans(ThemeFont.login_enter_username))
      .marginSymmetric(horizontal: Insets.i15);

  Widget passwordTextBox() => CustomTextField(
      hinText: trans(ThemeFont.login_enter_password))
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
