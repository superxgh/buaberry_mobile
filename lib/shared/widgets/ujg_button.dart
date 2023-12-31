import 'package:flutter/material.dart';
import 'package:buaberry_mobile/shared/shared.dart';

class UJGButton extends StatelessWidget {
  final String text1;
  final String? text2;
  final Color? backgroundColor;
  final double? width;
  final double? height;
  final void Function()? onPressed;

  const UJGButton({super.key, required this.text1, this.backgroundColor, this.width, this.height, this.onPressed, this.text2});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UJGText(fontSize: CommonConstants.normalText, text: text1),
            if (text2 != null) CommonWidget.rowHeight(height: 5.0),
            if (text2 != null) UJGText(fontSize: CommonConstants.normalText, text: text2 ?? ''),
          ],
        ),
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(backgroundColor ?? Colors.orange)),
        onPressed: onPressed ?? () {},
      ),
    );
  }
}
