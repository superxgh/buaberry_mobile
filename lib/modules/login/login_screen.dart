import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:buaberry_mobile/modules/modules.dart';
import 'package:buaberry_mobile/shared/shared.dart';

class LoginScreen extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: CommonWidget.mainCellLTRBPadding(width: Get.width),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CommonWidget.rowHeight(height: 150.0),
          UJGText(
            text: "Login",
            fontSize: CommonConstants.largeText,
            textBold: FontWeight.bold,
            textColor: Colors.black,
          ),
          CommonWidget.rowHeight(height: 30.0),
          UJGTextField(label: "Username"),
          CommonWidget.rowHeight(height: 30.0),
          UJGTextField(label: "Password"),
          CommonWidget.rowHeight(height: 30.0),
          UJGButton(
            text1: "Login",
            height: 40.0,
            onPressed: () {
              controller.login();
            },
          )
        ],
      ),
    );
  }
}
