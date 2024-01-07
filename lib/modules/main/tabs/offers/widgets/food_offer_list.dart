

import 'package:buaberry_mobile/config.dart';

import 'coupon_code.dart';

class FoodOfferList extends StatelessWidget {
  final OfferModel? offerModel;

  const FoodOfferList({Key? key, this.offerModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            TextLabel(
              text: offerModel!.offer.toString(),
              alignment: Alignment.centerLeft,
              fontFamily: FontFamily.MONTSERRAT,
              fontWeight: FontWeight.bold,
              fontSize: FontSizes.f50,
              color: appController.appTheme.foodPrimaryColor,
            ),
            const HSpace(Sizes.s8),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextLabel(
                  text: '%',
                  alignment: Alignment.centerLeft,
                  fontFamily: FontFamily.LATO,
                  fontWeight: FontWeight.w400,
                  fontSize: FontSizes.f14,
                  color: appController.appTheme.foodTitleColor,
                ),
                const VSpace(Sizes.s2),
                TextLabel(
                  text: ThemeFont.off,
                  alignment: Alignment.centerLeft,
                  fontFamily: FontFamily.LATO,
                  fontWeight: FontWeight.w400,
                  fontSize: FontSizes.f14,
                  color: appController.appTheme.foodTitleColor,
                )
              ],
            ),
            const HSpace(Sizes.s10),
            Expanded(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextLabel(
                        text: offerModel!.title!,
                        alignment: Alignment.centerLeft,
                        fontFamily: FontFamily.LATO,
                        fontWeight: FontWeight.w400,
                        fontSize: FontSizes.f14,
                        color: appController.appTheme.foodTitleColor,
                      ),
                  const VSpace(Sizes.s2),
                      TextLabel(
                        text: offerModel!.desc!,
                        alignment: Alignment.centerLeft,
                        fontFamily: FontFamily.LATO,
                        fontWeight: FontWeight.w400,
                        fontSize: FontSizes.f14,
                        color: appController.appTheme.foodContentColor,
                      )
                ]))
          ]),
        ),
        CouponCode(code: offerModel!.code!)
            .marginSymmetric(horizontal: Insets.i8)
      ],
    );
  }
}
