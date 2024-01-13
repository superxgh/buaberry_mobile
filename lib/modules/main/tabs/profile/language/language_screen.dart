import 'package:buaberry_mobile/config.dart';

class LanguageScreen extends GetView<LanguageController> {
  LanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _singleValue = "Text alignment right";
    return Scaffold(
        backgroundColor: appController.appTheme.foodPrimaryLightColor,
        appBar: CommonAppBar(name: trans(commonFonts.address)),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextLabel(
                  text: ThemeFont.profile_menu_language_mg,
                  fontFamily: FontFamily.LATO,
                  fontSize: FontSizes.f18,
                  fontWeight: FontWeight.bold,
                  color: appController.appTheme.textColor,
                ),
                Row(
                  children: [
                    Obx(() {
                        return Radio(
                          activeColor: Colors.blue,
                          value: controller.language[0],
                          groupValue: controller.selectedLanguage.value,
                          onChanged: (value) {
                            controller.onClickRadioButton(value);
                          },
                        );
                      }
                    ),
                    HSpace(Sizes.s10),
                    TextLabel(
                        text: controller.language[0],
                        fontFamily: FontFamily.LATO,
                        fontSize: FontSizes.f18,
                        fontWeight: FontWeight.w400,
                        color: appController.appTheme.textColor
                    )
                  ],
                ),
                Row(
                  children: [
                    Obx(() {
                        return Radio(
                          value: controller.language[1],
                          groupValue: controller.selectedLanguage.value,
                          onChanged: (value) {
                            controller.onClickRadioButton(value);
                          },
                        );
                      }
                    ),
                    HSpace(Sizes.s10),
                    TextLabel(
                        text: controller.language[1],
                        fontFamily: FontFamily.LATO,
                        fontSize: FontSizes.f18,
                        fontWeight: FontWeight.w400,
                        color: appController.appTheme.textColor
                    )
                  ],
                ),
                VSpace(Sizes.s20),
                CustomButton(
                  title: ThemeFont.changeLanguage,
                  radius: AppRadius.r10,
                  color: appController.appTheme.foodPrimaryColor,
                  fontColor: appController.appTheme.whiteColor,
                  padding: Insets.i10,
                  fontSize: FontSizes.f18,
                  onTap: () {
                    controller.changeLanguage();
                  },
                )
              ],
            ),
          ),
        ));
  }
}
