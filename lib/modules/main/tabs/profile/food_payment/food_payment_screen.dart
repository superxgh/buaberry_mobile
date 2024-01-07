

import 'package:buaberry_mobile/config.dart';
import 'package:buaberry_mobile/modules/main/tabs/profile/food_payment/widgets/card_list.dart';

class FoodPaymentScreen extends StatelessWidget {
  final paymentCtrl = Get.put(FoodPaymentController());

  FoodPaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FoodPaymentController>(builder: (_) {
      return Scaffold(
        backgroundColor: appController.appTheme.foodPrimaryLightColor,
        appBar: CommonAppBar(
            name: paymentCtrl.price != ""
                ? '${trans(ThemeFont.payment)}:  ${appController.priceSymbol}${(double.parse(paymentCtrl.price) * appController.rateValue)}'
                : trans(ThemeFont.payment)),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ...paymentCtrl.paymentList
                  .asMap()
                  .entries
                  .map((e) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextLabel(
                            text: e.value.title!,
                            alignment: Alignment.center,
                            fontFamily: FontFamily.LATO,
                            fontSize: FontSizes.f16,
                            fontWeight: FontWeight.bold,
                            color: appController.appTheme.foodTitleColor,
                          ),
                          const VSpace(Sizes.s12),
                          InkWell(
                            onTap: () => Get.toNamed(Routes.foOrderSuccess),
                            child: CardList(index: e.key, methodList: e.value.methodList)
                                // .inkWell(
                                //     onTap: () =>
                                //         Get.toNamed(Routes.foOrderSuccess))
                                .marginOnly(bottom: Insets.i20),
                          )
                        ],
                      ))
                  .toList()
            ],
          ).marginSymmetric(horizontal: Insets.i20, vertical: Insets.i20),
        ),
      );
    });
  }
}
