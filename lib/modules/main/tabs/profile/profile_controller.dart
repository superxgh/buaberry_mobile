
import 'package:buaberry_mobile/config.dart';

class ProfileController extends GetxController {

  List<ProfileModel> userProfileList = [];

  getData() {
    for(int i=0;i<foAppArray.profileList.length;i++) {
      userProfileList.add(ProfileModel.fromJson(foAppArray.profileList[i]));
    }
    update();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    getData();
    super.onReady();
  }
}
