
import 'package:buaberry_mobile/config.dart';

class CouponCode extends StatelessWidget {
  final String? code;
  const CouponCode({Key? key,this.code}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        TextLabel(
          text: FoodOrderingThemeFont.useCode,
          alignment: Alignment.centerLeft,
          fontFamily: FontFamily.LATO,
          fontWeight: FontWeight.w400,
          fontSize: FontSizes.f12,
          color: appController.appTheme.foodTitleColor,
        ),
        const VSpace(Sizes.s2),
        TextLabel(
          text: code!,
          alignment: Alignment.centerLeft,
          fontFamily: FontFamily.LATO,
          fontWeight: FontWeight.w400,
          fontSize: FontSizes.f12,
          color: appController.appTheme.white,
        ).paddingSymmetric(horizontal: Insets.i10,vertical: Insets.i6)
      ],
    );
  }
}
