import 'package:buaberry_mobile/config.dart';

class TitleAndSeeAllText extends StatelessWidget {

  final String title;
  final bool? isShowSeeAll;
  const TitleAndSeeAllText({super.key, required this.title, this.isShowSeeAll});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextLabel(
          text: trans(title),
          fontFamily: FontFamily.LATO,
          fontWeight: FontWeight.bold,
          fontSize: FontSizes.f20,
          color: appController.appTheme.foodTitleColor,
        ),
        if (isShowSeeAll ?? true) TextLabel(
          text: commonFonts.seeAll,
          fontFamily: FontFamily.LATO,
          fontWeight: FontWeight.bold,
          fontSize: FontSizes.f20,
          color: appController.appTheme.foodPrimaryColor,
        ),
      ],
    ).marginSymmetric(horizontal: Insets.i15);
  }
}
