
class MethodList {
  String? cardNo;
  String? expiryDate;
  String? icon;

  MethodList({this.cardNo, this.expiryDate, this.icon});

  MethodList.fromJson(Map<String, dynamic> json) {
    cardNo = json['cardNo'];
    expiryDate = json['expiryDate'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cardNo'] = cardNo;
    data['expiryDate'] = expiryDate;
    data['icon'] = icon;
    return data;
  }
}