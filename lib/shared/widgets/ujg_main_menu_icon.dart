import 'package:flutter/material.dart';
import 'package:buaberry_mobile/shared/constants/constants.dart';
import 'package:buaberry_mobile/shared/utils/common_widget.dart';
import 'package:buaberry_mobile/shared/widgets/widgets.dart';

class UJGMainMenuIcon extends StatelessWidget {
  final String shortName;
  final String name;
  final void Function()? onPressed;
  final double? height;
  final double? width;

  const UJGMainMenuIcon({super.key, required this.shortName, required this.name, this.onPressed, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: Colors.black,
      height: height ?? 120.0,
      width: width ?? 100.0,
      child: Center(
          child: Column(
        children: [
          UJGText(fontSize: CommonConstants.largeText, text: shortName, textBold: FontWeight.bold),
          TextButton(onPressed: onPressed ?? () {}, child: UJGText(fontSize: CommonConstants.normalText, text: name, textColor: Colors.white))
        ],
      )),
    );
  }
}
