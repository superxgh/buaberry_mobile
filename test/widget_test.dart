import 'package:buaberry_mobile/api/provider/user_api_provider.dart';
import 'package:buaberry_mobile/api/api_repository.dart';
import 'package:buaberry_mobile/config.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Test Load controller', () {

    final controller = LoginController(apiRepository: ApiRepository(userApiProvider: UserApiProvider()));
    expect(controller.name.value, 'LoginController');
    print("LoginController");

    Get.put(controller); // onInit was called
    expect(controller.name.value, 'LoginController->onInit()');
    print("LoginController->onInit()");

        // /// Test your functions
        // controller.changeName();
        // expect(controller.name.value, 'name3');
        //
        // /// onClose was called
        // Get.delete<Controller>();
        //
        // expect(controller.name.value, '');
      });
}
