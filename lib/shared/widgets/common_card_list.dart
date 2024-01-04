
import 'package:buaberry_mobile/config.dart';

import 'cart_add_remove.dart';

class CommonCardList extends StatelessWidget {
  final Product? product;
  final GestureTapCallback? onTap;
  final GestureTapCallback? imageOnTap;
  final bool isRatingShow,isShadow;

  const CommonCardList(
      {Key? key,
      this.product,
      this.imageOnTap,
      this.onTap,
      this.isRatingShow = true,this.isShadow = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: Insets.i10, vertical: Insets.i10),
      decoration: BoxDecoration(
          color: appController.appTheme.whiteColor,
          borderRadius: BorderRadius.circular(AppRadius.r10),
          boxShadow: [
            BoxShadow(
                color: isShadow ? appController.appTheme.gray.withOpacity(0.2) : Colors.transparent,
                offset: const Offset(0.0, 0.75),
                blurRadius: 6)
          ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              InkWell(
                onTap: imageOnTap,
                child: FoodRestaurantWidget()
                    .imageLayout(product!.image!),
              ),
              const HSpace(Sizes.s10),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                FittedBox(
                    child: TextLabel(
                      text: product!.name!,
                      overflow: TextOverflow.fade,
                      alignment: Alignment.center,
                      fontFamily: FontFamily.LATO,
                      fontWeight: FontWeight.w400,
                      fontSize: FontSizes.f15,
                      color: appController.appTheme.foodTitleColor,
                    )
                ),
                const VSpace(Sizes.s5),
                if (isRatingShow)
                  Row(children: [
                    RatingBarLayout(rate: product!.rating),
                    TextLabel(
                      text: product!.rating.toString(),
                      alignment: Alignment.center,
                      fontFamily: FontFamily.LATO,
                      fontWeight: FontWeight.w400,
                      fontSize: FontSizes.f16,
                      color: appController.appTheme.foodTitleColor,
                    )
                  ]),
                const VSpace(Sizes.s5),
                TextLabel(
                  text: appController.priceSymbol +
                      (double.parse(product!.price!) * appController.rateValue)
                          .toString(),
                  alignment: Alignment.center,
                  fontFamily: FontFamily.LATO,
                  fontWeight: FontWeight.w400,
                  fontSize: FontSizes.f16,
                  color: isRatingShow
                      ? appController.appTheme.foodTitleColor
                      : appController.appTheme.foodContentColor,
                ),
                if (!isRatingShow) const VSpace(Sizes.s5),
                if (!isRatingShow)
                  TextLabel(
                    text: FoodOrderingThemeFont.edit,
                    alignment: Alignment.center,
                    fontFamily: FontFamily.LATO,
                    fontWeight: FontWeight.bold,
                    fontSize: FontSizes.f14,
                    color: appController.appTheme.foodPrimaryColor,
                  )
              ])
            ],
          ),
          GetBuilder<MainController>(
              builder: (controller) =>
                  CartAddRemove(product: product, onTap: onTap))
        ],
      ),
    );
  }
}
