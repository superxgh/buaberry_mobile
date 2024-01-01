

import 'package:buaberry_mobile/config.dart';

class HomeDotIndicator extends StatelessWidget {

  const HomeDotIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (homeController) {
      return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: homeController.foodBannerList.asMap().entries.map((entry) {
            return GestureDetector(
                onTap: () => homeController.controller.animateToPage(entry.key),
                child: Container(
                    height: homeController.current == entry.key ? 5 : 7,
                    width: homeController.current == entry.key ? 35 : 7,
                    margin:
                  const  EdgeInsets.only(right: Insets.i5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: appController.appTheme.whiteColor)));
          }).toList());
    });
  }
}
