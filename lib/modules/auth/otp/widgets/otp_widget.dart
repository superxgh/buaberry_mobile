import '../../../../../../config.dart';

class OTPWidget {
  OutlineInputBorder decoration() => OutlineInputBorder(
      borderSide: BorderSide(
        color: appController.appTheme.whiteColor,
      ),
      borderRadius: BorderRadius.circular(AppRadius.r10));

  Widget verifyPhoneNumber() => Align(
      alignment: Alignment.center,
      child: TextLabel(
          text: FoodOrderingThemeFont.verifyPhoneNumber,
          alignment: Alignment.center,
          fontFamily: FontFamily.LATO,
          fontSize: FontSizes.f18,
          fontWeight: FontWeight.bold));

  Widget confirmationCode() => Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Insets.i15),
        child: TextLabel(
            text: FoodOrderingThemeFont.sendCode,
            alignment: Alignment.center,
            fontFamily: FontFamily.LATO,
            fontSize: FontSizes.f18,
            fontWeight: FontWeight.w400),
      ));

  Widget resendAgain({GestureTapCallback? onTap}) => Align(
        alignment: Alignment.center,
        child: RichText(
          text: TextSpan(
            recognizer: TapGestureRecognizer()..onTap = onTap,
            text: trans(FoodOrderingThemeFont.havingNumber),
            style: TextStyle(
              color: appController.appTheme.foodContentColor,
              fontFamily: GoogleFonts.lato().fontFamily,
              fontWeight: FontWeight.w400,
              fontSize: FontSizes.f16,
              letterSpacing: 0,
              height: 1,
            ),
            children: <TextSpan>[
              TextSpan(
                  text: trans(FoodOrderingThemeFont.resendAgain),
                  style: TextStyle(
                    color: appController.appTheme.foodPrimaryColor,
                    fontFamily: GoogleFonts.lato().fontFamily,
                    fontWeight: FontWeight.w400,
                    fontSize: FontSizes.f16,
                    letterSpacing: 0,
                    height: 1,
                  ))
            ],
          ),
        ),
      );

  Widget commonTextWithTitleColor(String text) => Align(
      alignment: Alignment.center,
      child: Text(text,
          style: TextStyle(
            fontFamily: GoogleFonts.lato().fontFamily,
            fontWeight: FontWeight.bold,
            fontSize: FontSizes.f18,
            letterSpacing: 0,
            height: 1,
          )));

  Widget nextButton({GestureTapCallback? onTap, title}) => FoodCustomButton(
        title: title,
        radius: AppRadius.r10,
        color: appController.appTheme.foodPrimaryColor,
        fontColor: appController.appTheme.whiteColor,
        padding: Insets.i10,
        fontSize: FontSizes.f18,
        onTap: onTap,
      );
}
