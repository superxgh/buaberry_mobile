

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
                Image.asset(methodList!.icon!,
                    width: Sizes.s40,height: Sizes.s40, fit: BoxFit.contain)
                    .paddingSymmetric(horizontal: Insets.i15,vertical: Insets.i8)
                    .height(Sizes.s40)
                    .decorated(
                        color: appController.appTheme.dividerColor,
                        borderRadius: BorderRadius.circular(AppRadius.r8)),
                const HSpace(Sizes.s12),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(methodList!.cardNo!.tr,
                      style: AppCss.latoSemiBold14
                          .textColor(appController.appTheme.foodTitleColor)),
                  const VSpace(Sizes.s5),
                  Text(
                      "${(!methodList!.expiryDate!.contains("@") && (!methodList!.expiryDate!.contains("link")) ) ? "${trans(foThemeFont.expiry)} "  :""}${methodList!.expiryDate!}",
                      style: AppCss.latoMedium13
                          .textColor(appController.appTheme.foodContentColor))
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
