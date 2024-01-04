import '/../../config.dart';

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
              text: data!.desc.toString(),
              alignment: Alignment.centerLeft,
              fontFamily: FontFamily.LATO,
              fontWeight: FontWeight.w400,
              fontSize: FontSizes.f12,
              color: appController.appTheme.foodContentColor,
            ),
            Text(offerModel!.offer.toString(),
                style: AppCss.montserratBold50
                    .textColor(appCtrl.appTheme.foodPrimaryColor)),
            const HSpace(Sizes.s8),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('%',
                    style: AppCss.latoMedium14
                        .textColor(appCtrl.appTheme.foodTitleColor)),
                const VSpace(Sizes.s2),
                Text(trans(foThemeFont.off),
                    style: AppCss.latoMedium14
                        .textColor(appCtrl.appTheme.foodTitleColor))
              ],
            ),
            const HSpace(Sizes.s10),
            Expanded(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Text(trans(offerModel!.title!),
                      style: AppCss.latoRegular14
                          .textColor(appCtrl.appTheme.foodTitleColor)),
                  const VSpace(Sizes.s2),
                  Text(trans(offerModel!.desc!),
                      style: AppCss.latoMedium14
                          .textColor(appCtrl.appTheme.foodContentColor))
                ]))
          ]),
        ),
        CouponCode(code: offerModel!.code!)
            .marginSymmetric(horizontal: Insets.i8)
      ],
    );
  }
}
