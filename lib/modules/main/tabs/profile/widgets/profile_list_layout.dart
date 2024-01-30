import 'package:buaberry_mobile/config.dart';
import 'package:buaberry_mobile/modules/main/tabs/profile/widgets/profile_list_card.dart';
import 'package:buaberry_mobile/shared/widgets/commons/style_extension.dart';


class ProfileListLayout extends StatelessWidget {
  final List<ProfileList>? profileList;
  const ProfileListLayout({Key? key,this.profileList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...profileList!
            .asMap()
            .entries
            .map((data) => ProfileListCard(
            profileList: data.value,
            index: data.key,
            totalLength:
            profileList!.length - 1))
            .toList()
      ],
    )
        .profileListExtension();
  }
}
