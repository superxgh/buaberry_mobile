import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:buaberry_mobile/modules/order/order.dart';
import 'package:buaberry_mobile/shared/shared.dart';

class OrderScreen extends GetView<OrderController> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UJGText(text: 'Order', fontSize: CommonConstants.topicText),
            CommonWidget.rowHeight(height: 30.0),
            UJGText(
              text: "Order header",
              fontSize: CommonConstants.labelText,
            ),
            CommonWidget.rowHeight(height: 15.0),
            Container(
                width: Get.width * 0.95,
                height: 120.0,
                color: Colors.white,
                child: Center(
                  child: Text(
                    "Order header detail",
                    textAlign: TextAlign.center,
                  ),
                )),
            CommonWidget.rowHeight(height: 15.0),
            UJGText(
              text: "Order item list",
              fontSize: CommonConstants.labelText,
              textAlign: Alignment.centerLeft,
            ),
            CommonWidget.rowHeight(height: 10.0),
            Container(
                width: Get.width * 0.95,
                height: 400.0,
                color: Colors.white,
                child: Center(
                  child: Text(
                    "Order item",
                    textAlign: TextAlign.center,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
