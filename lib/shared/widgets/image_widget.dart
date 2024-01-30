import 'package:buaberry_mobile/config.dart';

class ImageWidget {
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
  Widget logoLayout2 = Container(
      height: Sizes.s74,
      width: Sizes.s74,
      padding: const EdgeInsets.symmetric(
          vertical: Insets.i8, horizontal: Insets.i12),
      decoration: BoxDecoration(
          color: appController.appTheme.whiteColor,
          borderRadius: BorderRadius.circular(AppRadius.r10)),
      child: Image.asset(foImageAssets.shopLogo, height: Sizes.s45));

  //image layout
  Widget productLayout(image) => ClipRRect(
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

  // logo
  Widget logoLayout({logo, title, color, isCenter}) => Row(
    mainAxisAlignment:
    isCenter ? MainAxisAlignment.center : MainAxisAlignment.start,
    children: [
      Image.asset(logo!, height: Sizes.s24),
      const HSpace(Sizes.s2),
      Text(trans(title!),
          style: TextStyle(
            color: color!,
            fontFamily: GoogleFonts.ubuntu().fontFamily,
            fontWeight: FontWeight.w400,
            fontSize: FontSizes.f20,
            letterSpacing: 0,
            height: 1,
          ))
    ],
  );

  // image
  Widget imageLayout(image, isFullWidth) => ClipRRect(
    borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(AppRadius.r10),
        topRight: Radius.circular(AppRadius.r10)),
    child: Image.asset(image,
        fit: BoxFit.fill,
        height: Sizes.s105,
        width: isFullWidth
            ? MediaQuery.of(Get.context!).size.width
            : Sizes.s160),
  );

  // best seller
  Widget bestSeller(isSeller) => Container(
      padding: const EdgeInsets.symmetric(
          horizontal: Insets.i6, vertical: Insets.i6),
      decoration: BoxDecoration(
          color: appController.appTheme.whiteColor,
          borderRadius: BorderRadius.circular(AppRadius.r5)),
      child: TextLabel(
        text: isSeller
            ? ThemeFont.bestSeller
            : ThemeFont.newOpenly,
        fontFamily: FontFamily.LATO,
        fontWeight: FontWeight.w400,
        fontSize: FontSizes.f12,
        color: appController.appTheme.foodTitleColor,
      ));
}
