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
          child: Image.asset(foGifAssets.splashLogo),
        ),
      ),
    );
  }
}
