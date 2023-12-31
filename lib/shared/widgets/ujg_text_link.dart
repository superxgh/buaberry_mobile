import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class UJGTextLink extends StatelessWidget {
  final String text;
  final Color? textColor;
  final void Function()? onPressed;

  const UJGTextLink(
      {super.key, required this.text, this.textColor, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: new Text(
          text,
          style: TextStyle(color: textColor ?? Colors.white),
        ),
        onTap: onPressed ?? () {});
  }
}
