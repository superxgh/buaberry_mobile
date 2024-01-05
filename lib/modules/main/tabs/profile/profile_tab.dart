import 'package:buaberry_mobile/config.dart';
import 'package:buaberry_mobile/modules/main/tabs/profile/widgets/profile_list_layout.dart';
import 'package:buaberry_mobile/modules/main/tabs/profile/widgets/user_profile.dart';

class ProfileTab extends GetView<ProfileController> {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const UserProfile(),
            const VSpace(Sizes.s10),
            ...controller.userProfileList
                .asMap()
                .entries
                .map((e) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextLabel(
                  text: e.value.title!,
                  alignment: Alignment.center,
                  fontFamily: FontFamily.LATO,
                  fontSize: FontSizes.f16,
                  fontWeight: FontWeight.bold,
                  color: appController.appTheme.foodTitleColor,
                ).marginOnly(top: Insets.i20),
                const VSpace(Sizes.s25),
                ProfileListLayout(profileList: e.value.profileList)
              ],
            ))
                .toList(),
          ],
        ),
      ),

    );
  }
}
