import 'package:buaberry_mobile/config.dart';

class CuisineList extends StatelessWidget {
  const CuisineList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...foAppArray.cuisineList
              .map((e) => InkWell(
                    onTap: () =>
                        Get.toNamed(Routes.foShop, arguments: e['title']),
                    child: Column(
                      children: [
                        Image.asset(
                          e['image'].toString(),
                          height: Sizes.s80,
                          fit: BoxFit.contain,
                        ),
                        const VSpace(Sizes.s10),
                        Text(trans(e['title'].toString()),
                            style: TextStyle(
                              color: appController.appTheme.foodTitleColor,
                              fontFamily: GoogleFonts.lato().fontFamily,
                              fontWeight: FontWeight.w400,
                              fontSize: FontSizes.f15,
                              letterSpacing: 0,
                              height: 1,
                            ))
                      ],
                    ).paddingOnly(right: Insets.i10),
                  ))
              .toList()
        ],
      ).marginSymmetric(horizontal: Insets.i15),
    );
  }
}
