
import 'package:buaberry_mobile/config.dart';

class FoodSearchController extends GetxController {

  TextEditingController searchTextController = TextEditingController();
  List recentList =[];

  var dessertSearchList = <Product>[].obs;

  @override
  void onReady() {
    recentList = foAppArray.recentList;
    getData();
    super.onReady();
  }

  getData() {

    for (var i = 0; i < foAppArray.dessertSearchList.length; i++) {
      dessertSearchList.add(Product.fromJson(foAppArray.dessertSearchList[i]));
    }
    update();
  }
}
