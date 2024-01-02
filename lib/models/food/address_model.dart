class AddressModel {
  String? address;
  int? pinCode;
  String? state;
  String? phone;
  String? addressType;
  String? icon;

  AddressModel(
      {this.address,
        this.pinCode,
        this.state,
        this.phone,
        this.addressType,
        this.icon});

  AddressModel.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    pinCode = json['pinCode'];
    state = json['state'];
    phone = json['phone'];
    addressType = json['addressType'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['address'] = address;
    data['pinCode'] = pinCode;
    data['state'] = state;
    data['phone'] = phone;
    data['addressType'] = addressType;
    data['icon'] = icon;
    return data;
  }
}