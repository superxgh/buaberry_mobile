import 'package:buaberry_mobile/shared/library/logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';

void main() {
  test("HTTP request", () async {
    final result = await get(Uri.http("api.ipify.org","/"));
    logger.d(": result.statusCode = ${result.statusCode}");
    logger.d(": result.body = ${result.body}");
    expect(result.statusCode, 200);
  });
}