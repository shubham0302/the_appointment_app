// ignore_for_file: prefer_final_fields, invalid_use_of_protected_member

import 'package:get/get.dart';

import '../app_labels/customize_screen.dart';


class ThemeController extends GetxController {
  RxBool _isDark = false.obs;
  var _themeModeData = CScreenLabels.oprionsForBrightness[0].obs;
  RxString _mode = 'red'.obs;

  bool get isDark => _isDark.value;
  String get mode => _mode.value;
  Map<String, String> get themeModeData => _themeModeData.value;

  changeThemeMode() {
    _isDark.value = !_isDark.value;
  }

  changeThemeModeBy(int val) {
    if (val < 3 && val > 0) {
      _themeModeData.value = CScreenLabels.oprionsForBrightness[0];
    } else {
      _themeModeData.value = CScreenLabels.oprionsForBrightness[2];
    }
  }

  changeThemeColor(String val) {
    if (_mode.value != val) {
      _mode.value = val;
    }
  }
}
