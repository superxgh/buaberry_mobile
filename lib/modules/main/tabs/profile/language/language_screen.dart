

import 'package:buaberry_mobile/config.dart';

class LanguageScreen extends GetView<LanguageController>  {

  LanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                        text: 'Language',
                        fontFamily: FontFamily.LATO,
                        fontSize: FontSizes.f18,
                        fontWeight: FontWeight.bold,
                        color: appController.appTheme.textColor,
                      )
                    ],
                  ),
                ),
          )
    );
  }
}
