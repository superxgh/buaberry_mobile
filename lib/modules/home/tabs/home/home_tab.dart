import 'package:flutter/material.dart';
import 'package:buaberry_mobile/shared/shared.dart';
import 'popular_menu_widget.dart';
import 'feature_menu_widget.dart';
import 'products_widget.dart';
import 'promotions_widget.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            UJGText(text: 'Home Tab', fontSize: CommonConstants.topicText),
            CommonWidget.rowHeight(height: 30.0),
            SPFeatureMenuWidget(),
            CommonWidget.rowHeight(height: 15.0),
            SPPopularMenuWidget(),
            CommonWidget.rowHeight(height: 15.0),
            SPProtionMenuWidget(),
            CommonWidget.rowHeight(height: 15.0),
            SPProductsWidget()
          ],
        ),
      ),
    );
  }
}
