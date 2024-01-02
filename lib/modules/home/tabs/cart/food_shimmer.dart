

import 'package:buaberry_mobile/config.dart';

class FoodShimmer extends StatelessWidget {
  final double height,width,radius;
  final Widget? child;
  const FoodShimmer({Key? key,this.height = 6,this.width=1,this.radius=5,this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: appController.appTheme.foodContentColor.withOpacity(.5),
          borderRadius: BorderRadius.circular(radius)),child: child,);
  }
}
