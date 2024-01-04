
import '../../../../../config.dart';
import 'otp_widget.dart';

class OtpTextForm extends StatelessWidget {
  final TextEditingController? controller;
  final bool? autoFocus;

  const OtpTextForm({Key? key, this.controller, this.autoFocus})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (appCtrl) {
      return Container(
        height: Sizes.s60,
        width: Sizes.s60,
        margin: const EdgeInsets.symmetric(horizontal: Insets.i5),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: appCtrl.appTheme.foodShadowColor,
                blurRadius: 6,
                offset: const Offset(2, 3)),
          ],
        ),
        child: TextFormField(
          autofocus: autoFocus!,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          controller: controller,
          maxLength: 1,
          cursorColor: appCtrl.appTheme.lightGray,
          decoration: InputDecoration(
              fillColor: appCtrl.appTheme.whiteColor,
              filled: true,
              border: OTPWidget().decoration(),
              focusedBorder: OTPWidget().decoration(),
              disabledBorder: OTPWidget().decoration(),
              enabledBorder: OTPWidget().decoration(),
              counterText: '',
              hintStyle: TextStyle(
                  color: appCtrl.appTheme.blackColor, fontSize: 20.0)),
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            } else {
              FocusScope.of(context).previousFocus();
            }

          },
        ),
      );
    });
  }
}
