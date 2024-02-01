import 'dart:async';
import 'package:buaberry_mobile/models/models.dart';
import 'package:buaberry_mobile/models/response/users_response.dart';
import 'package:buaberry_mobile/shared/library/logger.dart';
import 'api.dart';

class ApiRepository {
  ApiRepository({required this.userApiProvider});

  final UserApiProvider userApiProvider;

  Future<LoginResponse?> login(LoginRequest data) async {
    logger.i(">>> ApiRepository->login()");
    final res = await userApiProvider.login(ApiConstants.userLogin, data);
    if (res.statusCode == 200) {
      return LoginResponse.fromJson(res.body);
    }
  }

  Future<RegisterResponse?> register(RegisterRequest data) async {
    final res = await userApiProvider.register('/api/register', data);
    if (res.statusCode == 200) {
      return RegisterResponse.fromJson(res.body);
    }
  }

  Future<UsersResponse?> getUsers() async {
    final res = await userApiProvider.getUsers('/api/users?page=1&per_page=12');
    if (res.statusCode == 200) {
      return UsersResponse.fromJson(res.body);
    }
  }
}
