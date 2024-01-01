import '../../../../../config.dart';
import 'otp_text_form.dart';

class OtpNumberLayout extends StatelessWidget {
  const OtpNumberLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OTPController>(builder: (otpCtrl) {
      return FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            OtpTextForm(
              controller: otpCtrl.fieldOne,
              autoFocus: false,
            ),
            const VSpace(Sizes.s10),
            OtpTextForm(controller: otpCtrl.fieldTwo, autoFocus: false),
            const VSpace(Sizes.s10),
            OtpTextForm(controller: otpCtrl.fieldThree, autoFocus: false),
            const VSpace(Sizes.s10),
            OtpTextForm(controller: otpCtrl.fieldFour, autoFocus: false),
            const VSpace(Sizes.s10),
            OtpTextForm(controller: otpCtrl.fieldFive, autoFocus: false),
          ],
        ),
      );
    });
  }
}
