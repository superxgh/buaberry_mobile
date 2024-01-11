import 'package:buaberry_mobile/config.dart';

class RowListLayout extends StatelessWidget {
  final List<Product>? productList;
final bool isFullWidth;
  const RowListLayout({Key? key, this.productList,this.isFullWidth= false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
