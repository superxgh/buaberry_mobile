

import 'package:buaberry_mobile/config.dart';

class FoodAddressBookScreen extends StatelessWidget {
  final addressCtrl = Get.put(FoodAddressBookController());

  FoodAddressBookScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FoodAddressBookController>(builder: (_) {
      return  Scaffold(
          backgroundColor: appController.appTheme.foodPrimaryLightColor,
          appBar: CommonAppBar(name: trans(ThemeFont.address)),
          body: ListView.builder(
                  itemBuilder: (context, index) =>
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                            color: appController.appTheme.foodShadowColor,
                            blurRadius: 6,
                            offset: const Offset(2, 3)
                          )],

                        ),
                        child: AddressCard(addressModel: addressCtrl.addressList[index])
                            .paddingSymmetric(
                                horizontal: Insets.i12, vertical: Insets.i15)
                            .paddingSymmetric(horizontal: Insets.i20)
                            .marginOnly(bottom: Insets.i15),
                      ),
                  itemCount: addressCtrl.addressList.length)
              .marginOnly(top: Insets.i20),
        );
    });
  }
}
