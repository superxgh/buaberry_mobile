import 'package:buaberry_mobile/config.dart';

class OrderHistoryWidget {

  Widget monitorOrderButton({GestureTapCallback? onTap,title}) => CustomButton(
    title: title,
    radius: AppRadius.r10,
    color: appController.appTheme.foodPrimaryColor,
    fontColor: appController.appTheme.whiteColor,
    padding: Insets.i10,
    fontSize: FontSizes.f18,
    onTap: onTap,
  );

  Widget viewOrderButton({GestureTapCallback? onTap,title}) => CustomButton(
    title: title,
    radius: AppRadius.r10,
    color: appController.appTheme.foodContentColor,
    fontColor: appController.appTheme.whiteColor,
    padding: Insets.i10,
    fontSize: FontSizes.f18,
    onTap: onTap,
  );

}
