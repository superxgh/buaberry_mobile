import 'package:flutter/material.dart';

enum ThemeType {
  light,
  dark,
}

class AppTheme {
  static ThemeType defaultTheme = ThemeType.light;

  //Theme Colors
  bool isDark;

  //main theme color
  Color mainThemeColor;
  Color mainPrimaryColor;
  Color mainThemeBgColor;
  Color mainThemeBgColor1;
  Color mainGradientColor;
  Color mainGradient1Color;
  Color mainContentColor;

  //food theme color
  Color foodPrimaryColor;
  Color foodPrimaryLightColor;
  Color foodShadowColor;
  Color foodContentColor;
  Color foodContentColor1;
  Color foodTitleColor;
  Color foodTitleColor1;
  Color foodUnselectTabColor;

  Color txt;
  Color primary;
  Color primaryLight;
  Color secondary;
  Color accentTxt;
  Color bg1;
  Color bgColor;
  Color surface;
  Color error;
  Color dividerColor;

  //Extra Colors
  Color bgGray;
  Color gray;
  Color darkGray;
  Color lightGray;
  Color borderGray;
  Color green;
  Color white;
  Color whiteColor;
  Color blackText;
  Color blackColor;
  Color textColor;
  Color contentColor;
  Color borderColor;
  Color greenColor;
  Color darkContentColor;
  Color ratingColor;
  Color homeCategoryColor;
  Color greyLight25;
  Color lightModeColor;
  Color languageColor;
  Color rtlColor;
  Color redColor;
  Color darkGreyColor;

  /// Default constructor
  AppTheme({
    required this.isDark,
    required this.mainThemeColor,
    required this.mainPrimaryColor,
    required this.mainThemeBgColor,
    required this.mainThemeBgColor1,
    required this.mainGradientColor,
    required this.mainGradient1Color,
    required this.mainContentColor,

    //food theme color
    required this.foodPrimaryColor,
    required this.foodPrimaryLightColor,
    required this.foodShadowColor,
    required this.foodContentColor,
    required this.foodContentColor1,
    required this.foodTitleColor,
    required this.foodTitleColor1,
    required this.foodUnselectTabColor,

    required this.txt,
    required this.primary,
    required this.primaryLight,
    required this.secondary,
    required this.accentTxt,
    required this.bg1,
    required this.bgColor,
    required this.surface,
    required this.error,
    required this.dividerColor,
    //Extra
    required this.bgGray,
    required this.gray,
    required this.darkGray,
    required this.lightGray,
    required this.borderGray,
    required this.green,
    required this.white,
    required this.whiteColor,
    required this.blackText,
    required this.blackColor,
    required this.textColor,
    required this.contentColor,
    required this.borderColor,
    required this.greenColor,
    required this.darkContentColor,
    required this.ratingColor,
    required this.homeCategoryColor,
    required this.greyLight25,
    required this.lightModeColor,
    required this.languageColor,
    required this.rtlColor,
    required this.redColor,
    required this.darkGreyColor,
  });

