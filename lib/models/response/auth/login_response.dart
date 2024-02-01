import 'dart:convert';

import 'package:buaberry_mobile/shared/library/logger.dart';

class LoginResponse {

  String mobileNumber;
  String username;
  String? image;
  String token;

//<editor-fold desc="Data Methods">
  LoginResponse({
    required this.mobileNumber,
    required this.username,
    this.image,
    required this.token,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LoginResponse &&
          runtimeType == other.runtimeType &&
          mobileNumber == other.mobileNumber &&
          username == other.username &&
          image == other.image &&
          token == other.token);

  @override
  int get hashCode =>
      mobileNumber.hashCode ^
      username.hashCode ^
      image.hashCode ^
      token.hashCode;

  @override
  String toString() {
    return 'LoginResponse{' +
        ' mobileNumber: $mobileNumber,' +
        ' username: $username,' +
        ' image: $image,' +
        ' token: $token,' +
        '}';
  }

  LoginResponse copyWith({
    String? mobileNumber,
    String? username,
    String? image,
    String? token,
  }) {
    return LoginResponse(
      mobileNumber: mobileNumber ?? this.mobileNumber,
      username: username ?? this.username,
      image: image ?? this.image,
      token: token ?? this.token,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'mobileNumber': this.mobileNumber,
      'username': this.username,
      'image': this.image,
      'token': this.token,
    };
  }

  factory LoginResponse.fromMap(Map<String, dynamic> map) {
    return LoginResponse(
      mobileNumber: map['mobileNumber'] as String,
      username: map['username'] as String,
      image: map['image'] as String,
      token: map['token'] as String,
    );
  }

//</editor-fold>
}
