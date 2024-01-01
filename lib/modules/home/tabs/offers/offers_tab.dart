import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:buaberry_mobile/shared/constants/constants.dart';
import 'package:buaberry_mobile/shared/utils/utils.dart';

import '../../../../shared/widgets/widgets.dart';

class OffersTab extends StatelessWidget {
  const OffersTab({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // UJGText(
          //     text: 'Notification Tab', fontSize: CommonConstants.topicText),
          // CommonWidget.rowHeight(height: 30.0),
          // UJGText(
          //   text: "Notifications",
          //   fontSize: CommonConstants.labelText,
          // ),
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
