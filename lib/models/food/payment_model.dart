
import 'method_list.dart';

class PaymentModel {
  String? title;
    List<MethodList>? methodList;

  PaymentModel({this.title, this.methodList});

  PaymentModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    if (json['methodList'] != null) {
      methodList = <MethodList>[];
      json['methodList'].forEach((v) {
        methodList!.add(MethodList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    if (methodList != null) {
      data['methodList'] = methodList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

