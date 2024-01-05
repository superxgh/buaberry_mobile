class OrderHistoryModel {
  String? image;
  String? name;
  double? rating;
  String? address;
  String? price;
  String? date;
  String? status;
  List<Items>? items;

  OrderHistoryModel(
      {this.image,
        this.name,
        this.rating,
        this.address,
        this.price,
        this.date,
        this.status,
        this.items});

  OrderHistoryModel.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
    rating = json['rating'];
    address = json['address'];
    price = json['price'];
    date = json['date'];
    status = json['status'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['name'] = name;
    data['rating'] = rating;
    data['address'] = address;
    data['price'] = price;
    data['date'] = date;
    data['status'] = status;
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  int? quantity;
  String? name;

  Items({this.quantity, this.name});

  Items.fromJson(Map<String, dynamic> json) {
    quantity = json['quantity'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['quantity'] = quantity;
    data['name'] = name;
    return data;
  }
}