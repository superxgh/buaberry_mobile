import 'dart:async';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:buaberry_mobile/models/models.dart';
import 'package:buaberry_mobile/shared/shared.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';

FutureOr<dynamic> responseInterceptor(
    Request request, Response response) async {

  logger.i(">>> responseInterceptor()");
  logger.d(": response.statusCode = ${response.statusCode}");

  // EasyLoading.dismiss();

  if (response.statusCode != 200) {
    handleErrorStatus(response);
    return;
  }

  return response;
}

void handleErrorStatus(Response response) {
  switch (response.statusCode) {
    case 400:
      final message = ErrorResponse.fromJson(response.body);
      CommonWidget.toast(message.error);
      break;
    default:
  }

  return;
}
