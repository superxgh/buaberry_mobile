
import 'package:buaberry_mobile/config.dart';

class CardList extends StatelessWidget {
  final List<MethodList>? methodList;
  final int? index;

  const CardList({Key? key, this.methodList, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(AppRadius.r8),
        child: Column(children: [
          ...methodList!
              .asMap()
              .entries
              .map((method) => PaymentCard(
                    index: method.key,
                    methodList: method.value,
                    totalLength: methodList!.length - 1,
                  ))
              .toList(),
          if (index == 1 || index == 2)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DottedButton(name: trans(index == 1 ? hotelThemeFont.addNewCard : index == 2 ? hotelThemeFont.addUpi : "")),
              ],
            ).paddingOnly(top: Insets.i20),
        ])
            .paddingSymmetric(vertical: Insets.i20)
            .backgroundColor(Colors.white)
            .boxShadow(
                color: appCtrl.appTheme.foodShadowColor,
                blurRadius: 6,
                offset: const Offset(2, 3)));
  }
}
