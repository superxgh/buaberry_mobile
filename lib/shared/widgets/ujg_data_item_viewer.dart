import 'package:flutter/material.dart';
import 'package:buaberry_mobile/shared/shared.dart';

class UJGDataItemViewer extends StatelessWidget {
  final Color? backGroundColor;
  final Widget? detail;
  final Widget? action;

  const UJGDataItemViewer({super.key, this.detail, this.action, this.backGroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: backGroundColor ?? Colors.black,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(8.0), bottomRight: Radius.circular(8.0), topLeft: Radius.circular(8.0), bottomLeft: Radius.circular(8.0)),
      ),
      child: Column(
        children: [detail ?? Container(), if (action != null) CommonWidget.rowHeight(height: 10.0), action ?? Container()],
      ),
    );
  }
}
