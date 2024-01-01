import '/../../config.dart';
import 'otp_controller.dart';

class OTPScreen extends GetView<OTPController> {

  OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppController appController = Get.find<AppController>();
    return Scaffold(
          backgroundColor: appController.appTheme.foodPrimaryLightColor,
          appBar: AppBar(
              elevation: 0,
              backgroundColor: appController.appTheme.foodPrimaryLightColor),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.only(top: (Get.height / Sizes.s15)),
                child: Column(
                  children: [
                    //enter phone number text
                    CommonFoodWidget().commonTextWithTitleColor(
                        appController, trans(FoodOrderingThemeFont.verifyPhoneNumber)),
                    const VSpace(Sizes.s15),
                    //enter confirmation code text
                    // CommonFoodWidget()
                    //     .confirmationCode(trans(foThemeFont.sendCode)),
                    // const VSpace(Sizes.s80),
                    // const OtpNumberLayout()
                    //     .paddingSymmetric(horizontal: Insets.i15),
                    // const VSpace(Sizes.s35),
                    // FoodOtpWidget().resendAgain()
                  ],
                ),
              ),
              // FoodLoginWidget().nextButton(
              //     onTap: () => Get.toNamed(routeName.foLocation),
              //     title: trans(commonFonts.continueTitle))
            ],
          ),
        );
  }
}
