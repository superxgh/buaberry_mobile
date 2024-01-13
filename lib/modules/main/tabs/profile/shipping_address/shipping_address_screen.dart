

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
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextLabel(
                            text: commonFonts.address,
                            textExtend: "(${controller.addressList.length})",
                            fontFamily: FontFamily.LATO,
                            fontSize: FontSizes.f18,
                            fontWeight: FontWeight.bold,
                            color: appController.appTheme.textColor,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: appController.appTheme.foodPrimaryColor,
                                borderRadius: BorderRadius.circular(AppRadius.r5)
                            ),
                            child: TextLabel(
                              text : commonFonts.addNew,
                              alignment: Alignment.center,
                              fontFamily: FontFamily.LATO,
                              fontSize: FontSizes.f14,
                              fontWeight: FontWeight.bold,
                              color: appController.appTheme.white,
                            ).paddingSymmetric(horizontal: Insets.i20, vertical: Insets.i8),
                          )
                        ],
                      ),
                      Obx(() {
                          return ListView.builder(
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
                              .marginOnly(top: Insets.i20);
                        }
                      ),
                    ],
                  ),
                ),
          )
    );
  }
}
