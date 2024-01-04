import '/../../config.dart';
import 'widgets/food_otp_widget.dart';
import 'otp_controller.dart';
import 'widgets/otp_number_layout.dart';

class OTPScreen extends GetView<OTPController> {

  OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    CommonFoodWidget().commonTextWithTitleColor( trans(FoodOrderingThemeFont.verifyPhoneNumber)),
                    const VSpace(Sizes.s15),
                    //enter confirmation code text
                    CommonFoodWidget()
                        .confirmationCode(trans(FoodOrderingThemeFont.sendCode)),
                    const VSpace(Sizes.s80),
                    const OtpNumberLayout()
                        .paddingSymmetric(horizontal: Insets.i15),
                    const VSpace(Sizes.s35),
                    FoodOtpWidget().resendAgain()
                  ],
                ),
              ),
              CommonFoodWidget().nextButton(
                  onTap: () => Get.toNamed(Routes.foLocation),
                  title: trans(commonFonts.continueTitle))
            ],
          ),
        );
  }
}
