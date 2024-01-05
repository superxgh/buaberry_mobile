class ProfileModel {
  String? title;
  List<ProfileList>? profileList;

  ProfileModel({this.title, this.profileList});

  ProfileModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    if (json['profileList'] != null) {
      profileList = <ProfileList>[];
      json['profileList'].forEach((v) {
        profileList!.add(ProfileList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    if (profileList != null) {
      data['profileList'] = profileList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ProfileList {
  String? title;
  String? icon;
  String? routeName;

  ProfileList({this.title, this.icon, this.routeName});

  ProfileList.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    icon = json['icon'];
    routeName = json['routeName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['icon'] = icon;
    data['routeName'] = routeName;
    return data;
  }
}