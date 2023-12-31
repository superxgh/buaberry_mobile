import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:buaberry_mobile/shared/constants/constants.dart';
import 'package:buaberry_mobile/shared/utils/utils.dart';

import '../../../../shared/widgets/widgets.dart';
import 'category_widget.dart';

class LiveTab extends StatelessWidget {
  const LiveTab({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            UJGText(text: 'Menu Tab', fontSize: CommonConstants.topicText),
            CommonWidget.rowHeight(height: 30.0),
            SPLiveCategoryWidget(category: "How about bakery meterial ?"),
            CommonWidget.rowHeight(height: 30.0),
            SPLiveCategoryWidget(category: "How about bakery know-how ?"),
            CommonWidget.rowHeight(height: 30.0),
            SPLiveCategoryWidget(category: "How to make a good cake?"),
            CommonWidget.rowHeight(height: 30.0),
            SPLiveCategoryWidget(category: "Who should to get this cake? "),
            CommonWidget.rowHeight(height: 30.0),
            SPLiveCategoryWidget(category: "Who we do the cake for ?"),
            CommonWidget.rowHeight(height: 30.0),
          ],
        ),
      ),
    );
  }
}
