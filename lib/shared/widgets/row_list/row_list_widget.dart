import 'package:buaberry_mobile/config.dart';

class RowListWidget {
  //image
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

  //best seller
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
