import 'package:buaberry_mobile/config.dart';

import '../home_widget.dart';
import 'banner_widget.dart';

class BannerData extends StatelessWidget {
  final FoodBannerModel? data;
  final bool? isOdd;

  const BannerData({Key? key, this.data, this.isOdd}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (appCtrl) {
      return InkWell(
        onTap: () => Get.toNamed(Routes.foShop),
        child: Container(
          margin: const EdgeInsets.only(right: Insets.i10),
          decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(AppRadius.r10)),
          child: Stack(
            alignment: Alignment.centerLeft,
            children: <Widget>[
              ClipRRect(
                  borderRadius: BorderRadius.circular(AppRadius.r10),
                  child: Image.asset(
                    data!.image.toString(),
                    fit: BoxFit.cover,
                    height: Sizes.s180,
                    width: Get.width,
                  )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment:
                    isOdd! ? MainAxisAlignment.start : MainAxisAlignment.center,
                children: [
                  (isOdd!)
                      ? BannerWidget().oddData(data)
                      : BannerWidget().evenData(data),
                  VSpace( isOdd! ? Sizes.s35 : Sizes.s15),
                  Container(
                    width: isOdd! ? Get.width : Get.width / 2,
                    child: TextLabel(
                      text: data!.desc.toString(),
                      alignment: Alignment.centerLeft,
                      fontFamily: FontFamily.LATO,
                      fontWeight: FontWeight.w400,
                      fontSize: FontSizes.f12,
                      color: appController.appTheme.textColor,
                    ),
                  ),
                ],
              ).marginSymmetric(horizontal: Insets.i12, vertical: Insets.i30)
            ],
          ),
        ),
      );
    });
  }
}
