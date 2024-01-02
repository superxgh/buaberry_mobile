import 'package:buaberry_mobile/config.dart';

class TextLabel extends StatelessWidget {
  final String text;
  final String? fontFamily;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;

  const TextLabel(
      {super.key,
      required this.text,
      this.fontFamily,
      this.fontSize,
      this.fontWeight,
      this.color});

  @override
  Widget build(BuildContext context) {
    String? activeFontFamily;

    switch (text) {
      case FontFamily.LATO:
        activeFontFamily = GoogleFonts.lato().fontFamily;
        break;
      default:
    }

    return Text(trans(text),
        style: TextStyle(
          color: color,
          fontFamily: activeFontFamily,
          fontWeight: fontWeight,
          fontSize: fontSize,
          letterSpacing: 0,
          height: 1,
        ));
  }
}
