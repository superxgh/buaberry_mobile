
import 'package:buaberry_mobile/config.dart';

class InstructionLayout extends StatelessWidget {
  const InstructionLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(builder: (homeCtrl) {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ...homeCtrl.instructionList
                .map((e) => Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(right: Insets.i10),
                      padding: const EdgeInsets.symmetric(
                          vertical: Insets.i10, horizontal: Insets.i15),
                      decoration: BoxDecoration(
                          color: appController.appTheme.whiteColor,
                          borderRadius: BorderRadius.circular(AppRadius.r10)),
                      child: Row(
                        children: [
                          Image.asset(
                            e['image'],
                            height: Sizes.s20,
                          ),
                          const HSpace(Sizes.s10),
                          TextLabel(
                            text : e['title'],
                            fontFamily: FontFamily.LATO,
                            fontWeight: FontWeight.w400,
                            fontSize: FontSizes.f14,
                            color: appController.appTheme.foodTitleColor,
                          )
                        ],
                      ),
                    ))
                .toList()
          ],
        ),
      ).marginSymmetric(horizontal: Insets.i15);
    });
  }
}
