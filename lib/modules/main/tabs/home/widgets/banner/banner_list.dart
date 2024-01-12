

import 'package:buaberry_mobile/config.dart';

import 'dot_indicator.dart';
import 'banner_data.dart';


class BannerList extends GetView<HomeController> {
  const BannerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
        return Column(
            children: [
              CarouselSlider.builder(
                options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 1.98,
                    viewportFraction: .95,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                    onPageChanged: (index, reason) {
                      controller.current = index;
                      controller.update();
                    }),
                itemCount: controller.foodBannerList.length,
                itemBuilder:
                    (BuildContext context, int index, int pageViewIndex) {
                  return controller.foodBannerList.isNotEmpty ? BannerData(
                    data: controller.foodBannerList[index],
                    isOdd: index.isOdd,
                  ): Container();
                },
              ),
              const Space(0, 10),
              const DotIndicator()
            ],
          ).marginOnly(left: Insets.i8);
      }
    );
  }
}
