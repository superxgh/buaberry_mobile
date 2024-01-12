import 'package:buaberry_mobile/config.dart';

import 'col_list_card.dart';

class ColListLayout extends StatelessWidget {
  final List<Product>? productList;
  const ColListLayout({Key? key, this.productList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          ...productList!
              .map((e) => ColListCard(product: e))
              .toList()
        ],
      ),
    );
  }
}