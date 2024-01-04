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
    child: TextLabel(
      text: title,
      alignment: Alignment.center,
      fontFamily: FontFamily.LATO,
      fontSize: FontSizes.f30,
      fontWeight: FontWeight.bold,
      color: appController.appTheme.foodTitleColor,
    )
  );

  //on board desc
  Widget onBoardDesc(AppController appController, String title) => Padding(
    padding: EdgeInsets.symmetric(horizontal: Insets.i25),
    child : TextLabel(
      text: title,
      alignment: Alignment.center,
      fontFamily: FontFamily.LATO,
      fontSize: FontSizes.f20,
      fontWeight: FontWeight.w400,
      color: appController.appTheme.foodContentColor,
    )
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
    child: TextLabel(
      text: commonFonts.skip,
      alignment: Alignment.center,
      fontFamily: FontFamily.LATO,
      fontSize: FontSizes.f16,
      fontWeight: FontWeight.bold,
      color: appController.appTheme.foodTitleColor,
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
          TextLabel(
            text: FoodOrderingThemeFont.madeWithLove,
            alignment: Alignment.center,
            fontFamily: FontFamily.OLESCRIPTSWASHCAPS,
            fontSize: FontSizes.f35,
            fontWeight: FontWeight.w400,
            color: appController.appTheme.white,
          ),
          const VSpace(Sizes.s10),
          OnBoardWidget().onBoardImage(foImageAssets.onBoard)
        ]),
      );
}
