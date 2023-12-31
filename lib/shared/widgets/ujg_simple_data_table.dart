import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:buaberry_mobile/shared/constants/constants.dart';
import 'package:buaberry_mobile/shared/widgets/widgets.dart';

class UJGSimpleDataTable extends StatelessWidget {
  const UJGSimpleDataTable({super.key});

  @override
  Widget build(BuildContext context) {
    var formatter = NumberFormat('#,##,##0.00');
    return DataTable2(
        columnSpacing: 12,
        horizontalMargin: 12,
        minWidth: Get.width * 0.95,
        border: TableBorder(bottom: BorderSide(color: Colors.white), horizontalInside: const BorderSide(color: Colors.white)),
        dividerThickness: 0,
        columns: [
          DataColumn2(
            label: Text('Category'),
            size: ColumnSize.L,
          ),
          DataColumn2(
            label: Text('Values'),
            numeric: true,
          ),
        ],
        rows: List<DataRow>.generate(
            100,
            (index) => DataRow(cells: [
                  DataCell(UJGText(fontSize: CommonConstants.smallText, text: '${index + 1}. ' + 'A' * (10 - index % 10))),
                  DataCell(UJGText(fontSize: CommonConstants.smallText, text: formatter.format((index + 0.1) * 25.4)))
                ])));
  }
}
