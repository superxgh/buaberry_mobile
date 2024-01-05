import 'package:buaberry_mobile/config.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? name;
  final bool isAction;

  const CommonAppBar({Key? key, this.name, this.isAction = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Image(
          image: AssetImage(foImageAssets.shopAppBar),
          height: Get.height,
          fit: BoxFit.fill),
      automaticallyImplyLeading: false,
      leading: IconButton(
          icon: new Icon(Icons.arrow_back),
          color: appController.appTheme.whiteColor,
          onPressed: () => Get.back()),
      centerTitle: false,
      actions: [
        // if (isAction)
        //   GetBuilder<FoodDashboardController>(builder: (dashboardCtrl) {
        //     return SvgPicture.asset(foSvgAssets.foodSearch,
        //             color: appCtrl.appTheme.whiteColor)
        //         .inkWell(onTap: () {
        //       dashboardCtrl.selectedIndex = 1;
        //       dashboardCtrl.con!.index = 1;
        //       //dashboardCtrl.con!.animateTo(1);
        //       dashboardCtrl.update();
        //     });
        //   }),
        if (isAction) const HSpace(Sizes.s15),
        if (isAction)
          InkWell(
            onTap: () => Get.toNamed(Routes.foFavourite),
            child: SvgPicture.asset(commonSvgAssets.heart,
                color: appController.appTheme.whiteColor),
          ),
        if (isAction) const HSpace(Sizes.s10),
        if (isAction)
          SvgPicture.asset(commonSvgAssets.share,
              color: appController.appTheme.whiteColor),
        if (isAction) const HSpace(Sizes.s15)
      ],
      title : TextLabel(
        text: name!,
        alignment: Alignment.center,
        fontFamily: FontFamily.LATO,
        fontSize: FontSizes.f18,
        fontWeight: FontWeight.bold,
        color: appController.appTheme.whiteColor,
      ),
      elevation: 0,
      backgroundColor: appController.appTheme.foodPrimaryLightColor,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
