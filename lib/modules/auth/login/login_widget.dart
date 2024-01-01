

import '../../../config.dart';

class FoodLoginWidget {
  //common text style
  Widget commonTextWithTitleColor(text) => Align(
    alignment: Alignment.center,
    child: Text(text,
            style: TextStyle(
              fontFamily: GoogleFonts.lato().fontFamily,
              fontWeight: FontWeight.bold,
              fontSize: FontSizes.f18,
              letterSpacing: 0,
              height: 1,
            )),
  );

  //food confirmation code
  Widget confirmationCode(String text) => Align(
    alignment: Alignment.center,
    child: FittedBox(
        child: Text(text,
            style: TextStyle(
              color: appController.appTheme.foodContentColor,
              fontFamily: GoogleFonts.lato().fontFamily,
              fontWeight: FontWeight.bold,
              fontSize: FontSizes.f18,
              letterSpacing: 0,
              height: 1,
            ))

    ),
  );

  Widget PhoneNumberLabel(String text) => Align(
    alignment: Alignment.centerLeft,
    child:Text(text,
            style: TextStyle(
              color: appController.appTheme.textColor,
              fontFamily: GoogleFonts.lato().fontFamily,
              fontWeight: FontWeight.bold,
              fontSize: FontSizes.f24,
              letterSpacing: 0,
              height: 1,
            ))
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
