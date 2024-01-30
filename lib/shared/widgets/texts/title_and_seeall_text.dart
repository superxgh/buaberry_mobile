import 'package:buaberry_mobile/config.dart';

class TitleAndSeeAllText extends StatelessWidget {
  final String title;
  final bool? isShowSeeAll;
  final int? recAmount;
  const TitleAndSeeAllText(
      {super.key, required this.title, this.isShowSeeAll, this.recAmount});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextLabel(
          text: title,
          fontFamily: FontFamily.LATO,
          fontWeight: FontWeight.bold,
          fontSize: FontSizes.f20,
          color: appController.appTheme.foodTitleColor,
        ),
        if (isShowSeeAll ?? true)
          TextLabel(
            text: commonFonts.seeAll,
            fontFamily: FontFamily.LATO,
            fontWeight: FontWeight.bold,
            fontSize: FontSizes.f20,
            color: appController.appTheme.foodPrimaryColor,
          ),
        if ((recAmount ?? 0) > 0)
          TextLabel(
            text: recAmount.toString(),
            textExtend: commonFonts.records,
            fontFamily: FontFamily.LATO,
            fontWeight: FontWeight.bold,
            fontSize: FontSizes.f20,
            color: appController.appTheme.foodTitleColor,
          ),
      ],
    ).marginSymmetric(horizontal: Insets.i15);
  }
}
