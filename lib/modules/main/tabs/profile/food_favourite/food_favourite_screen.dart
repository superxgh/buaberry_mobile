

import 'package:buaberry_mobile/config.dart';

class FoodFavouriteScreen extends StatelessWidget {
  final favouriteCtrl = Get.put(FoodFavouriteController());

  FoodFavouriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FoodFavouriteController>(builder: (_) {
      return Scaffold(
          backgroundColor: appController.appTheme.foodPrimaryLightColor,
          appBar:
              CommonAppBar(name: trans(ThemeFont.favouriteOrders)),
          body: favouriteCtrl.isShimmer
              ? const FoodShopShimmer()
              : SingleChildScrollView(
                  child: Column(children: [
                  GridView.builder(
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: favouriteCtrl.productList.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () => Get.toNamed(Routes.foRestaurant),
                          child: RowListCard(
                              product: favouriteCtrl.productList[index],
                              isFullWidth: true));
                    },
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 15,
                        childAspectRatio: MediaQuery.of(context).size.width /
                            (MediaQuery.of(context).size.height /
                                (MediaQuery.of(context).size.width < 370
                                    ? 1.3
                                    : MediaQuery.of(context).size.width < 380
                                        ? 1.0
                                        : MediaQuery.of(context).size.width >
                                                400
                                            ? 1.2
                                            : 1.7))),
                  ).marginSymmetric(horizontal: Insets.i15)
                ]).marginSymmetric(vertical: Insets.i25)));
    });
  }
}
