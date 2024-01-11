import 'package:buaberry_mobile/config.dart';

class FoodLoginWidget {

  Widget enterYourUsernameAndPasswordText() => TextLabel(
        text: ThemeFont.login_input_username_password_text,
        alignment: Alignment.center,
        fontFamily: FontFamily.LATO,
        fontSize: FontSizes.f18,
        fontWeight: FontWeight.bold,
        color: appController.appTheme.foodContentColor
  );

  Widget enterYourUsernameAndPasswordDescriptionText() => Align(
    alignment: Alignment.center,
    child: FittedBox(
        child : TextLabel(
          text: ThemeFont.login_input_username_password_description_text,
          alignment: Alignment.center,
          fontFamily: FontFamily.LATO,
          fontSize: FontSizes.f18,
          fontWeight: FontWeight.bold,
          color: appController.appTheme.foodContentColor,
        )

    ),
  );

  Widget loginWithUsernameAndPasswordLabel() => TextLabel(
      text: ThemeFont.login_with_username_pasword,
      alignment: Alignment.center,
      fontFamily: FontFamily.LATO,
      fontSize: FontSizes.f18,
      fontWeight: FontWeight.bold,
      color: appController.appTheme.foodContentColor
  );

  Widget usernameTextBox() => FoodTextBox(
      hinText: trans(ThemeFont.login_enter_username))
      .marginSymmetric(horizontal: Insets.i15);

  Widget passwordTextBox() => FoodTextBox(
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
