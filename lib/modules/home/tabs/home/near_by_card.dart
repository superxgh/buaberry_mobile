

import 'package:buaberry_mobile/config.dart';

class NearByCard extends StatelessWidget {
  final Product? product;

  const NearByCard({Key? key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: Insets.i12),
      padding: const EdgeInsets.symmetric(
          horizontal: Insets.i15, vertical: Insets.i10),
      decoration: BoxDecoration(
          color: appController.appTheme.whiteColor,
          borderRadius: BorderRadius.circular(AppRadius.r10)),
      child: InkWell(
        onTap:  ()=> Get.toNamed(Routes.foRestaurant,arguments: product),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(AppRadius.r10),
                  child: Image.asset(
                      product!.image!,
                      fit: BoxFit.cover,
                      height: Sizes.s80,
                      width: Sizes.s80),
                ),
                const HSpace(Sizes.s10),
                DescriptionLayout(product: product)
              ],
            ),
            RatingLayout(
                rating: product!.rating.toString(),
                color: appController.appTheme.foodPrimaryLightColor)
          ],
        ),
      ),
    );
  }
}
