
import 'package:buaberry_mobile/config.dart';

import 'arrival_time_distance.dart';

class DescriptionLayout extends StatelessWidget {
  final Product? product;

  const DescriptionLayout({Key? key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: TextLabel(
            text: product!.name!,
            fontFamily: FontFamily.LATO,
            fontWeight: FontWeight.bold,
            fontSize: FontSizes.f14,
            color: appController.appTheme.foodTitleColor,
          )
        ),
        const VSpace(Sizes.s8),
        TextLabel(
          text: product!.foodType!,
          fontFamily: FontFamily.LATO,
          fontWeight: FontWeight.w400,
          fontSize: FontSizes.f14,
          color: appController.appTheme.foodContentColor,
        ),
        // const VSpace(Sizes.s10),
        // ArrivalTimeDistance(
        //     arrivalTime: trans(product!.arriveTime!),
        //     distance: trans(product!.distance!)),
        const VSpace(Sizes.s10),
        if (product!.offer != "")
          Row(
            children: [
              Image.asset(foGifAssets.offer,
                  color: appController.appTheme.foodPrimaryColor, height: Sizes.s20),
              const HSpace(Sizes.s5),
              TextLabel(
                text: product!.offer!,
                fontFamily: FontFamily.LATO,
                fontWeight: FontWeight.w400,
                fontSize: FontSizes.f12,
                color: appController.appTheme.foodPrimaryColor,
              )
            ],
          )
      ],
    );
  }
}
