import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:buaberry_mobile/shared/constants/constants.dart';
import 'package:buaberry_mobile/shared/utils/utils.dart';

import '../../../../shared/widgets/widgets.dart';

class OffersTab extends StatelessWidget {
  const OffersTab({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        //search text box
      //   FoodTextBox(
      //   controller: offerCtrl.controller,
      //   hinText: trans(foThemeFont.searchForOffer),
      // ),
      // const VSpace(Sizes.s20),
      // //offers list
      // Column(
      //   children: [
      //     ...offerCtrl.offerList
      //         .map((e) => FoodOfferList(offerModel: e).offerListExtension()
      //     )
      //         .toList()
        ],
      ),
    );
  }
}
