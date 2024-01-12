

import 'package:buaberry_mobile/config.dart';

class DotIndicator extends GetView<HomeController> {

  const DotIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: controller.foodBannerList.asMap().entries.map((entry) {
            return GestureDetector(
                onTap: () => controller.carouselController.animateToPage(entry.key),
                child: Container(
                    height: controller.current == entry.key ? 5 : 7,
                    width: controller.current == entry.key ? 35 : 7,
                    margin:
                  const  EdgeInsets.only(right: Insets.i5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: appController.appTheme.whiteColor)));
          }).toList());
  }
}
