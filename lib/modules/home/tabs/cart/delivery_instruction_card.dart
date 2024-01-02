
import 'package:buaberry_mobile/config.dart';

class DeliveryInstructionCard extends StatelessWidget {
  final dynamic data;
  final ValueChanged<bool?>? onChanged;

  const DeliveryInstructionCard({Key? key, this.data, this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: Sizes.s35,
        width: Sizes.s35,
        child: ListTile(
            dense: true,
            horizontalTitleGap: Sizes.s10,
            minVerticalPadding: 0,
            contentPadding: EdgeInsets.zero,
            title: Row(
              children: [
                Image.asset(data['icon'].toString(), height: Sizes.s20),
                const HSpace(Sizes.s8),
                TextLabel(
                  text: data['title'].toString(),
                  alignment: Alignment.centerLeft,
                  fontFamily: FontFamily.LATO,
                  fontWeight: FontWeight.w400,
                  fontSize: FontSizes.f16,
                  color: appController.appTheme.foodContentColor,
                )
              ],
            ),
            leading: Checkbox(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppRadius.r2),
                ),
                side: MaterialStateBorderSide.resolveWith((states) {
                  if (states.contains(MaterialState.selected)) {
                    return BorderSide(
                        width: 1.0, color: appController.appTheme.foodPrimaryColor);
                  } else {
                    return BorderSide(
                        width: 1.0, color: appController.appTheme.foodContentColor);
                  }
                }),
                activeColor: appController.appTheme.foodPrimaryColor,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                onChanged: onChanged,
                value: data['isChecked'])));
  }
}
