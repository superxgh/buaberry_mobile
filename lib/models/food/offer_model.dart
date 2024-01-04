class OfferModel {
  int? offer;
  String? title;
  String? desc;
  String? code;

  OfferModel({this.offer, this.title, this.desc, this.code});

  OfferModel.fromJson(Map<String, dynamic> json) {
    offer = json['offer'];
    title = json['title'];
    desc = json['desc'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['offer'] = offer;
    data['title'] = title;
    data['desc'] = desc;
    data['code'] = code;
    return data;
  }
}