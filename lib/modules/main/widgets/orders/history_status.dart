import 'package:buaberry_mobile/config.dart';

class HistoryStatus extends StatelessWidget {
  final String? status;
  const HistoryStatus({Key? key, this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: appController.appTheme.dividerColor,
          borderRadius: BorderRadius.circular(AppRadius.r8)),
      child: Row(
        children: [
          if (status! != commonFonts.processing) Image.asset(foIconAssets.check, height: Sizes.s20),
          if (status! != commonFonts.processing) const HSpace(Sizes.s5),
          TextLabel(
            text: status!,
            alignment: Alignment.center,
            fontFamily: FontFamily.LATO,
            fontSize: FontSizes.f14,
            fontWeight: FontWeight.w400,
            color: status! == commonFonts.processing
                    ? appController.appTheme.redColor
                    : appController.appTheme.foodTitleColor,
          )
        ],
      ),
    );
    // .paddingSymmetric(
    // horizontal: Sizes.s10,
    // vertical: Insets.i6)
    // .decorated(
    // color: appController.appTheme.dividerColor,
    // borderRadius:
    // BorderRadius.circular(AppRadius.r8));
  }
}
