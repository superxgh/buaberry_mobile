import 'dart:convert';

class LoginRequest {
  LoginRequest({
    required this.username,
    required this.userpw,
  });

  @override
  String toString() {
    return 'LoginRequest{username: $username, userpw: $userpw}';
  }

  String username;
  String userpw;

  factory LoginRequest.fromRawJson(String str) =>
      LoginRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LoginRequest.fromJson(Map<String, dynamic> json) => LoginRequest(
        username: json["username"],
        userpw: json["userpw"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "userpw": userpw,
      };
}
