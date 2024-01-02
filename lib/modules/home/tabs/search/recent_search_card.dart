
import 'package:buaberry_mobile/config.dart';
import 'package:flutter/cupertino.dart';

class RecentSearchCard extends StatelessWidget {
  final dynamic data;
  const RecentSearchCard({Key? key,this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
          SvgPicture.asset(foSvgAssets.clock,
            color: appController.appTheme.foodContentColor,height: Sizes.s20,),
          const HSpace(Sizes.s10),
          TextLabel(
            text: data['title'],
            alignment: Alignment.centerLeft,
            fontFamily: FontFamily.LATO,
            fontWeight: FontWeight.w400,
            fontSize: FontSizes.f14,
            color: appController.appTheme.foodContentColor,
          )
        ]),
        Icon(
          CupertinoIcons.multiply,
          color: appController.appTheme.foodContentColor,
          size: Sizes.s20,
        )
      ],
    ).marginOnly(bottom: Insets.i10);
  }
}
