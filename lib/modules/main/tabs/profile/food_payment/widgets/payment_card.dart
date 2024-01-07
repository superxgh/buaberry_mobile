

import 'package:buaberry_mobile/config.dart';

class PaymentCard extends StatelessWidget {
  final MethodList? methodList;
  final int? index, totalLength;

  const PaymentCard({Key? key, this.methodList, this.index, this.totalLength})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: Sizes.s40,
                  decoration: BoxDecoration(
                      color: appController.appTheme.dividerColor,
                      borderRadius: BorderRadius.circular(AppRadius.r8)
                  ),
                  child: Image.asset(methodList!.icon!,
                      width: Sizes.s40,height: Sizes.s40, fit: BoxFit.contain)
                      .paddingSymmetric(horizontal: Insets.i15,vertical: Insets.i8),
                ),
                const HSpace(Sizes.s12),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  TextLabel(
                    text: methodList!.cardNo!,
                    alignment: Alignment.center,
                    fontFamily: FontFamily.LATO,
                    fontSize: FontSizes.f14,
                    fontWeight: FontWeight.bold,
                    color: appController.appTheme.foodTitleColor,
                  ),
                  const VSpace(Sizes.s5),
                  TextLabel(
                    text: "${(!methodList!.expiryDate!.contains("@") && (!methodList!.expiryDate!.contains("link")) ) ? "${trans(ThemeFont.expiry)} "  :""}${methodList!.expiryDate!}",
                    alignment: Alignment.center,
                    fontFamily: FontFamily.LATO,
                    fontSize: FontSizes.f13,
                    fontWeight: FontWeight.bold,
                    color: appController.appTheme.foodContentColor,
                  )
                ]),

              ],
            ),
            const Icon(Icons.chevron_right)
          ],
        ),
        if (index != totalLength)
          Divider(color: appController.appTheme.dividerColor)
              .marginOnly(bottom: Insets.i12)
      ],
    ).paddingSymmetric(horizontal: Insets.i12);
  }
}
