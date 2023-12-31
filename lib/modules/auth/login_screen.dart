import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:buaberry_mobile/modules/modules.dart';
import 'package:buaberry_mobile/shared/shared.dart';

import 'login_widget.dart';

class LoginScreen extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return DirectionalityRtl(
        child: Scaffold(
            backgroundColor: ,
            appBar: AppBar(
                elevation: 0,
                backgroundColor: Theme.of(context).primaryColor),
            body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SingleChildScrollView(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //enter phone number text
                            FoodLoginWidget().commonTextWithTitleColor(
                                trans(foThemeFont.enterYourPhoneNumber)),
                            const VSpace(Sizes.s15),
                            //enter confirmation code text
                            FoodLoginWidget().confirmationCode(
                                trans(foThemeFont.confirmationCode)),
                            const VSpace(Sizes.s80),

                            //enter phone number text
                            Text(trans(commonFonts.phoneNumber),
                                style: AppCss.latoMedium18
                                    .letterSpace(.8)
                                    .textColor(
                                    appCtrl.appTheme.foodTitleColor))
                                .marginSymmetric(horizontal: Insets.i15),
                            const VSpace(Sizes.s20),

                            //enter phone number text box
                            FoodTextBox(
                                hinText: trans(foThemeFont.enterPhoneNumber))
                                .marginSymmetric(horizontal: Insets.i15),
                            const VSpace(Sizes.s50),

                            //social login with text
                            FoodLoginWidget().commonTextWithTitleColor(
                                trans(foThemeFont.loginWith)),
                            const VSpace(Sizes.s20),

                            //social login
                            const SocialLoginLayout()
                          ]).width(MediaQuery.of(context).size.width).paddingOnly(
                          top: MediaQuery.of(context).size.height /
                              Sizes.s15)),
                  FoodLoginWidget().nextButton(
                      onTap: () => Get.toNamed(routeName.foOtp),
                      title: trans(foThemeFont.next))
                ]).height(double.infinity)));
  }
}
