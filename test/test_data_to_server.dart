import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart'; // Import the testing package

void main() {
  test('fetchData returns expected data', () async {
    // Set up a MockClient
    final client = MockClient((request) async {
      // Provide mock responses based on the request
      return http.Response('{"message": "Hello, World!"}', 200);
    });

    // Use the mock client in your test
    final result = await fetchDataWithClient(client);

    // Verify that the function behaves as expected
    expect(result, 'Hello, World!');
  });
}

Future<String> fetchDataWithClient(http.Client client) async {
  var url = Uri.parse('https://example.com/data');
  final response = await client.get(url);
  if (response.statusCode == 200) {
    return response.body;
  } else {
    throw Exception('Failed to load data');
  }
}
