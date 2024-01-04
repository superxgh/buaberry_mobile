import '/../../config.dart';

class OfferController extends GetxController {
  TextEditingController controller = TextEditingController();
  List<OfferModel> offerList = [];

  @override
  void onReady() {
    // TODO: implement onReady
    getData();

    super.onReady();
  }

  getData() {
    for(int i=0;i< foAppArray.offerList.length;i++){
      offerList.add(OfferModel.fromJson(foAppArray.offerList[i]));
    }
    update();
  }
}
