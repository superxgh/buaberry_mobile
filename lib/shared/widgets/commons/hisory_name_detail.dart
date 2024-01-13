

import 'package:buaberry_mobile/config.dart';

class HistoryNameDetail extends StatelessWidget {
  final OrderHistoryModel? orderHistoryModel;

  const HistoryNameDetail({Key? key, this.orderHistoryModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      FittedBox(
          child: TextLabel(
        text: orderHistoryModel!.name!,
        alignment: Alignment.center,
        fontFamily: FontFamily.LATO,
        fontSize: FontSizes.f16,
        fontWeight: FontWeight.w400,
        color: appController.appTheme.foodTitleColor,
      )),
      const VSpace(Sizes.s5),
      TextLabel(
        text: orderHistoryModel!.address!,
        alignment: Alignment.center,
        fontFamily: FontFamily.LATO,
        fontSize: FontSizes.f14,
        fontWeight: FontWeight.w400,
        color: appController.appTheme.foodContentColor,
      ),
      const VSpace(Sizes.s10),
      Row(
        children: [
          Row(children: [
            TextLabel(
              text: commonFonts.paid,
              alignment: Alignment.center,
              fontFamily: FontFamily.LATO,
              fontSize: FontSizes.f16,
              fontWeight: FontWeight.w400,
              color: appController.appTheme.foodTitleColor,
            ),
            const HSpace(Sizes.s10),
            TextLabel(
              text: (double.parse(orderHistoryModel!.price!) * appController.rateValue).toStringAsFixed(2).toString(),
              textExtend: commonFonts.bath,
              alignment: Alignment.center,
              fontFamily: FontFamily.LATO,
              fontSize: FontSizes.f16,
              fontWeight: FontWeight.w400,
              color: appController.appTheme.foodTitleColor,
            )
          ]),
          const HSpace(Sizes.s10),
          Row(
            children: [
              TextLabel(
                text: commonFonts.date,
                alignment: Alignment.center,
                fontFamily: FontFamily.LATO,
                fontSize: FontSizes.f16,
                fontWeight: FontWeight.w400,
                color: appController.appTheme.foodTitleColor,
              ),
              const HSpace(Sizes.s10),
              TextLabel(
                text: orderHistoryModel!.date!,
                alignment: Alignment.center,
                fontFamily: FontFamily.LATO,
                fontSize: FontSizes.f16,
                fontWeight: FontWeight.w400,
                color: appController.appTheme.foodTitleColor,
              )
            ],
          )
        ],
      ),
    ]);
  }
}
