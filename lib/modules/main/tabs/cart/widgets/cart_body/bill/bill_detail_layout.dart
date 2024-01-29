import 'package:buaberry_mobile/config.dart';

class BillLayout extends StatelessWidget {
  const BillLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextLabel(
          text: ThemeFont.billDetail,
          alignment: Alignment.centerLeft,
          fontFamily: FontFamily.LATO,
          fontWeight: FontWeight.bold,
          fontSize: FontSizes.f16,
          color: appController.appTheme.foodTitleColor,
        ),
        const VSpace(Sizes.s10),
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(
              horizontal: Insets.i20, vertical: Insets.i15),
          decoration: BoxDecoration(
              color: appController.appTheme.whiteColor,
              borderRadius: BorderRadius.circular(AppRadius.r8),
              boxShadow: [
                BoxShadow(
                    color: appController.appTheme.foodShadowColor,
                    blurRadius: 6,
                    offset: const Offset(2, 3))
              ]),
          child: Column(children: [
            ...foAppArray.billLayout
                .asMap()
                .entries
                .map(
                    (e) {
                      logger.d(": e = $e");
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextLabel(
                                text: e.value["title"].toString(),
                                alignment: Alignment.centerLeft,
                                fontFamily: FontFamily.LATO,
                                fontWeight: e.key == 3 ? FontWeight.bold : FontWeight.w400,
                                fontSize: e.key == 3 ? FontSizes.f18 : FontSizes.f16 ,
                                color: appController.appTheme.textColor,
                              ),
                              TextLabel(
                                text: e.value["price"].toString(),
                                alignment: Alignment.centerLeft,
                                fontFamily: FontFamily.LATO,
                                fontWeight: e.key == 3 ? FontWeight.bold : FontWeight.w400,
                                fontSize: e.key == 3 ? FontSizes.f18 : FontSizes.f16 ,
                                color: appController.appTheme.textColor,
                              ),
                            ],
                          ).marginOnly(bottom: Insets.i12),
                          if (e.key == 2)
                            Divider(color: appController.appTheme.borderColor)
                                .marginOnly(bottom: Insets.i12)
                        ],
                      );
                    }
                    )
                .toList()
          ]),
        )
      ],
    );
  }
}
