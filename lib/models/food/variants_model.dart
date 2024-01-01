
import 'package:buaberry_mobile/models/food/variants_name.dart';

class VariantsModel {
  String? title;
  List<VariantNameModel>? data;

  VariantsModel({this.title, this.data});

  VariantsModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    if (json['data'] != null) {
      data = <VariantNameModel>[];
      json['data'].forEach((v) {
        data!.add(VariantNameModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
