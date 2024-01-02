
import 'package:buaberry_mobile/config.dart';

class AddressLayout extends StatelessWidget {
  final AddressModel? addressModel;
  const AddressLayout({Key? key,this.addressModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(Sizes.s10),
            decoration: BoxDecoration(
                color: appController.appTheme.foodPrimaryLightColor,
                borderRadius:
                BorderRadius.circular(AppRadius.r8)),
            child: SvgPicture.asset(addressModel!.icon!,
                color: appController.appTheme.foodTitleColor),
          ),
          const HSpace(Sizes.s10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextLabel(
                text: addressModel!.addressType!,
                alignment: Alignment.centerLeft,
                fontFamily: FontFamily.LATO,
                fontWeight: FontWeight.bold,
                fontSize: FontSizes.f14,
                color: appController.appTheme.foodTitleColor,
              ),
              const VSpace(Sizes.s5),
              Container(
                width: Sizes.s200,
                child: TextLabel(
                  text: addressModel!.address!,
                  overflow: TextOverflow.visible,
                  alignment: Alignment.centerLeft,
                  fontFamily: FontFamily.LATO,
                  fontWeight: FontWeight.bold,
                  fontSize: FontSizes.f12,
                  color: appController.appTheme.foodContentColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
