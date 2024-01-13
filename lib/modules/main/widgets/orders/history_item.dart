

import 'package:buaberry_mobile/config.dart';

class HistoryItem extends StatelessWidget {

  final Items? items;
  final int? index,totalLength;
  final String status;

  const HistoryItem({
    Key? key,
    this.items,
    this.index,
    this.totalLength,
    required this.status}) : super(key: key);

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
          color:  status == commonFonts.processing
              ? appController.appTheme.textColor
              : appController.appTheme.foodContentColor,
        ),
        TextLabel(
          text: " X  ",
          textExtend: items!.name.toString(),
          alignment: Alignment.center,
          fontFamily: FontFamily.LATO,
          fontSize: FontSizes.f14,
          fontWeight: FontWeight.w400,
          color:   status == commonFonts.processing
              ? appController.appTheme.textColor
              : appController.appTheme.foodContentColor,
        ),
      ],
    ).marginOnly(
        bottom: index !=
            totalLength
            ? Insets.i15
            : Insets.i10);
  }
}
