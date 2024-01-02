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
        backgroundColor: Theme.of(context).primaryColor,
        body: Center(
          child: Image.asset(foGifAssets.splashLogo),
        ),
      ),
    );
  }
}
