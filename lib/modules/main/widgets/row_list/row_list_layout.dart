

import 'package:buaberry_mobile/config.dart';

import 'row_list_card.dart';

class RowListLayout extends StatelessWidget {
  final List<Product>? productList;
final bool isFullWidth;
  const RowListLayout({Key? key, this.productList,this.isFullWidth= false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    logger.d(": productList length = ${productList!.length}");
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...productList!
              .map((e) => RowListCard(product: e,isFullWidth: isFullWidth))
              .toList()
        ],
      ),
    );
  }
}
