
import 'package:buaberry_mobile/shared/constants/constants.dart';
import 'package:flutter/cupertino.dart';

class DirectionalityRtl extends StatelessWidget {
  final Widget? child;
  const DirectionalityRtl({Key? key,this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: CommonConstants.isRTL || CommonConstants.languageVal == "ar"
            ? TextDirection.rtl
            : TextDirection.ltr,
        child: child!);
  }
}
