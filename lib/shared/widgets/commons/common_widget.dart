import '../../../config.dart';

class CommonFoodWidget {
  // //common text style
  Widget commonTextWithTitleColor(AppController appController, String text) =>
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
  // //food confirmation code
  // Widget confirmationCode(text) => Text(text,textAlign: TextAlign.center,
  //     style: AppCss.latoRegular16
  //         .textColor(appCtrl.appTheme.foodContentColor)
  //         .textHeight(1.1))
  //     .marginSymmetric(horizontal: Insets.i15)
  //     .alignment(Alignment.center);
  //
  // //next button
  // Widget nextButton({GestureTapCallback? onTap, title}) => FoodCustomButton(
  //   title: title,
  //   radius: AppRadius.r10,
  //   color: appCtrl.appTheme.foodPrimaryColor,
  //   padding: Insets.i10,
  //   fontSize: FontSizes.f18,
  //   onTap: onTap,
  // ).marginOnly(bottom: Sizes.s20, top: 50);
  //
  // //defaultImage
  // Widget defaultImage(cardWidth, imageHeight) => Container(
  //     height: imageHeight,
  //     width: cardWidth,
  //     color: appCtrl.appTheme.lightGray,
  //     child: Image.asset(foImageAssets.foLogo,
  //         height: imageHeight, width: cardWidth, fit: BoxFit.contain));
}
