import 'package:buaberry_mobile/config.dart';
import 'social_button_layout.dart';

class SocialLoginLayout extends StatelessWidget {

  const SocialLoginLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Insets.i15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SocialButtonLayout(
            image: commonSvgAssets.apple,
          ),
          const HSpace(Sizes.s15),
          SocialButtonLayout(
            image: commonSvgAssets.google
          ),
          const HSpace(Sizes.s15),
          SocialButtonLayout(
            image: commonSvgAssets.fb,
          ),
        ],
      ),
    );
  }
}
