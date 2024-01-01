import 'package:buaberry_mobile/config.dart';

class FoodHomeWidget {
  // odd banner data
  Widget oddData(data) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(trans(data!.title.toString()),
              overflow: TextOverflow.clip,
              style: TextStyle(
                color: appController.appTheme.foodTitleColor1,
                fontFamily: GoogleFonts.lato().fontFamily,
                fontWeight: FontWeight.bold,
                fontSize: FontSizes.f16,
                letterSpacing: 0,
                height: 1,
              )),
          Stack(alignment: Alignment.center, children: [
            Image.asset(foImageAssets.bannerOfferShape, width: Sizes.s120),
            Text(trans(data!.offer.toString() + trans("off")),
                style: TextStyle(
                  color: appController.appTheme.white,
                  fontFamily: GoogleFonts.lato().fontFamily,
                  fontWeight: FontWeight.bold,
                  fontSize: FontSizes.f16,
                  letterSpacing: 0,
                  height: 1,
                )),
          ]),
        ],
      );

  // even banner data
  Widget evenData(data) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(trans(data!.title.toString()),
              overflow: TextOverflow.clip,
              style: TextStyle(
                color: appController.appTheme.foodTitleColor1,
                fontFamily: GoogleFonts.lato().fontFamily,
                fontWeight: FontWeight.bold,
                fontSize: FontSizes.f16,
                letterSpacing: 0,
                height: 1,
              )),
          const VSpace(Sizes.s6),
          Stack(alignment: Alignment.center, children: [
            Image.asset(foImageAssets.bannerOfferShape, width: Sizes.s120),
            Text(trans(data!.offer.toString()) + trans("off"),
                style: TextStyle(
                  color: appController.appTheme.white,
                  fontFamily: GoogleFonts.lato().fontFamily,
                  fontWeight: FontWeight.bold,
                  fontSize: FontSizes.f16,
                  letterSpacing: 0,
                  height: 1,
                )),
          ])
        ],
      );

  //title and see all layout
  Widget titleAndSeeAll(title) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: TextStyle(
                color: appController.appTheme.foodTitleColor,
                fontFamily: GoogleFonts.lato().fontFamily,
                fontWeight: FontWeight.bold,
                fontSize: FontSizes.f16,
                letterSpacing: 0,
                height: 1,
              )),
          Text(trans(commonFonts.seeAll),
              style: TextStyle(
                color: appController.appTheme.foodPrimaryColor,
                fontFamily: GoogleFonts.lato().fontFamily,
                fontWeight: FontWeight.bold,
                fontSize: FontSizes.f16,
                letterSpacing: 0,
                height: 1,
              )),
        ],
      ).marginSymmetric(horizontal: Insets.i15);
}
