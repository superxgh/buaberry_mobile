import 'package:buaberry_mobile/config.dart';
import 'package:flutter/cupertino.dart';

class IncDecButton extends StatelessWidget {
  final String? qty;
  final GestureTapCallback? addTap;
  final GestureTapCallback? minusTap;
  const IncDecButton({Key? key, this.qty, this.addTap, this.minusTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          vertical: Insets.i5, horizontal: Insets.i8),
      decoration: BoxDecoration(
          color: appController.appTheme.foodPrimaryColor,
          borderRadius: BorderRadius.circular(AppRadius.r5)),
      child: Row(
        children: [
          InkWell(
              onTap: minusTap,
              child: Icon(CupertinoIcons.minus,
                  size: Sizes.s16, color: appController.appTheme.white)),
          //.inkWell(onTap: minusTap),
          const HSpace(Sizes.s5),
          TextLabel(
            text: qty!,
            alignment: Alignment.centerLeft,
            fontFamily: FontFamily.LATO,
            fontWeight: FontWeight.bold,
            fontSize: FontSizes.f14,
            color: appController.appTheme.white,
          ),
          const HSpace(Sizes.s5),
          InkWell(
              onTap: addTap,
              child: Icon(CupertinoIcons.plus,
                  size: Sizes.s16, color: appController.appTheme.white))
        ],
      ),
    );
  }
}
