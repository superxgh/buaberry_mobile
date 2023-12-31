import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:buaberry_mobile/shared/constants/constants.dart';
import 'package:buaberry_mobile/shared/utils/utils.dart';

import '../../../../shared/widgets/widgets.dart';

class MeTab extends StatelessWidget {
  const MeTab({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UJGText(text: 'Me Tab', fontSize: CommonConstants.topicText),
            CommonWidget.rowHeight(height: 30.0),
            UJGText(
              text: "Notifications",
              fontSize: CommonConstants.labelText,
            ),
            CommonWidget.rowHeight(height: 15.0),
            UJGText(
              text: "New promotions",
              fontSize: CommonConstants.labelText,
              textAlign: Alignment.centerLeft,
            ),
            CommonWidget.rowHeight(height: 10.0),
            Container(
                width: Get.width * 0.95,
                height: 120.0,
                color: Colors.white,
                child: Center(
                  child: Text(
                    "Promotions",
                    textAlign: TextAlign.center,
                  ),
                )),
            CommonWidget.rowHeight(height: 15.0),
            UJGText(
              text: "My Orders",
              fontSize: CommonConstants.labelText,
              textAlign: Alignment.centerLeft,
            ),
            CommonWidget.rowHeight(height: 10.0),
            Container(
                width: Get.width * 0.95,
                height: 120.0,
                color: Colors.white,
                child: Center(
                  child: Text(
                    "Orders",
                    textAlign: TextAlign.center,
                  ),
                )),
            CommonWidget.rowHeight(height: 15.0),
            UJGText(
              text: "Wallet",
              fontSize: CommonConstants.labelText,
              textAlign: Alignment.centerLeft,
            ),
            CommonWidget.rowHeight(height: 10.0),
            Container(
                width: Get.width * 0.95,
                height: 120.0,
                color: Colors.white,
                child: Center(
                  child: Text(
                    "Wallet",
                    textAlign: TextAlign.center,
                  ),
                )),
            CommonWidget.rowHeight(height: 15.0),
            UJGText(
              text: "Order monitoring",
              fontSize: CommonConstants.labelText,
              textAlign: Alignment.centerLeft,
            ),
            CommonWidget.rowHeight(height: 10.0),
            Container(
                width: Get.width * 0.95,
                height: 120.0,
                color: Colors.white,
                child: Center(
                  child: Text(
                    "Order status",
                    textAlign: TextAlign.center,
                  ),
                )),
            CommonWidget.rowHeight(height: 15.0),
            UJGText(
              text: "Account setting",
              fontSize: CommonConstants.labelText,
              textAlign: Alignment.centerLeft,
            ),
            CommonWidget.rowHeight(height: 10.0),
            Container(
                width: Get.width * 0.95,
                height: 120.0,
                color: Colors.white,
                child: Center(
                  child: Text(
                    "setting list",
                    textAlign: TextAlign.center,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
