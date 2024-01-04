


import '../../../../../../config.dart';

class FoodOtpWidget {
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
                  )
              )
            ],
          ),
        ),
  );
}
