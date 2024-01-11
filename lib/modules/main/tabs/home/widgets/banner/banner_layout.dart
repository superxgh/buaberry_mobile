

import 'package:buaberry_mobile/config.dart';

import 'dot_indicator.dart';
import 'banner_data.dart';


class BannerLayout extends StatelessWidget {
  const BannerLayout({Key? key}) : super(key: key);

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
              return homeController.foodBannerList.isNotEmpty ? BannerData(
                data: homeController.foodBannerList[index],
                isOdd: index.isOdd,
              ): Container();
            },
          ),
          const Space(0, 10),
          const DotIndicator()
        ],
      ).marginOnly(left: Insets.i8);
    });
  }
}
