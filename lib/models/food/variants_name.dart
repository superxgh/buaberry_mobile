  class VariantNameModel {
  String? title;

  VariantNameModel({this.title});

  VariantNameModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    return data;
  }
}