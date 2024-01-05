
import 'package:buaberry_mobile/config.dart';

class ProfileListCard extends StatelessWidget {
  final ProfileList? profileList;
  final int? index,totalLength;
  const ProfileListCard({Key? key,this.profileList,this.totalLength,this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        logger.d("Route : ${profileList!.routeName!}");
        Get.toNamed(profileList!.routeName!);
        // if(trans(profileList!.title!) == FoodOrderingThemeFont.profile_menu_orders.tr){
        //   Get.offAllNamed(Routes.ORDER);
        // }else if(trans(profileList!.title!) == FoodOrderingThemeFont.profile_menu_favourite_orders.tr){
        //   Get.toNamed(Routes.ORDER);
        // }else if(trans(profileList!.title!) == FoodOrderingThemeFont.profile_menu_address_book.tr){
        //   Get.toNamed(Routes.ORDER);
        // }else if(trans(profileList!.title!) == FoodOrderingThemeFont.profile_menu_wallets.tr){
        //   Get.toNamed(Routes.ORDER);
        // }else if(trans(profileList!.title!) == FoodOrderingThemeFont.profile_menu_saved_card.tr){
        //   Get.toNamed(Routes.ORDER);
        // }else if(trans(profileList!.title!) == FoodOrderingThemeFont.profile_menu_english.tr){
        //   Get.toNamed(Routes.ORDER);
        // }else if(trans(profileList!.title!) == FoodOrderingThemeFont.profile_menu_home.tr){
        //   Get.toNamed(Routes.HOME);
        // }
      },
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                      profileList!.icon!,
                      height: Sizes.s30,
                      width: Sizes.s30),
                  const HSpace(Sizes.s15),
                  TextLabel(
                    text: profileList!.title!,
                    alignment: Alignment.center,
                    fontFamily: FontFamily.LATO,
                    fontSize: FontSizes.f16,
                    fontWeight: FontWeight.bold,
                    color: appController.appTheme.foodTitleColor,
                  ),
                ],
              ),
              Icon(Icons.arrow_forward_ios_rounded,color: appController.appTheme.foodTitleColor,size: Sizes.s20)
            ],
          ),
          if(index != totalLength)
            Column(
              children: [

                Divider(
                    color:
                    appController.appTheme.dividerColor,thickness: 1 ).paddingSymmetric(vertical: Insets.i12),
              ],
            )
        ],
      ).marginSymmetric(horizontal: Insets.i15),
    );
  }
}
