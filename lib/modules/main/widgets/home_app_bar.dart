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
            foIconAssets.sendColor,
            height: Sizes.s20,
            fit: BoxFit.cover,
          ),
          const HSpace(Sizes.s10),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                Text(trans('home'),
                    style: TextStyle(
                      color: appController.appTheme.foodTitleColor,
                      fontFamily: GoogleFonts.lato().fontFamily,
                      fontWeight: FontWeight.w400,
                      fontSize: FontSizes.f16,
                      letterSpacing: 0,
                      height: 1,
                    )),
                const Icon(Icons.keyboard_arrow_down_rounded, size: Sizes.s20)
              ],
            ),
            Text(trans(FoodOrderingThemeFont.lakeForestAddress),
                style: TextStyle(
                  color: appController.appTheme.foodContentColor,
                  fontFamily: GoogleFonts.lato().fontFamily,
                  fontWeight: FontWeight.w400,
                  fontSize: FontSizes.f14,
                  letterSpacing: 0,
                  height: 1,
                ))
          ])
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
