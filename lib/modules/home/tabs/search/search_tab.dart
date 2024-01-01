import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:buaberry_mobile/routes/routes.dart';
import 'package:buaberry_mobile/shared/constants/constants.dart';
import 'package:buaberry_mobile/shared/utils/utils.dart';

import '../../../../shared/widgets/widgets.dart';
import 'category_widget.dart';

class SearchTab extends StatelessWidget {
  const SearchTab({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // UJGText(text: 'Menu Tab', fontSize: CommonConstants.topicText),
            CommonWidget.rowHeight(height: 30.0),
            // UJGTextLink(
            //   text: "Order",
            //   onPressed: () {
            //     Get.toNamed(Routes.ORDER);
            //   },
            // ),
            SPProductCategoryWidget(category: "Breads"),
            CommonWidget.rowHeight(height: 30.0),
            SPProductCategoryWidget(category: "Cakes"),
            CommonWidget.rowHeight(height: 30.0),
            SPProductCategoryWidget(category: "Cookies"),
            CommonWidget.rowHeight(height: 30.0),
            SPProductCategoryWidget(category: "Healthy"),
            CommonWidget.rowHeight(height: 30.0),
            SPProductCategoryWidget(category: "Drinking"),
            CommonWidget.rowHeight(height: 30.0),
          ],
        ),
      ),
    );
  }
}
