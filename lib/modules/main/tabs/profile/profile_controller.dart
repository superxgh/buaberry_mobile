
import 'package:buaberry_mobile/config.dart';

class ProfileController extends GetxController {

  List<ProfileModel> userProfileList = [];

  getData() {
    for(int i=0;i<foAppArray.profileList.length;i++) {
      userProfileList.add(ProfileModel.fromJson(foAppArray.profileList[i]));
    }
    logger.d("userProfileList length : ${userProfileList.length}");
    userProfileList.forEach((e) {
      logger.d("userProfile : ${e.title}");
      e.profileList?.forEach((l) {
        logger.d("title : ${l.title}");
        logger.d("routeName : ${l.routeName}");
      });
    });
    update();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    getData();
    super.onReady();
  }
}
