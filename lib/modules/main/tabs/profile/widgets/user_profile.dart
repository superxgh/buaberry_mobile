import '../../../../../../config.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(AppRadius.r15),
            child: Image.asset(
              foImageAssets.profile,
              height: Sizes.s80
            )),
        const HSpace(Sizes.s15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextLabel(
              text: "สมหญิง คนดี",
              alignment: Alignment.center,
              fontFamily: FontFamily.LATO,
              fontSize: FontSizes.f18,
              fontWeight: FontWeight.w400,
              color: appController.appTheme.foodTitleColor,
            ),
            const VSpace(Sizes.s5),
            TextLabel(
              text: "somyingkondee@gmail.com",
              alignment: Alignment.center,
              fontFamily: FontFamily.LATO,
              fontSize: FontSizes.f14,
              fontWeight: FontWeight.w400,
              color: appController.appTheme.foodContentColor,
            ),
            const VSpace(Sizes.s10),
            TextLabel(
              text: commonFonts.edit,
              alignment: Alignment.center,
              fontFamily: FontFamily.LATO,
              fontSize: FontSizes.f14,
              fontWeight: FontWeight.w400,
              color: appController.appTheme.foodPrimaryColor,
            ),
          ],
        )
      ],
    );
  }
}
