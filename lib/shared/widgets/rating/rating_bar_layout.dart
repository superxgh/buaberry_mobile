
import 'package:buaberry_mobile/config.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingBarLayout extends StatelessWidget {
  final double? rate;
  final bool isSize;
  final Color? unratedColor;
  final Color? ratedColor;
  const RatingBarLayout({Key? key,this.rate,this.isSize = false,this.unratedColor,this.ratedColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  RatingBar.builder(
      itemSize: isSize ? Sizes.s20:Sizes.s15,
      initialRating: rate!,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      glowColor: ratedColor ?? appController.appTheme.ratingColor,
      unratedColor: unratedColor ?? appController.appTheme.foodUnRatedColor,
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (val){},
    );
  }
}
