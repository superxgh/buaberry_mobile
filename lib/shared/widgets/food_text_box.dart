
import 'package:buaberry_mobile/app_controller.dart';
import 'package:buaberry_mobile/shared/extensions/spacing.dart';
import 'package:buaberry_mobile/theme/app_css.dart';
import 'package:buaberry_mobile/theme/scale.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodTextBox extends StatelessWidget {
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String hinText;
  final FormFieldValidator<String>? validator;

  const FoodTextBox(
      {Key? key,
        this.controller,
        this.suffixIcon,
        this.prefixIcon,
        this.hinText = "Search",this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (appCtrl) {
      return Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: appCtrl.appTheme.foodShadowColor,
              blurRadius: 6,
              offset: const Offset(2, 3),
            ),
          ],
        ),
        child: TextFormField(
          controller: controller,
          validator: validator,
          decoration: InputDecoration(
            filled: true,
            hintText: hinText.tr,

            hintStyle: TextStyle(
              fontFamily: GoogleFonts.lato().fontFamily,
              fontWeight: FontWeight.w400,
              letterSpacing: 0,
              height: 1,
            ),
            border: OutlineInputBorder(
              borderRadius:
              BorderRadius.circular(AppRadius.r10),

              borderSide: BorderSide.none,
            ),
            prefix: const HSpace(Sizes.s10),
            suffix: const HSpace(Sizes.s10),
           contentPadding: const EdgeInsets.symmetric(horizontal: Insets.i15),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            fillColor: appCtrl.appTheme.whiteColor,
          ),
        ),
      );
    });
  }
}
