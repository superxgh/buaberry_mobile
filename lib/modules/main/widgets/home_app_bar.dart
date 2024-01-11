import 'package:buaberry_mobile/config.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget{
  const HomeAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: appController.appTheme.foodPrimaryLightColor,
      title: Row(
        children: [
          Image.asset(
            foImageAssets.splashLogo,
            height: Sizes.s20,
            fit: BoxFit.cover,
          ),
          const HSpace(Sizes.s10),
          TextLabel(
              text: commonFonts.appName,
              alignment: Alignment.center,
              fontFamily: FontFamily.LATO,
              fontSize: FontSizes.f18,
              fontWeight: FontWeight.bold,
              color: appController.appTheme.foodTitleColor
          ),
          const HSpace(Sizes.s10),
          Obx(() {
              return TextLabel(
                  text: appController.dateTime.value.format('d-m-Y H:i:s'),
                  alignment: Alignment.center,
                  fontFamily: FontFamily.LATO,
                  fontSize: FontSizes.f18,
                  fontWeight: FontWeight.bold,
                  color: appController.appTheme.foodTitleColor
              );
            }
          )
        ],
      ),
      actions: [
        SvgPicture.asset(
          commonSvgAssets.bell,
          height: Sizes.s20,
        ).marginSymmetric(horizontal: Insets.i15)
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

}
