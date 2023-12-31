import 'package:flutter/material.dart';

class UJGTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String label;
  final Color? labelColor;
  final Color? textColor;
  final Color? backgroundColor;
  final double? height;
  final double? width;
  final void Function()? onPressed;

  const UJGTextField(
      {super.key,
      required this.label,
      this.labelColor,
      this.textColor,
      this.backgroundColor,
      this.height,
      this.width,
      this.onPressed,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: backgroundColor ?? Colors.black,
        height: height,
        width: width,
        child: TextField(
          controller: controller,
          style: TextStyle(color: textColor ?? Colors.white),
          obscureText: false,
          decoration: InputDecoration(
            fillColor: backgroundColor ?? Colors.black,
            filled: true,
            border: OutlineInputBorder(),
            labelText: label,
            labelStyle: TextStyle(
              color: labelColor ?? Colors.white,
            ),
          ),
        ));
  }
}
