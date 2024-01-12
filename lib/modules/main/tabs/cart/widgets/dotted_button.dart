
import 'package:buaberry_mobile/config.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';

class DottedButton extends StatelessWidget {
  final String? name;
  const DottedButton({Key? key,this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.s10),
      color: appController.appTheme.foodPrimaryColor,
      radius: const Radius.circular(AppRadius.r8),
      dashPattern: const [8, 10],
      strokeWidth: 1.5,
      strokeCap: StrokeCap.round,
      borderType: BorderType.RRect,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: Insets.i12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppRadius.r8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(CupertinoIcons.add,
                color: appController.appTheme.foodPrimaryColor,
                size: Sizes.s20),
            const HSpace(Sizes.s5),
            TextLabel(
              text: name!,
              alignment: Alignment.centerLeft,
              fontFamily: FontFamily.LATO,
              fontWeight: FontWeight.bold,
              fontSize: FontSizes.f16,
              color: appController.appTheme.foodPrimaryColor,
            )
          ],
        ),
      ),
    ).marginSymmetric(horizontal: Insets.i15);
  }
}
