import 'package:flutter/material.dart';

class UJGTextLink2Line extends StatelessWidget {
  final String text1;
  final String text2;
  final Color? textColor;
  final void Function()? onPressed;

  const UJGTextLink2Line(
      {super.key,
      required this.text1,
      required this.text2,
      this.textColor,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Column(
          children: [
            Text(
              text1,
              style: TextStyle(color: textColor ?? Colors.white),
            ),
            Text(
              text2,
              style: TextStyle(color: textColor ?? Colors.white),
            ),
          ],
        ),
        onTap: onPressed ?? () {});
  }
}
