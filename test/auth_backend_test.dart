import 'package:buaberry_mobile/shared/library/logger.dart';
import 'package:test/test.dart';
import 'package:http/http.dart' as http;
import 'package:nock/nock.dart';

void main() {
  setUpAll(nock.init);

  setUp(() {
    nock.cleanAll();
  });

  test('example', () async {
    final interceptor = nock('http://localhost').get('/api/users')
      ..reply(
        200,
        'result',
      );

    logger.d(": interceptor.isDone = ${interceptor.isDone}");

    final response = await http.get(Uri.parse('http://localhost/api/users'));

    logger.d(": interceptor.isDone = ${interceptor.isDone}");
    logger.d(": response.statusCode = ${response.statusCode}");
    logger.d(": response.body = ${response.body}");
    expect(interceptor.isDone, true);
    expect(response.statusCode, 200);
    expect(response.body, 'result');
  });
}