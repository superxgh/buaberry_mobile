

import 'package:buaberry_mobile/config.dart';

class RatingReorder extends StatelessWidget {
  final double? rating;
  const RatingReorder({Key? key,this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
          TextLabel(
            text: ThemeFont.rateFood,
            alignment: Alignment.center,
            fontFamily: FontFamily.LATO,
            fontSize: FontSizes.f14,
            fontWeight: FontWeight.w400,
            color: appController.appTheme.foodTitleColor,
          ),
          RatingBarLayout(
              rate: rating!)
        ]),
        Container(
          decoration: BoxDecoration(
            color: appController.appTheme.dividerColor,
            borderRadius:
            BorderRadius.circular(AppRadius.r5)
          ),
          child: Row(children: [
            TextLabel(
              text: ThemeFont.reorder,
              alignment: Alignment.center,
              fontFamily: FontFamily.LATO,
              fontSize: FontSizes.f12,
              fontWeight: FontWeight.bold,
              color: appController.appTheme.foodPrimaryColor,
            )
          ])
              .paddingSymmetric(
              horizontal: Sizes.s10, vertical: Insets.i6),
        )
      ],
    );
  }
}
