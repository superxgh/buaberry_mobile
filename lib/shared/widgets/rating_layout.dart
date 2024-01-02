
import 'package:buaberry_mobile/config.dart';

class RatingLayout extends StatelessWidget {
  final String? rating;
  final Color? color;
  const RatingLayout({Key? key,this.rating,this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Sizes.s50,
      alignment: Alignment.center,
      padding:const EdgeInsets.symmetric(horizontal: Insets.i5,vertical: Insets.i2),
      decoration: BoxDecoration(
          color:color,
          borderRadius: BorderRadius.circular(AppRadius.r5)),
      child: Row(
        children: [
          Icon(Icons.star_rounded,
              color: appController.appTheme.foodPrimaryColor,size: Sizes.s20),
          TextLabel(
            text: rating!,
            fontFamily: FontFamily.LATO,
            fontWeight: FontWeight.w400,
            fontSize: FontSizes.f12,
            color: appController.appTheme.foodTitleColor,
          )
        ],
      ),
    );
  }
}
