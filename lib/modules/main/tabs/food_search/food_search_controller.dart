
import 'package:buaberry_mobile/config.dart';

class FoodSearchController extends GetxController {

  TextEditingController searchTextController = TextEditingController();

  List recentList =[];
  @override
  void onReady() {
    recentList = foAppArray.recentList;
    super.onReady();
  }
}
