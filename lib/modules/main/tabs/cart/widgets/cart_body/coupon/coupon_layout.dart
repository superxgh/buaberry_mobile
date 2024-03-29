

import 'package:buaberry_mobile/config.dart';

class CouponLayout extends StatelessWidget {

  final GestureTapCallback? onTap;

  const CouponLayout({
    Key? key,
    this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextLabel(
          text: ThemeFont.coupons,
          fontFamily: FontFamily.LATO,
          fontWeight: FontWeight.bold,
          fontSize: FontSizes.f16,
          color: appController.appTheme.foodTitleColor,
        ),
        const VSpace(Sizes.s10),
        InkWell(
          onTap: onTap,
          child: Container(
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
                      text: ThemeFont.applyCoupons,
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
          ),
        )
      ],
    );
  }
}
