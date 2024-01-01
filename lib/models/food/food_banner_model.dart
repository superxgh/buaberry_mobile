class FoodBannerModel {
  String? title;
  String? desc;
  String? offer;
  String? image;

  FoodBannerModel({this.title, this.desc, this.offer, this.image});

  FoodBannerModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    desc = json['desc'];
    offer = json['offer'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['desc'] = desc;
    data['offer'] = offer;
    data['image'] = image;
    return data;
  }
}