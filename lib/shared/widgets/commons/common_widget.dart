

import 'package:buaberry_mobile/config.dart';

class CommonFoodWidget {
  // //common text style
  Widget commonTextWithTitleColor(String text) =>
      Align(
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
  // //defaultImage
  // Widget defaultImage(cardWidth, imageHeight) => Container(
  //     height: imageHeight,
  //     width: cardWidth,
  //     color: appCtrl.appTheme.lightGray,
  //     child: Image.asset(foImageAssets.foLogo,
  //         height: imageHeight, width: cardWidth, fit: BoxFit.contain));
}
