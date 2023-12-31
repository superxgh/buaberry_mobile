import 'package:flutter/material.dart';
import 'package:buaberry_mobile/shared/constants/common.dart';
import 'package:buaberry_mobile/shared/utils/utils.dart';
import 'package:buaberry_mobile/shared/widgets/widgets.dart';

class UJGSmallButton extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  final double? width;
  final double? height;
  final void Function()? onPressed;

  const UJGSmallButton({super.key, required this.text, this.backgroundColor, this.width, this.height, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height ?? 30.0,
      child: TextButton(
        child: UJGText(fontSize: CommonConstants.smallText, text: text, textAlign: Alignment.center),
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(backgroundColor ?? Colors.orange)),
        onPressed: onPressed ?? () {},
      ),
    );
  }
}
