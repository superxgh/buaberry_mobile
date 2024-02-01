import 'dart:async';

import 'package:buaberry_mobile/shared/library/logger.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get_connect/http/src/request/request.dart';

FutureOr<Request> requestInterceptor(request) async {

  logger.i(">>> requestInterceptor()");
  // final token = StorageService.box.pull(StorageItems.accessToken);

  // request.headers['X-Requested-With'] = 'XMLHttpRequest';
  // request.headers['Authorization'] = 'Bearer $token';

  logger.d(": request.headers = ${request.headers}");
  logger.i("loading...");

  // EasyLoading.show(status: 'loading...');
  return request;
}
