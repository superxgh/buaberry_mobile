
import 'package:buaberry_mobile/app_controller.dart';
import 'package:buaberry_mobile/shared/assets/index.dart';
import 'package:buaberry_mobile/theme/scale.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class SocialButtonLayout extends StatelessWidget {
  final String? image;

  const SocialButtonLayout({Key? key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (appCtrl) {
      return Container(
        height: Sizes.s50,
        width: Sizes.s50,
        padding: const EdgeInsets.symmetric(
            horizontal: Insets.i12, vertical: Insets.i10),
        decoration: BoxDecoration(
            color: appCtrl.appTheme.whiteColor,
            borderRadius: BorderRadius.circular(AppRadius.r5)),
        child: image == commonSvgAssets.apple
            ? SvgPicture.asset(image!,
                height: Sizes.s24,
                fit: BoxFit.contain,
                color: appCtrl.appTheme.blackColor)
            : SvgPicture.asset(image!, height: Sizes.s24, fit: BoxFit.contain),
      );
    });
  }
}
