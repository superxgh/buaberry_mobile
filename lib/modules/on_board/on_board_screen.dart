


import '../../config.dart';
import 'on_board_widget.dart';

class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppController appController = Get.find<AppController>();
    SizeConfig().init(context);
    return  Scaffold(
        backgroundColor: appController.appTheme.whiteColor,
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(children: <Widget>[
                OnBoardWidget().bgImage(foImageAssets.bg),
                OnBoardWidget().onBoardUpperTitle(appController)
              ]),
              const VSpace(Sizes.s24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  OnBoardWidget().onBoardTitle(appController, FoodOrderingThemeFont.onBoardTitle.tr),
                  const VSpace(Sizes.s20),
                  OnBoardWidget().onBoardDesc(appController, FoodOrderingThemeFont.onBoardDesc.tr),
                  const VSpace(Sizes.s30),
                  OnBoardWidget().button(appController, onTap: () => Get.toNamed(Routes.LOGIN)),
                  const VSpace(Sizes.s20),
                  OnBoardWidget().skipText(appController, onTap: () => Get.toNamed(Routes.LOGIN)),
                  const VSpace(Sizes.s20),
                ],
              )
            ],
          )
    );
  }
}
