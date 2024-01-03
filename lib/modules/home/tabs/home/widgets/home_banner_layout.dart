

import 'package:buaberry_mobile/config.dart';

import 'food_home_indicator.dart';
import 'home_banner_data.dart';


class HomeBannerLayout extends StatelessWidget {
  const HomeBannerLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (homeController) {
      return Column(
        children: [
          CarouselSlider.builder(
            options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 1.98,
                viewportFraction: .95,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                onPageChanged: (index, reason) {
                  homeController.current = index;
                  homeController.update();
                }),
            itemCount: homeController.foodBannerList.length,
            itemBuilder:
                (BuildContext context, int index, int pageViewIndex) {
              return homeController.foodBannerList.isNotEmpty ? HomeBannerData(
                data: homeController.foodBannerList[index],
                isOdd: index.isOdd,
              ): Container();
            },
          ),
          const Space(0, 10),
          const HomeDotIndicator()
        ],
      ).marginOnly(left: Insets.i8);
    });
  }
}
