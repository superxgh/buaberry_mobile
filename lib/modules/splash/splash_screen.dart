import 'package:buaberry_mobile/modules/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:buaberry_mobile/shared/shared.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

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
          child: Image.asset(FOGifAssets.splashLogo),
        ),
      ),
    );
  }
}
