import 'package:buaberry_mobile/config.dart';

class OnBoardWidget {
  Widget bgImage(image) => Image.asset(
        image,
        fit: BoxFit.fill,
        width: MediaQuery.of(Get.context!).size.width,
        height: Sizes.s250,
      );

  Widget onBoardImage(image) => Image.asset(
        image,
        width: MediaQuery.of(Get.context!).size.width,
        height: Sizes.s160,
      );

  Widget onBoardUpperTitle() => Padding(
        padding: EdgeInsets.only(top: Get.height / 9.5),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center, children: [
          ImageWidget().logoLayout(
              isCenter: true,
              logo: foImageAssets.foLogo,
              title: ThemeFont.buaberry,
              color: appController.appTheme.whiteColor),
          const VSpace(Sizes.s10),
          TextLabel(
            text: ThemeFont.madeWithLove,
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

  Widget onBoardTitle() => Padding(
      padding: EdgeInsets.symmetric(horizontal: Insets.i25),
      child: TextLabel(
        text: ThemeFont.onBoardTitle,
        alignment: Alignment.center,
        fontFamily: FontFamily.LATO,
        fontSize: FontSizes.f30,
        fontWeight: FontWeight.bold,
        color: appController.appTheme.foodTitleColor,
      ));

  Widget onBoardDesc() => Padding(
      padding: EdgeInsets.symmetric(horizontal: Insets.i25),
      child: TextLabel(
        text: ThemeFont.onBoardDesc,
        alignment: Alignment.center,
        fontFamily: FontFamily.LATO,
        fontSize: FontSizes.f20,
        fontWeight: FontWeight.w400,
        color: appController.appTheme.foodContentColor,
      ));

  //button
  Widget button({GestureTapCallback? onTap}) => CustomButton(
        title: commonFonts.getStarted,
        radius: AppRadius.r8,
        color: appController.appTheme.foodPrimaryColor,
        padding: Insets.i10,
        fontSize: FontSizes.f18,
        onTap: onTap,
      );

  //skip
  Widget skipText({GestureTapCallback? onTap}) => InkWell(
      onTap: onTap,
      child: TextLabel(
        text: commonFonts.skip,
        alignment: Alignment.center,
        fontFamily: FontFamily.LATO,
        fontSize: FontSizes.f16,
        fontWeight: FontWeight.bold,
        color: appController.appTheme.foodTitleColor,
      ));
}
