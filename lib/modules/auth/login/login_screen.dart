

import '../../../config.dart';

class LoginScreen extends GetView<LoginController> {

  @override
  Widget build(BuildContext context) {
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
                              FoodLoginWidget().enterYourPhoneNumber(),
                              const VSpace(Sizes.s15),

                              //enter confirmation code text
                              FoodLoginWidget().confirmationCode(),
                              const VSpace(Sizes.s80),

                              //enter phone number text
                              FoodLoginWidget().phoneNumberLabel(),
                              const VSpace(Sizes.s20),

                              //enter phone number text box
                              FoodLoginWidget().phoneNumberTextBox(),

                              const VSpace(Sizes.s50),

                              //social login with text
                              FoodLoginWidget().loginWith(),
                              const VSpace(Sizes.s20),

                              //social login
                              const SocialLoginLayout()
                            ]),
                      ),
                    ),
                    FoodLoginWidget().nextButton(
                        onTap: () => Get.toNamed(Routes.OTP),
                        title: trans(ThemeFont.next))
                  ]),
            ));
  }
}
