import 'package:buaberry_mobile/api/provider/base_provider.dart';
import 'package:buaberry_mobile/models/models.dart';
import 'package:buaberry_mobile/shared/library/logger.dart';
import 'package:get/get.dart';

class UserApiProvider extends BaseProvider {
  Future<Response> login(String path, LoginRequest data) {
    logger.i(">>> UserApiProvider->login()");
    logger.d(": path = $path");
    logger.d(": data = $data");
    return post(path, data.toJson());
  }

  Future<Response> register(String path, RegisterRequest data) {
    return post(path, data.toJson());
  }

  Future<Response> getUsers(String path) {
    return get(path);
  }
}
