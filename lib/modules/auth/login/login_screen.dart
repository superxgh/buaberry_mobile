import '../../../config.dart';

class LoginScreen extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: appController.appTheme.foodPrimaryLightColor,
        appBar: AppBar(
            elevation: 0,
            backgroundColor: appController.appTheme.foodPrimaryLightColor,
            automaticallyImplyLeading: false),
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
                          FoodLoginWidget().displayInputText(),
                          const VSpace(Sizes.s10),
                          FoodLoginWidget()
                              .displayInputDescriptionText(),
                          const VSpace(Sizes.s60),

                          //enter phone number text
                          FoodLoginWidget().loginWithUsernameAndPasswordLabel(),
                          const VSpace(Sizes.s20),

                          //enter username and password text box
                          FoodLoginWidget().usernameTextBox(),
                          const VSpace(Sizes.s10),
                          FoodLoginWidget().passwordTextBox(),
                          const VSpace(Sizes.s20),
                          FoodLoginWidget().nextButton(
                              onTap: () => Get.toNamed(Routes.OTP),
                              title: trans(commonFonts.login)),
                          //social login with text
                          const VSpace(Sizes.s60),
                          FoodLoginWidget().loginWith(),
                          const VSpace(Sizes.s20),

                          //social login
                          const SocialLoginLayout()
                        ]),
                  ),
                )
              ]),
        ));
  }
}
