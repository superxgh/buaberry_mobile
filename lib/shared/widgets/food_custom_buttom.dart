
import 'package:buaberry_mobile/app_controller.dart';
import 'package:buaberry_mobile/shared/shared.dart';
import 'package:buaberry_mobile/theme/scale.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodCustomButton extends StatelessWidget {
  final String title;
  final double padding;
  final double margin;
  final double radius;
  final double height;
  final double fontSize;
  final GestureTapCallback? onTap;
  final TextStyle? style;
  final Color? color;
  final Color? fontColor;
  final Widget? icon;
  final double? width;
  final Border? border;
  final FontWeight? fontWeight;
  final List<BoxShadow>? boxShadow;

  const FoodCustomButton(
      {Key? key,
      required this.title,
      this.padding = 15,
      this.margin = 15,
      this.radius = 5,
      this.height = 45,
      this.fontSize = FontSizes.f14,
      this.onTap,
      this.style,
      this.color,
      this.fontColor,
      this.icon,
      this.width,
      this.border,
      this.fontWeight = FontWeight.w700,this.boxShadow})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppController appController = Get.find<AppController>();
    return InkWell(
      onTap: onTap,
      child: Container(
          width: width ?? MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: margin),
          height: ResponsiveWidget.isSmallScreen(context) ? Sizes.s50 : height,
          decoration: BoxDecoration(
              color: color ?? appController.appTheme.primary,
              border: border,
              boxShadow: boxShadow,
              borderRadius: radius > 0 ? BorderRadius.circular(radius) : null),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            if (icon != null)
              Row(children: [icon ?? const HSpace(0), const HSpace(10)]),
            Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: fontSize,
                  color: fontColor ?? appController.appTheme.textColor,
                  fontFamily: GoogleFonts.lato().fontFamily.toString(),
                  fontWeight: fontWeight!,
                ),
            )
          ])),
    );
  }
}
