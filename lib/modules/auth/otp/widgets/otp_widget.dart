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
          text: ThemeFont.verifyPhoneNumber,
          alignment: Alignment.center,
          fontFamily: FontFamily.LATO,
          fontSize: FontSizes.f18,
          fontWeight: FontWeight.bold));

  Widget confirmationCode() => Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Insets.i15),
        child: TextLabel(
            text: ThemeFont.sendCode,
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
            text: trans(ThemeFont.havingNumber),
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
                  text: trans(ThemeFont.resendAgain),
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

  Widget nextButton({GestureTapCallback? onTap}) => CustomButton(
        title: trans(commonFonts.continueTitle),
        radius: AppRadius.r10,
        color: appController.appTheme.foodPrimaryColor,
        fontColor: appController.appTheme.whiteColor,
        padding: Insets.i10,
        fontSize: FontSizes.f18,
        onTap: onTap,
      );
}
