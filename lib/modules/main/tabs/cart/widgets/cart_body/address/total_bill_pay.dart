
import 'package:buaberry_mobile/config.dart';

class TotalBillPay extends StatelessWidget {
  const TotalBillPay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextLabel(
          text: ThemeFont.billAmount ,
          fontFamily: FontFamily.LATO,
          fontWeight: FontWeight.w400,
          fontSize: FontSizes.f16,
          color: appController.appTheme.foodContentColor,
        ),
        TextLabel(
          text: '${appController.priceSymbol} ${290.00 *
              appController.rateValue}' ,
          fontFamily: FontFamily.LATO,
          fontWeight: FontWeight.w400,
          fontSize: FontSizes.f18,
          color: appController.appTheme.foodTitleColor,
        ),
      ],
    );
  }
}
