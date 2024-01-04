
import 'package:buaberry_mobile/config.dart';

class BillLayout extends StatelessWidget {
  const BillLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextLabel(
          text: FoodOrderingThemeFont.billDetail,
          alignment: Alignment.centerLeft,
          fontFamily: FontFamily.LATO,
          fontWeight: FontWeight.bold,
          fontSize: FontSizes.f16,
          color: appController.appTheme.foodTitleColor,
        ),
        const VSpace(Sizes.s10),
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(
              horizontal: Insets.i20, vertical: Insets.i15),
          decoration: BoxDecoration(
              color: appController.appTheme.whiteColor,
              borderRadius: BorderRadius.circular(AppRadius.r8),
              boxShadow: [
                BoxShadow(
                    color: appController.appTheme.foodShadowColor,
                    blurRadius: 6,
                    offset: const Offset(2, 3))
              ]),
          child: Column(children: [
            ...foAppArray.billLayout
                .asMap()
                .entries
                .map((e) => Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextLabel(
                              text: e.value["title"].toString(),
                              alignment: Alignment.centerLeft,
                              fontFamily: FontFamily.LATO,
                              fontWeight: FontWeight.bold,
                              fontSize: FontSizes.f16,
                              color: appController.appTheme.foodTitleColor,
                            ),
                            // Text(trans(e.value["title"].toString()),
                            //     style: e.key == 4
                            //         ? AppCss.latoSemiBold16.textColor(
                            //             appCtrl.appTheme.foodTitleColor)
                            //         : AppCss.latoMedium14.textColor(
                            //             appCtrl.appTheme.foodContentColor)),
                            TextLabel(
                              text: e.key == 2
                                  ? trans(e.value["price"].toString())
                                  : '${appController.priceSymbol}${double.parse(e.value["price"].toString()) *
                                  appController.rateValue}',
                              alignment: Alignment.centerLeft,
                              fontFamily: FontFamily.LATO,
                              fontWeight: FontWeight.bold,
                              fontSize: FontSizes.f16,
                              color: appController.appTheme.foodTitleColor,
                            ),
                            // Text(
                            //     e.key == 2
                            //         ? trans(e.value["price"].toString())
                            //         : '${appCtrl.priceSymbol}${double.parse(e.value["price"].toString()) *
                            //         appCtrl.rateValue}',
                            //     style: e.key == 4
                            //         ? AppCss.latoSemiBold16.textColor(
                            //             appCtrl.appTheme.foodTitleColor)
                            //         : AppCss.latoMedium14.textColor(e.key == 2
                            //             ? appCtrl.appTheme.redColor
                            //             : appCtrl.appTheme.foodContentColor)),
                          ],
                        ).marginOnly(bottom: Insets.i12),
                        if (e.key == 3)
                          Divider(color: appController.appTheme.borderColor)
                              .marginOnly(bottom: Insets.i12)
                      ],
                    ))
                .toList()
          ]),
        )
      ],
    );
  }
}
