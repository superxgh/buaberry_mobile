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
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: controller.formLoginKey,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //enter phone number text
                    FoodLoginWidget().displayInputText(),
                    const VSpace(Sizes.s100),

                    //enter phone number text
                    FoodLoginWidget().loginWithUsernameAndPasswordLabel(),
                    const VSpace(Sizes.s20),

                    //enter username and password text box
                    FoodLoginWidget().usernameTextBox(
                        controller: controller.textUsernameController,
                        validator: (value) {
                          logger.i(">>> Username text validator.");
                          if (value == null || value.isEmpty) {
                            return 'cannot_be_empty';
                          } else if (!RegexValidator.isUsername(value)) {
                            return 'not_username_format';
                          } else {
                            return null;
                          }
                        }),
                    const VSpace(Sizes.s10),
                    FoodLoginWidget().passwordTextBox(
                        controller: controller.textPasswordController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'cannot_be_empty';
                          } else if (!RegexValidator.isPassword(value)) {
                            return 'not_username_format';
                          } else {
                            return null;
                          }
                        }),
                    const VSpace(Sizes.s20),
                    FoodLoginWidget().loginWithUsernameAndPasswordButton(
                        onTap: () => controller.login(),
                        title: trans(commonFonts.login)),
                    //social login with text
                    const VSpace(Sizes.s60),
                    FoodLoginWidget().loginWith(),
                    const VSpace(Sizes.s20),

                    //social login
                    const SocialLoginLayout()
                  ]),
            ),
          ),
        ));
  }
}
