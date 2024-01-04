import 'package:buaberry_mobile/config.dart';

class HomeWidget {
  // odd banner data
  Widget oddData(data) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextLabel(
            text: data!.title.toString(),
            alignment: Alignment.centerLeft,
            overflow: TextOverflow.clip,
            fontFamily: FontFamily.LATO,
            fontWeight: FontWeight.bold,
            fontSize: FontSizes.f16,
            color: appController.appTheme.foodTitleColor1,
          ),
          Stack(alignment: Alignment.center, children: [
            Image.asset(foImageAssets.bannerOfferShape, width: Sizes.s120),
            TextLabel(
              text: data!.offer.toString(),
              textExtend: 'off',
              fontFamily: FontFamily.LATO,
              fontWeight: FontWeight.bold,
              fontSize: FontSizes.f16,
              color: appController.appTheme.white,
            ),
          ]),
        ],
      );

  // even banner data
  Widget evenData(data) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextLabel(
            text: data!.title.toString(),
            alignment: Alignment.centerLeft,
            overflow: TextOverflow.clip,
            fontFamily: FontFamily.LATO,
            fontWeight: FontWeight.bold,
            fontSize: FontSizes.f16,
            color: appController.appTheme.foodTitleColor1,
          ),
          const VSpace(Sizes.s6),
          Stack(alignment: Alignment.center, children: [
            Image.asset(foImageAssets.bannerOfferShape, width: Sizes.s120),
            TextLabel(
              text: data!.offer.toString(),
              textExtend: 'off',
              fontFamily: FontFamily.LATO,
              fontWeight: FontWeight.bold,
              fontSize: FontSizes.f16,
              color: appController.appTheme.white,
            ),
          ])
        ],
      );

  //title and see all layout
  Widget titleAndSeeAll(title) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextLabel(
            text: title,
            fontFamily: FontFamily.LATO,
            fontWeight: FontWeight.bold,
            fontSize: FontSizes.f16,
            color: appController.appTheme.foodTitleColor,
          ),
          TextLabel(
            text: commonFonts.seeAll,
            fontFamily: FontFamily.LATO,
            fontWeight: FontWeight.bold,
            fontSize: FontSizes.f16,
            color: appController.appTheme.foodPrimaryColor,
          ),
        ],
      ).marginSymmetric(horizontal: Insets.i15);
}
