
import 'package:buaberry_mobile/config.dart';

import 'delivery_instruction_card.dart';

class DeliveryInstructionLayout extends StatelessWidget {
  const DeliveryInstructionLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartController>(builder: (foodCartController) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextLabel(
            text: FoodOrderingThemeFont.deliveryInstruction,
            alignment: Alignment.centerLeft,
            fontFamily: FontFamily.LATO,
            fontWeight: FontWeight.bold,
            fontSize: FontSizes.f16,
            color: appController.appTheme.foodTitleColor,
          ),
          const VSpace(Sizes.s10),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: Insets.i20),
            decoration: BoxDecoration(
                color: appController.appTheme.whiteColor,
                borderRadius: BorderRadius.circular(AppRadius.r8),
                boxShadow: [
                  BoxShadow(
                      color: appController.appTheme.foodShadowColor,
                      blurRadius: 6,
                      offset: const Offset(2, 3))
                ]),
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemCount: foodCartController.deliveryInstruction.length,
              itemBuilder: (context, index) {
                return DeliveryInstructionCard(
                  data: foodCartController.deliveryInstruction[index],
                  onChanged: (checked) {
                    for (var element in foodCartController.deliveryInstruction) {
                      element['isChecked'] = false;
                    }

                    bool? val = checked;
                    foodCartController.deliveryInstruction[index]['isChecked'] = val!;
                    foodCartController.update();
                  },
                );
              },
            ).marginOnly(bottom: Insets.i15),
          )
        ],
      );
    });
  }
}
