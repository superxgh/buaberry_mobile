

import 'package:buaberry_mobile/config.dart';

class HistoryItem extends StatelessWidget {
  final Items? items;
  final int? index,totalLength;
  const HistoryItem({Key? key,this.items,this.index,this.totalLength}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextLabel(
          text: items!.quantity.toString(),
          alignment: Alignment.center,
          fontFamily: FontFamily.LATO,
          fontSize: FontSizes.f14,
          fontWeight: FontWeight.w400,
          color: appController.appTheme.foodContentColor,
        ),
        TextLabel(
          text: " X  ",
          textExtend: items!.name.toString(),
          alignment: Alignment.center,
          fontFamily: FontFamily.LATO,
          fontSize: FontSizes.f14,
          fontWeight: FontWeight.w400,
          color: appController.appTheme.foodContentColor,
        ),
      ],
    ).marginOnly(
        bottom: index !=
            totalLength
            ? Insets.i15
            : Insets.i10);
  }
}
