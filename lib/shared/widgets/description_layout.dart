
import 'package:buaberry_mobile/config.dart';

class DescriptionLayout extends StatelessWidget {
  final Product? product;

  const DescriptionLayout({Key? key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(trans(product!.name!),
              style:
                  AppCss.latoSemiBold14.textColor(appCtrl.appTheme.foodTitleColor)),
        ),
        const VSpace(Sizes.s8),
        Text(trans(product!.foodType!),
            style: AppCss.latoRegular14
                .textColor(appCtrl.appTheme.foodContentColor)),
        const VSpace(Sizes.s10),
        ArrivalTimeDistance(
            arrivalTime: trans(product!.arriveTime!),
            distance: trans(product!.distance!)),
        const VSpace(Sizes.s10),
        if (product!.offer != "")
          Row(
            children: [
              Image.asset(foGifAssets.offer,
                  color: appCtrl.appTheme.foodPrimaryColor, height: Sizes.s20),
              const HSpace(Sizes.s5),
              Text(trans(product!.offer!),
                  style: AppCss.latoMedium12
                      .textColor(appCtrl.appTheme.foodPrimaryColor))
            ],
          )
      ],
    );
  }
}