  /// fromType factory constructor
  factory AppTheme.fromType(ThemeType t) {
    switch (t) {
      case ThemeType.light:
        return AppTheme(
          isDark: false,
          mainThemeColor: const Color(0xFF2A6354),
          mainPrimaryColor: const Color(0xFF2A6354),
          mainThemeBgColor: const Color(0xFFFAFAFA),
          mainThemeBgColor1: const Color(0xFFFAFAFA),
          mainGradientColor: const Color(0xFF24695C),
          mainGradient1Color: const Color(0xFF00261F),
          mainContentColor: const Color(0xFFD1D1D1),


          foodPrimaryColor: const Color(0xFFFEAF18),
          foodPrimaryLightColor: const Color(0xFFFFF9EC),
          foodShadowColor: const Color(0xFFd5d5d5).withOpacity(.3),
          foodContentColor: const Color(0xFFBCBCBC),
          foodContentColor1: const Color(0xFFBCBCBC),
          foodTitleColor: const Color(0xFF433417),
          foodTitleColor1: const Color(0xFF433417),
          foodUnselectTabColor: const Color(0xFFA4A4A4),


          txt: const Color(0xFF001928),

          primary: const Color(0xFFFF4C3B),
          primaryLight: const Color(0xFFFFF4F4),
          secondary: const Color(0xFF6EBAE7),
          accentTxt: const Color(0xFF001928),
          bg1: Colors.white,
          bgColor: Colors.white,
          surface: Colors.white,
          error: const Color(0xFFd32f2f),
          dividerColor: const Color(0xFFF9F9F9),
          //Extra
          bgGray: const Color(0xFFF0F8FD),
          gray: const Color(0xFF999999),
          darkGray: const Color(0xFF666666),
          lightGray: const Color(0xFFEDEFF4),
          borderGray: const Color(0xFFE6E8EA),
          green: const Color(0xFF5CB85C),
          white: Colors.white,
          whiteColor: Colors.white,
          blackText: const Color(0xFF222222),
          blackColor: Colors.black,
          contentColor: const Color(0xFF777777),
          borderColor: const Color(0xFFECECEC),
          greenColor: const Color(0xFF008E1F),
          darkContentColor: const Color(0xFFBABABA),
          ratingColor: const Color(0xFFFFBB12),
          homeCategoryColor: const Color(0xFFEAEDF2),
          textColor: Colors.black,
          greyLight25: const Color(0xFFEDEFF4),
          lightModeColor: const Color(0XFFFFF4EC),
          languageColor: const Color(0XFFFCF7F1),
          rtlColor: const Color(0XFFF3F6FB),
          redColor: const Color(0xFFBC0101),
          darkGreyColor: const Color(0xFFACACAC),
        );

      case ThemeType.dark:
        return AppTheme(
          isDark: true,
          mainThemeColor: const Color(0xFF2A6354),
          mainPrimaryColor: const Color(0xFF2A6354),
          mainThemeBgColor: Colors.black,
          mainThemeBgColor1: const Color(0xFFFAFAFA),
          mainGradientColor: const Color(0xFF24695C),
          mainGradient1Color: const Color(0xFF00261F),
          mainContentColor: const Color(0xFFD1D1D1),

          foodPrimaryColor: const Color(0xFFFEAF18),
          foodPrimaryLightColor: const Color(0xFF232323),
          foodShadowColor: const Color(0xFFd5d5d5).withOpacity(.3),
          foodContentColor: const Color(0xFFBCBCBC),
          foodContentColor1: Colors.black,
          foodTitleColor: Colors.white,
          foodTitleColor1: const Color(0xFF433417),
          foodUnselectTabColor: const Color(0xFFA4A4A4),



          txt: Colors.white,
          primary: const Color(0xFFFF4C3B),
          primaryLight: const Color(0xFF202020),
          secondary: const Color(0xFF6EBAE7),
          accentTxt: const Color(0xFF001928),
          bg1: const Color(0xFF151A1E),
          bgColor: const Color(0xFF262626),
          surface: const Color(0xFF151A1E),
          error: const Color(0xFFd32f2f),
          dividerColor: const Color(0xFFF9F9F9),
          //Extra
          bgGray: const Color(0xFF262F36),
          gray: const Color(0xFF999999),
          darkGray: const Color(0xFF999999),
          lightGray: const Color(0xFF202020),
          borderGray: const Color(0xFF353C41),
          green: const Color(0xFF5CB85C),
          white: Colors.white,
          whiteColor: Colors.black,
          blackText: const Color(0xFF262626),
          blackColor: Colors.white,
          contentColor: const Color(0xFF777777),
          borderColor: const Color(0xFFECECEC),
          greenColor: const Color(0xFF008E1F),
          darkContentColor: const Color(0xFFBABABA),
          ratingColor: const Color(0xFFFFBB12),
          textColor: const Color(0xFF636363),
          homeCategoryColor: const Color(0xFFEAEDF2),
          greyLight25: Colors.black,
          lightModeColor: Colors.black,
          languageColor: Colors.black,
          rtlColor: Colors.black,
          redColor: const Color(0xFFBC0101),
          darkGreyColor: const Color(0xFFACACAC),
        );
    }
  }

  ThemeData get themeData {
    var t = ThemeData.from(
      textTheme: (isDark ? ThemeData.dark() : ThemeData.light()).textTheme,
      colorScheme: ColorScheme(
        brightness: isDark ? Brightness.dark : Brightness.light,
        primary: primary,
        secondary: secondary,
        background: bg1,
        surface: surface,
        onBackground: txt,
        onSurface: txt,
        onError: txt,
        onPrimary: accentTxt,
        onSecondary: accentTxt,
        error: error,
      ),
    );
    return t.copyWith(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      textSelectionTheme: TextSelectionThemeData(
        selectionColor: borderGray,
        selectionHandleColor: Colors.transparent,
        cursorColor: primary,
      ),
      buttonTheme: ButtonThemeData(buttonColor: primary),
      highlightColor: Colors.transparent,
      toggleableActiveColor: primary,
    );
  }

//Color shift(Color c, double d) => shiftHsl(c, d * (isDark ? -1 : 1));
}
