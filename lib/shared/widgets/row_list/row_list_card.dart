

import 'package:buaberry_mobile/config.dart';

class RowListCard extends StatelessWidget {
  final Product? product;
  final bool? isFullWidth;
  const RowListCard({Key? key, this.product,this.isFullWidth = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=> Get.toNamed(Routes.foRestaurant,arguments: product),
      child: Container(
        margin: const EdgeInsets.only(right: Insets.i10),
        decoration: BoxDecoration(
            color: appController.appTheme.whiteColor,
            borderRadius: BorderRadius.circular(AppRadius.r10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                RowListWidget().imageLayout(product!.image!,isFullWidth),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    if (product!.isBestSeller! || product!.isNewOpen!)
                      RowListWidget().bestSeller(product!.isBestSeller!),
                    const VSpace(Sizes.s5),
                    RatingLayout(
                        color: appController.appTheme.whiteColor,
                        rating: product!.rating.toString())
                  ],
                ).paddingSymmetric(horizontal: Insets.i10, vertical: Insets.i12)
              ],
            ),
            const VSpace(Sizes.s10),
            DescriptionLayout(product: product)
                .marginSymmetric(horizontal: Insets.i6),
            const VSpace(Sizes.s15),
          ],
        ),
      ),
    );
  }
}
