

import 'package:buaberry_mobile/models/food/variants_model.dart';

class Product {
  String? image;
  String? name;
  String? foodType;
  double? rating;
  String? arriveTime;
  String? distance;
  String? offer;
  String? address;
  String? state;
  String? city;
  String? priceForPeople;
  String? price;
  bool? isBestSeller;
  bool? isNewOpen;
  int? qty;
  List<VariantsModel>? variants;

  Product(
      {this.image,
      this.name,
      this.foodType,
      this.rating,
      this.arriveTime,
      this.distance,
      this.isBestSeller,
      this.offer,
      this.isNewOpen,
      this.address,
      this.city,
      this.price,
      this.priceForPeople,
      this.state,this.qty,this.variants});

  Product.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
    foodType = json['foodType'];
    rating = json['rating'];
    arriveTime = json['arriveTime'];
    distance = json['distance'];
    isBestSeller = json['isBestSeller'];
    offer = json['offer'];
    isNewOpen = json['isNewOpen'];
    address = json['address'];
    state = json['state'];
    city = json['city'];
    price = json['price'];
    priceForPeople = json['priceForPeople'];
    qty = json['qty'];
    if (json.containsKey('variants')) {
      variants = <VariantsModel>[];
      json['variants'].forEach((v) {
        variants!.add(VariantsModel.fromJson(v));
      });
    }

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['name'] = name;
    data['foodType'] = foodType;
    data['rating'] = rating;
    data['arriveTime'] = arriveTime;
    data['distance'] = distance;
    data['isBestSeller'] = isBestSeller;
    data['offer'] = offer;
    data['isNewOpen'] = isNewOpen;
    data['address'] = address;
    data['state'] = state;
    data['city'] = city;
    data['price'] = price;
    data['priceForPeople'] = priceForPeople;
    data['qty'] = qty;
    if (variants != null) {
      data['variants'] = variants!.map((v) => v.toJson()).toList();
    }

    return data;
  }
}
