import 'package:buaberry_mobile/shared/library/logger.dart';
import 'package:get/get.dart';

import '../api.dart';

class BaseProvider extends GetConnect {
  @override
  void onInit() {
    logger.i(">>> BaseProvider->onInit()");
    httpClient.baseUrl = ApiConstants.baseUrl;
    httpClient.addAuthenticator(authInterceptor);
    httpClient.addRequestModifier(requestInterceptor);
    httpClient.addResponseModifier(responseInterceptor);
  }
}
