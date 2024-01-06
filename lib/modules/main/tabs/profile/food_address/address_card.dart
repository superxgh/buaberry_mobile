import 'package:buaberry_mobile/config.dart';

class AddressCard extends StatelessWidget {
  final AddressModel? addressModel;

  const AddressCard({Key? key, this.addressModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.back(result: addressModel),
      child: Column(
        children: [
          FittedBox(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(Sizes.s10),
                  decoration: BoxDecoration(
                      color: appController.appTheme.dividerColor,
                      borderRadius: BorderRadius.circular(AppRadius.r8)),
                  child: SvgPicture.asset(addressModel!.icon!,
                      color: appController.appTheme.foodTitleColor),
                ),
                const HSpace(Sizes.s10),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  TextLabel(
                    text: addressModel!.addressType!,
                    alignment: Alignment.center,
                    fontFamily: FontFamily.LATO,
                    fontSize: FontSizes.f14,
                    fontWeight: FontWeight.bold,
                    color: appController.appTheme.foodTitleColor,
                  ),
                  const VSpace(Sizes.s5),
                  Container(
                    width: 250.0,
                    child: TextLabel(
                      text:
                          '${trans(addressModel!.address!)}, ${trans(addressModel!.pinCode.toString())} ${trans(addressModel!.state.toString())}',
                      alignment: Alignment.center,
                      fontFamily: FontFamily.LATO,
                      fontSize: FontSizes.f14,
                      fontWeight: FontWeight.w400,
                      color: appController.appTheme.foodContentColor,
                    ),
                  ),
                  const VSpace(Sizes.s5),
                  TextLabel(
                    text:
                        '${trans(FoodOrderingThemeFont.phone)} ${trans(addressModel!.phone.toString())}',
                    alignment: Alignment.center,
                    fontFamily: FontFamily.LATO,
                    fontSize: FontSizes.f14,
                    fontWeight: FontWeight.w400,
                    color: appController.appTheme.foodContentColor,
                  )
                ]),
              ],
            ),
          ),
          Divider(color: appController.appTheme.dividerColor)
              .marginOnly(bottom: Insets.i10),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: appController.appTheme.foodPrimaryColor,
                    borderRadius: BorderRadius.circular(AppRadius.r5)
                ),
                child: TextLabel(
                  text : FoodOrderingThemeFont.edit,
                  alignment: Alignment.center,
                  fontFamily: FontFamily.LATO,
                  fontSize: FontSizes.f14,
                  fontWeight: FontWeight.bold,
                  color: appController.appTheme.white,
                ).paddingSymmetric(horizontal: Insets.i20, vertical: Insets.i8),
              ),
              const HSpace(Sizes.s10),
              Container(
                decoration: BoxDecoration(
                    color: appController.appTheme.darkGreyColor,
                    borderRadius: BorderRadius.circular(AppRadius.r5)
                ),
                child: TextLabel(
                  text : FoodOrderingThemeFont.delete,
                  alignment: Alignment.center,
                  fontFamily: FontFamily.LATO,
                  fontSize: FontSizes.f14,
                  fontWeight: FontWeight.bold,
                  color: appController.appTheme.white,
                ).paddingSymmetric(horizontal: Insets.i20, vertical: Insets.i8),
              )
            ],
          )
        ],
      ),
    );
  }
}
