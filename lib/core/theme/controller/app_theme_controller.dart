import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transactions_app/core/services/local/app_cache_service.dart';

import '../data/app_theme.dart';

class AppThemeController extends GetxController {
  ThemeData currentTheme = AppTheme.lightTheme;
  bool isDark = false;

  @override
  void onInit() {
    super.onInit();
    getCurrentTheme();
  }

  getCurrentTheme() async {
    isDark = await AppCacheService.getData(key: 'isDark') ?? false;
    currentTheme = isDark ? AppTheme.darkTheme : AppTheme.lightTheme;

    // await setPlatformColors();
    update();
  }

  changeTheme() async {
    isDark = !isDark;
    currentTheme = isDark ? AppTheme.darkTheme : AppTheme.lightTheme;
    //await setPlatformColors();
    await AppCacheService.saveData(key: 'isDark', value: isDark);

    update();
  }
}
