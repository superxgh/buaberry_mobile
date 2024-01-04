
import 'package:buaberry_mobile/config.dart';
import 'package:buaberry_mobile/modules/home/tabs/cart/bill/total_bill_pay.dart';

import 'address_layout.dart';

class FoodAddressLayout extends StatelessWidget {
  const FoodAddressLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartController>(builder: (foodCtrl) {
      return Container(
        padding: const EdgeInsets.symmetric(
          vertical: Insets.i15,
        ),
        decoration: BoxDecoration(
            color: appController.appTheme.whiteColor,
            borderRadius: BorderRadius.circular(AppRadius.r8),
            boxShadow: [
              BoxShadow(
                  color: appController.appTheme.foodShadowColor,
                  blurRadius: 6,
                  offset: const Offset(2, 3))
            ]),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (foodCtrl.addressModel != null)
                  AddressLayout(addressModel: foodCtrl.addressModel),
                TextLabel(
                  text: foodCtrl.addressModel != null
                       ? FoodOrderingThemeFont.change
                       : FoodOrderingThemeFont.selectAddress ,
                  fontFamily: FontFamily.LATO,
                  fontWeight: FontWeight.bold,
                  fontSize: FontSizes.f16,
                  color: appController.appTheme.foodPrimaryColor,
                ),

                //
                // Text(trans(foodCtrl.addressModel != null ?foThemeFont.change:foThemeFont.selectAddress ),
                //         style: AppCss.latoSemiBold14
                //             .textColor(appCtrl.appTheme.foodPrimaryColor))
                //     .gestures(
                //         onTap: () =>
                //             Get.toNamed(routeName.foAddress)!.then((value) {
                //               foodCtrl.addressModel = value;
                //               foodCtrl.update();
                //             })),
              ],
            )
                .marginOnly(bottom: Insets.i8)
                .paddingSymmetric(horizontal: Insets.i20),
            Divider(color: appController.appTheme.borderColor)
                .marginOnly(bottom: Insets.i8)
                .paddingSymmetric(horizontal: Insets.i20),
            const TotalBillPay()
                .marginOnly(bottom: Insets.i12)
                .paddingSymmetric(horizontal: Insets.i20),
            FoodCustomButton(
              title: trans(FoodOrderingThemeFont.proceedToPay),
              color: appController.appTheme.foodPrimaryColor,
              width: MediaQuery.of(context).size.width,
              onTap: ()=> Get.toNamed(Routes.foPayment,arguments: "290"),
            )
          ],
        ),
      );
    });
  }
}
