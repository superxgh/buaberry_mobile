import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:buaberry_mobile/shared/utils/common_widget.dart';
import 'package:buaberry_mobile/shared/widgets/widgets.dart';

class UJGPaginator extends StatelessWidget {
  final List<int> pageList;
  const UJGPaginator({super.key, required this.pageList});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      color: Colors.black,
      padding: CommonWidget.mainCellLRPadding(width: Get.width),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          UJGButton(text1: "|<", backgroundColor: Colors.black, width: 30.0),
          UJGButton(text1: "<", backgroundColor: Colors.black, width: 30.0),
          UJGButton(text1: pageList[0].toString(), backgroundColor: Colors.black, width: 30.0),
          UJGButton(text1: pageList[1].toString(), backgroundColor: Colors.black, width: 30.0),
          UJGButton(text1: pageList[2].toString(), backgroundColor: Colors.black, width: 30.0),
          UJGButton(text1: ">", backgroundColor: Colors.black, width: 30.0),
          UJGButton(text1: ">|", backgroundColor: Colors.black, width: 30.0),
          UJGButton(text1: "Rows(10)", backgroundColor: Colors.black, width: 80.0)
        ],
      ),
    );
  }
}
