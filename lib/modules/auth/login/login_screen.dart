import 'package:buaberry_mobile/app_controller.dart';
import 'package:buaberry_mobile/routes/routes.dart';
import 'package:buaberry_mobile/shared/assets/common_fonts.dart';
import 'package:buaberry_mobile/theme/food_orderning_theme_font.dart';
import 'package:buaberry_mobile/theme/scale.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:buaberry_mobile/modules/modules.dart';
import 'package:buaberry_mobile/shared/shared.dart';

import 'login_widget.dart';

class LoginScreen extends GetView<LoginController> {



  @override
  Widget build(BuildContext context) {
    AppController appController = Get.find<AppController>();
    SizeConfig().init(context);
    return Scaffold(
            backgroundColor: Theme.of(context).primaryColor,
            appBar: AppBar(
                elevation: 0, backgroundColor: Theme.of(context).primaryColor),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //enter phone number text
                              FoodLoginWidget().commonTextWithTitleColor(
                                  trans(FoodOrderingThemeFont.enterYourPhoneNumber)),
                              const VSpace(Sizes.s15),
                              //enter confirmation code text
                              FoodLoginWidget().confirmationCode(
                                  appController,
                                  trans(FoodOrderingThemeFont.confirmationCode)),
                              const VSpace(Sizes.s80),

                              //enter phone number text
                              FoodLoginWidget().PhoneNumberLabel(
                                  appController,
                                  trans(commonFonts.phoneNumber)),
                              const VSpace(Sizes.s20),

                              //enter phone number text box
                              FoodTextBox(
                                      hinText: trans(FoodOrderingThemeFont.enterPhoneNumber))
                                  .marginSymmetric(horizontal: Insets.i15),
                              const VSpace(Sizes.s50),

                              //social login with text
                              FoodLoginWidget().commonTextWithTitleColor(
                                  trans(FoodOrderingThemeFont.loginWith)),
                              const VSpace(Sizes.s20),

                              //social login
                              const SocialLoginLayout()
                            ]),
                      ),
                    ),

                    //next button
                    FoodLoginWidget().nextButton(
                        appController,
                        onTap: () => Get.toNamed(Routes.FOOD_OTP),
                        title: trans(FoodOrderingThemeFont.next))
                  ]),
            ));
  }
}
