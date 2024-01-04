import '/../../config.dart';
import 'widgets/otp_widget.dart';
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
                    OTPWidget().verifyPhoneNumber(),
                    const VSpace(Sizes.s15),
                    OTPWidget().confirmationCode(),
                    const VSpace(Sizes.s80),
                    const OtpNumberLayout()
                        .paddingSymmetric(horizontal: Insets.i15),
                    const VSpace(Sizes.s35),
                    OTPWidget().resendAgain()
                  ],
                ),
              ),
              OTPWidget().nextButton(
                  onTap: () => Get.toNamed(Routes.foLocation))
            ],
          ),
        );
  }
}
