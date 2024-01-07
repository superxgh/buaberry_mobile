

import 'package:buaberry_mobile/config.dart';
class ThemeService {
  final _getStorage = GetStorage();
  final _storageKey = "isDarkMode";

  /// Get isDarkMode info from local storage and return ThemeMode
  ThemeMode get theme =>
      _loadThemeFromStorage() ? ThemeMode.dark : ThemeMode.light;

  /// Load isDArkMode from local storage and if it's empty, returns false (that means default theme is light)
  bool _loadThemeFromStorage() => _getStorage.read(_storageKey) ?? false;

  /// Save isDarkMode to local storage
  _saveThemeToStorage(bool isDarkMode) =>
      _getStorage.write(_storageKey, isDarkMode);

  /// Switch theme and save to local storage
  switchTheme(loadThemeFromStorage) async {
    if (loadThemeFromStorage) {
      Get.changeThemeMode(ThemeMode.dark);
      await appController.updateTheme(AppTheme.fromType(ThemeType.dark));
      _saveThemeToStorage(true);
      appController.update();

      Get.forceAppUpdate();
    } else {
      Get.changeThemeMode(ThemeMode.light);
      await appController.updateTheme(AppTheme.fromType(ThemeType.light));
      _saveThemeToStorage(false);
      appController.update();
      Get.forceAppUpdate();
    }

    appController.update();
  }

  AppTheme get appTheme => Get.isDarkMode
      ? AppTheme.fromType(ThemeType.dark)
      : AppTheme.fromType(ThemeType.light);
}
