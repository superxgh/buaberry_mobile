import 'package:buaberry_mobile/config.dart';

class SplashScreen extends GetView<SplashController>  {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return WillPopScope(
      onWillPop: ()async{
        controller.timer!.cancel();
        controller.update();
        return true;
      },
      child: Scaffold(
        backgroundColor: appController.appTheme.foodPrimaryLightColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextLabel(
                text: commonFonts.appName,
                fontFamily: FontFamily.LATO,
                fontSize: FontSizes.f50,
                fontWeight: FontWeight.bold,
                color: appController.appTheme.textColor,
              ),
              const VSpace(Sizes.s100),
              Image.asset(foImageAssets.splashLogo),
              const VSpace(Sizes.s100),
              TextLabel(
                text: commonFonts.loading,
                fontFamily: FontFamily.LATO,
                fontSize: FontSizes.f30,
                fontWeight: FontWeight.bold,
                color: appController.appTheme.textColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
