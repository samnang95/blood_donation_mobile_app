import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/constants/app_themes.dart';

class ThemeController extends GetxController {
  static const _themeKey = 'isDarkMode';
  var isDarkMode = false.obs;

  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(milliseconds: 500), () async {
      await loadTheme();
    });
  }

  // Load theme from SharedPreferences
  Future<void> loadTheme() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      bool savedTheme = prefs.getBool(_themeKey) ?? false;
      isDarkMode.value = savedTheme;
      print(
        'ThemeController: Loaded theme from prefs - isDarkMode: $savedTheme',
      );
      print('ThemeController: Get.context is null: ${Get.context == null}');

      if (Get.context != null) {
        final appThemes = AppThemes();
        Get.changeTheme(
          isDarkMode.value
              ? appThemes.darkTheme(Get.context!)
              : appThemes.lightTheme(Get.context!),
        );
        print(
          'ThemeController: Theme changed to ${isDarkMode.value ? 'DARK' : 'LIGHT'}',
        );
      }
    } catch (e) {
      print('ThemeController Error: $e');
    }
  }

  // Toggle theme
  Future<void> toggleTheme() async {
    try {
      isDarkMode.value = !isDarkMode.value;
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(_themeKey, isDarkMode.value);
      print(
        'ThemeController: Saved theme to prefs - isDarkMode: ${isDarkMode.value}',
      );

      final appThemes = AppThemes();
      Get.changeTheme(
        isDarkMode.value
            ? appThemes.darkTheme(Get.context!)
            : appThemes.lightTheme(Get.context!),
      );
      print(
        'ThemeController: Theme toggled to ${isDarkMode.value ? 'DARK' : 'LIGHT'}',
      );
    } catch (e) {
      print('ThemeController Error: $e');
    }
  }
}
