import '/../../config.dart';

class OnBoardWidget {
  //bg image
  Widget bgImage(image) => Image.asset(
        image,
        fit: BoxFit.fill,
        width: MediaQuery.of(Get.context!).size.width,
        height: Sizes.s250,
      );

  //onboard image
  Widget onBoardImage(image) => Image.asset(
        image,
        width: MediaQuery.of(Get.context!).size.width,
        height: Sizes.s160,
      );

  //on board title
  Widget onBoardTitle(AppController appController, String title) => Padding(
    padding: EdgeInsets.symmetric(horizontal: Insets.i25),
    child: Text(title,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: appController.appTheme.foodTitleColor,
          fontFamily: GoogleFonts.lato().fontFamily,
          fontSize: FontSizes.f30,
          fontWeight: FontWeight.bold,
          letterSpacing: 0,
          height: 1,
        )),
  );

  //on board desc
  Widget onBoardDesc(AppController appController, String title) => Padding(
    padding: EdgeInsets.symmetric(horizontal: Insets.i25),
    child: Text(title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: appController.appTheme.foodContentColor,
              fontFamily: GoogleFonts.nunitoSans().fontFamily,
              fontSize: FontSizes.f20,
              fontWeight: FontWeight.w400,
              letterSpacing: 0,
              height: 1,
            )),
  );

  //button
  Widget button(AppController appController, {GestureTapCallback? onTap}) => FoodCustomButton(
        title: commonFonts.getStarted,
        radius: AppRadius.r8,
        color: appController.appTheme.foodPrimaryColor,
        padding: Insets.i10,
        fontSize: FontSizes.f18,
        onTap: onTap,
      );


  //skip
  Widget skipText(AppController appController, {GestureTapCallback? onTap}) => InkWell(
    onTap: onTap,
    child: Text(commonFonts.skip.tr,
            style: TextStyle(
              color: appController.appTheme.foodTitleColor,
              fontFamily: GoogleFonts.nunitoSans().fontFamily,
              fontSize: FontSizes.f16,
              fontWeight: FontWeight.bold,
              letterSpacing: 0,
              height: 1,
            )
  ));

  //on board upper title
  Widget onBoardUpperTitle(AppController appController) => Padding(
        padding: EdgeInsets.only(top: Get.height / 9.5),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          LogoLayout(
              isCenter: true,
              logo: foImageAssets.foLogo,
              title: FoodOrderingThemeFont.buaberry,
              color: appController.appTheme.whiteColor),
          const VSpace(Sizes.s10),
          Text(trans(FoodOrderingThemeFont.madeWithLove),
              style: TextStyle(
                color: appController.appTheme.white,
                fontFamily: GoogleFonts.oleoScriptSwashCaps().fontFamily,
                fontWeight: FontWeight.w400,
                fontSize: FontSizes.f35,
                letterSpacing: 0,
                height: 1,
              )),
          const VSpace(Sizes.s10),
          OnBoardWidget().onBoardImage(foImageAssets.onBoard)
        ]),
      );
}
