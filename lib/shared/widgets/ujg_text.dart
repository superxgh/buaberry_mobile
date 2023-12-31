import 'package:flutter/material.dart';
import 'package:buaberry_mobile/shared/shared.dart';

class UJGText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? textColor;
  final FontWeight? textBold;
  final AlignmentGeometry? textAlign;

  const UJGText({super.key, required this.text, this.fontSize, this.textColor, this.textBold, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: textAlign ?? Alignment.bottomCenter,
      child: Text(text, style: TextStyle(fontSize: fontSize ?? CommonConstants.normalText, fontWeight: textBold, color: textColor ?? Colors.white)),
    );
  }
}
