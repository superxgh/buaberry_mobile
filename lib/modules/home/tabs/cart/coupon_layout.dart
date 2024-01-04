
import 'package:buaberry_mobile/config.dart';

class CouponLayout extends StatelessWidget {
  const CouponLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextLabel(
          text: FoodOrderingThemeFont.coupons,
          alignment: Alignment.centerLeft,
          fontFamily: FontFamily.LATO,
          fontWeight: FontWeight.bold,
          fontSize: FontSizes.f16,
          color: appController.appTheme.foodTitleColor,
        ),
        const VSpace(Sizes.s10),
        Container(
          padding: const EdgeInsets.symmetric(
              vertical: Insets.i15, horizontal: Insets.i20),
          decoration: BoxDecoration(
              color: appController.appTheme.whiteColor,
              borderRadius: BorderRadius.circular(AppRadius.r8),
              boxShadow: [
                BoxShadow(
                    color: appController.appTheme.foodShadowColor,
                    blurRadius: 6,
                    offset: const Offset(2, 3))
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(foGifAssets.offer,
                      height: Sizes.s20,
                      color: appController.appTheme.foodPrimaryColor),
                  const HSpace(Sizes.s5),
                  TextLabel(
                    text: FoodOrderingThemeFont.applyCoupons,
                    alignment: Alignment.centerLeft,
                    fontFamily: FontFamily.LATO,
                    fontWeight: FontWeight.w400,
                    fontSize: FontSizes.f16,
                    color: appController.appTheme.foodTitleColor,
                  )
                ],
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: appController.appTheme.foodTitleColor,
                size: Sizes.s20,
              )
            ],
          ),
        )
      ],
    );
  }
}
