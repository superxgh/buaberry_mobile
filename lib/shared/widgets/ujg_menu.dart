import 'package:flutter/material.dart';
import 'package:buaberry_mobile/shared/constants/constants.dart';
import 'package:buaberry_mobile/shared/utils/common_widget.dart';
import 'package:buaberry_mobile/shared/widgets/widgets.dart';

class UJGMenu extends StatelessWidget {
  final double? width;
  final String shortName;
  final String name;
  final void Function()? onPressed;
  const UJGMenu({super.key, required this.shortName, required this.name, this.onPressed, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.all(8.0),
      color: Colors.black,
      child: Center(
          child: Column(
        children: [
          UJGText(fontSize: CommonConstants.largeText, text: shortName),
          TextButton(onPressed: onPressed ?? () {}, child: UJGText(fontSize: CommonConstants.normalText, text: name, textColor: Colors.orange))
        ],
      )),
    );
  }
}
