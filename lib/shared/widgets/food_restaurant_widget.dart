import 'package:buaberry_mobile/config.dart';

class FoodRestaurantWidget {
  // name layout
  Widget nameLayout(name) => TextLabel(
        text: name,
        alignment: Alignment.center,
        fontFamily: FontFamily.LATO,
        fontWeight: FontWeight.bold,
        fontSize: FontSizes.f16,
        color: appController.appTheme.whiteColor,
      );
  // name layout
  Widget addressLayout(name) => TextLabel(
        text: name,
        alignment: Alignment.center,
        fontFamily: FontFamily.LATO,
        fontWeight: FontWeight.w400,
        fontSize: FontSizes.f12,
        color: appController.appTheme.foodPrimaryLightColor,
      );

  //logo
  Widget logoLayout = Container(
      height: Sizes.s74,
      width: Sizes.s74,
      padding: const EdgeInsets.symmetric(
          vertical: Insets.i8, horizontal: Insets.i12),
      decoration: BoxDecoration(
          color: appController.appTheme.whiteColor,
          borderRadius: BorderRadius.circular(AppRadius.r10)),
      child: Image.asset(foImageAssets.shopLogo, height: Sizes.s45));

  //image layout
  Widget imageLayout(image) => ClipRRect(
      borderRadius: BorderRadius.circular(AppRadius.r10),
      child: FadeInImage(
          placeholder: AssetImage(foImageAssets.foLogo),
          image: AssetImage(image),
          fit: BoxFit.cover,
          height: Sizes.s65,
          width: Sizes.s65));

  //food name and rating
  Widget foodNameRating(name, rating) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextLabel(
            text: name,
            alignment: Alignment.center,
            fontFamily: FontFamily.LATO,
            fontWeight: FontWeight.bold,
            fontSize: FontSizes.f16,
            color: appController.appTheme.foodTitleColor,
          ),
          const VSpace(Sizes.s5),
          Row(children: [
            RatingBarLayout(rate: rating),
            TextLabel(
              text: name,
              fontFamily: FontFamily.LATO,
              fontWeight: FontWeight.bold,
              fontSize: FontSizes.f14,
              color: appController.appTheme.foodTitleColor,
            )
          ])
        ],
      );
}
