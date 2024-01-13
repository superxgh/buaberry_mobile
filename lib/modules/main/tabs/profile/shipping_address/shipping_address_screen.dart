

import 'package:buaberry_mobile/config.dart';

class ShippingAddressScreen extends GetView<ShippingAddressController>  {

  ShippingAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: appController.appTheme.foodPrimaryLightColor,
          appBar: CommonAppBar(name: trans(commonFonts.address)),
          body: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    TextLabel(text: commonFonts.address),
                    ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: (context, index) =>
                          Column(
                            children: [
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
                                child: AddressCard(addressModel: controller.addressList[index])
                                    .paddingSymmetric(
                                        horizontal: Insets.i12, vertical: Insets.i15)
                                    .paddingSymmetric(horizontal: Insets.i20)
                                    .marginOnly(bottom: Insets.i15),
                              ),
                              VSpace(Sizes.s10)
                            ],
                          ),
                      itemCount: controller.addressList.length)
                        .marginOnly(top: Insets.i20),
                  ],
                ),
          )
    );
  }
}
