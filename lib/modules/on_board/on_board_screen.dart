
import 'package:buaberry_mobile/config.dart';
import 'package:buaberry_mobile/modules/on_board/widgets/on_board_widget.dart';

class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return  Scaffold(
        backgroundColor: appController.appTheme.whiteColor,
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(children: <Widget>[
                OnBoardWidget().bgImage(foImageAssets.bg),
                OnBoardWidget().onBoardUpperTitle()
              ]),
              const VSpace(Sizes.s24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  OnBoardWidget().onBoardTitle(),
                  const VSpace(Sizes.s20),
                  OnBoardWidget().onBoardDesc(),
                  const VSpace(Sizes.s30),
                  OnBoardWidget().button(onTap: () => Get.toNamed(Routes.LOGIN)),
                  const VSpace(Sizes.s20),
                  OnBoardWidget().skipText(onTap: () => Get.toNamed(Routes.LOGIN)),
                  const VSpace(Sizes.s20),
                ],
              )
            ],
          )
    );
  }
}
