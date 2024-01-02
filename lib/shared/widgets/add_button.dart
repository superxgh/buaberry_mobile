
import 'package:buaberry_mobile/config.dart';

class AddButton extends StatelessWidget {
  final GestureTapCallback? onTap;
  const AddButton({Key? key,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.bottomRight,
        padding:const EdgeInsets.symmetric(vertical: Insets.i6,horizontal: Insets.i10),
        decoration: BoxDecoration(
            color: appController.appTheme.foodPrimaryColor,
            borderRadius: BorderRadius.circular(AppRadius.r5),
        ),
        child: Row(
          children: [
            Icon(FontAwesomeIcons.plus,color: appController.appTheme.white,size: Sizes.s12),
            const HSpace(Sizes.s5),
            TextLabel(
              text: FoodOrderingThemeFont.add,
              alignment: Alignment.centerLeft,
              fontFamily: FontFamily.LATO,
              fontWeight: FontWeight.w400,
              fontSize: FontSizes.f12,
              color: appController.appTheme.white,
            )
          ],
        ),
      ),
    );
  }
}
