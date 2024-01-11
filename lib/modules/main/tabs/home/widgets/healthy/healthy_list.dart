

import 'package:buaberry_mobile/config.dart';
import '../home_widget.dart';
import 'healthy_card.dart';

class HealthyList extends StatelessWidget {
  const HealthyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (homeCtrl) {
      return Column(
        children: [
          ...homeCtrl.healthyList.map((e) {
            return HealthyCard(
              product: e,
            ).marginSymmetric(horizontal: Insets.i15);
          }).toList()
        ],
      );
    });
  }
}
