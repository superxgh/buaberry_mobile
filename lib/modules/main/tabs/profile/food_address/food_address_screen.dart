

import 'package:buaberry_mobile/config.dart';

class FoodAddressScreen extends StatelessWidget {
  final addressCtrl = Get.put(FoodAddressController());

  FoodAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FoodAddressController>(builder: (_) {
      return  Scaffold(
          backgroundColor: appController.appTheme.foodPrimaryLightColor,
          appBar: CommonAppBar(name: trans(commonFonts.address)),
          body: ListView.builder(
                  itemBuilder: (context, index) =>
                      Container(
                        color: Colors.white,
                        decoration: BoxDecoration(
                          boxShadow: [BoxShadow(
                                    color: appController.appTheme.foodShadowColor,
                                    blurRadius: 6,
                                    offset: const Offset(2, 3)
                          )]
                        ),
                        child: AddressCard(addressModel: addressCtrl.addressList[index])
                            .paddingSymmetric(
                                horizontal: Insets.i12, vertical: Insets.i15)
                            .marginOnly(bottom: Insets.i15),
                      ),
                  itemCount: addressCtrl.addressList.length)
              .marginOnly(top: Insets.i20),
        );
    });
  }
}
