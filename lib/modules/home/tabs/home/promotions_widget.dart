import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:buaberry_mobile/shared/constants/constants.dart';
import 'package:buaberry_mobile/shared/utils/utils.dart';
import 'package:buaberry_mobile/shared/widgets/widgets.dart';

class SPProtionMenuWidget extends StatelessWidget {
  const SPProtionMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          UJGText(
            text: "Promotions",
            fontSize: CommonConstants.labelText,
          ),
          CommonWidget.rowHeight(height: 12.0),
          Container(
              width: Get.width * 0.95,
              height: 100.0,
              color: Colors.white,
              child: Center(
                child: Text(
                  "R1",
                  textAlign: TextAlign.center,
                ),
              )),
          CommonWidget.rowHeight(height: 10.0),
          Container(
              width: Get.width * 0.95,
              height: 100.0,
              color: Colors.white,
              child: Center(
                child: Text(
                  "R1",
                  textAlign: TextAlign.center,
                ),
              )),
          CommonWidget.rowHeight(height: 10.0),
          Container(
              width: Get.width * 0.95,
              height: 100.0,
              color: Colors.white,
              child: Center(
                child: Text(
                  "R1",
                  textAlign: TextAlign.center,
                ),
              )),
        ],
      ),
    );
  }
}
