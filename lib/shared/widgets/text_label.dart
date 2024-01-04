import 'package:buaberry_mobile/config.dart';

class TextLabel extends StatelessWidget {
  final String text;
  final String? textExtend;
  final String? fontFamily;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final AlignmentGeometry? alignment;
  final TextOverflow? overflow;

  const TextLabel(
      {super.key,
      required this.text,
      this.textExtend,
      this.fontFamily,
      this.fontSize,
      this.fontWeight,
      this.color,
      this.alignment,
      this.overflow});

  @override
  Widget build(BuildContext context) {
    String? activeFontFamily;
    switch (text) {
      case FontFamily.LATO:
        activeFontFamily = GoogleFonts.lato().fontFamily;
        break;
      case FontFamily.OLESCRIPTSWASHCAPS:
        activeFontFamily = GoogleFonts.oleoScriptSwashCaps().fontFamily;
        break;
      case FontFamily.MONTSERRAT:
        activeFontFamily = GoogleFonts.montserrat().fontFamily;
        break;
      default:
    }
    return Align(
      alignment: alignment ?? Alignment.center,
      child: Text("${trans(text)}${(textExtend != null) ? ' ' + trans(textExtend!) : ''}",
          overflow: overflow,
          style: TextStyle(
            color: color,
            fontFamily: activeFontFamily,
            fontWeight: fontWeight,
            fontSize: fontSize,
            letterSpacing: 0,
            height: 1,
          )),
    );
  }
}
