import '../../../../../../config.dart';

class OTPWidget {
  //common decoration
  OutlineInputBorder decoration() => OutlineInputBorder(
      borderSide: BorderSide(
        color: appController.appTheme.whiteColor,
      ),
      borderRadius: BorderRadius.circular(AppRadius.r10));

  //resend again
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

//common text style
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

  //food confirmation code
  Widget confirmationCode(String text) => Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Insets.i15),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: GoogleFonts.lato().fontFamily,
            fontWeight: FontWeight.w400,
            fontSize: FontSizes.f16,
            letterSpacing: 0,
            height: 1,
          ),
        ),
      ));

  // next button
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
