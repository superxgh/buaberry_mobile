
import 'package:buaberry_mobile/app_controller.dart';
import 'package:buaberry_mobile/shared/shared.dart';
import 'package:buaberry_mobile/theme/app_css.dart';
import 'package:buaberry_mobile/theme/app_theme.dart';
import 'package:buaberry_mobile/theme/scale.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodLoginWidget {
  //common text style
  Widget commonTextWithTitleColor(text) => Align(
    alignment: Alignment.center,
    child: Text(text,
            style: TextStyle(
              fontFamily: GoogleFonts.lato().fontFamily,
              fontWeight: FontWeight.bold,
              fontSize: FontSizes.f18,
              letterSpacing: 0,
              height: 1,
            )),
  );

  //food confirmation code
  Widget confirmationCode(AppController appController, String text) => Align(
    alignment: Alignment.center,
    child: FittedBox(
        child: Text(text,
            style: TextStyle(
              color: appController.appTheme.foodContentColor,
              fontFamily: GoogleFonts.lato().fontFamily,
              fontWeight: FontWeight.bold,
              fontSize: FontSizes.f18,
              letterSpacing: 0,
              height: 1,
            ))

    ),
  );

  Widget PhoneNumberLabel(AppController appController, String text) => Align(
    alignment: Alignment.centerLeft,
    child:Text(text,
            style: TextStyle(
              color: appController.appTheme.textColor,
              fontFamily: GoogleFonts.lato().fontFamily,
              fontWeight: FontWeight.bold,
              fontSize: FontSizes.f24,
              letterSpacing: 0,
              height: 1,
            ))
  );

//next button
  Widget nextButton(AppController appController, {GestureTapCallback? onTap,title}) => FoodCustomButton(
        title: title,
        radius: AppRadius.r10,
        color: appController.appTheme.foodPrimaryColor,
        padding: Insets.i10,
        fontSize: FontSizes.f18,
        onTap: onTap,
      );
}
