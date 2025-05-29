import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:transactions_app/core/routes/app_routes.dart';
import '../core/routes/route_generator.dart';

import 'core/di/di.dart';
import 'core/helpers/app_context.dart';
import 'core/theme/controller/app_theme_controller.dart';

import 'core/theme/data/app_colors.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  await uiConfigs();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 640),
        builder: (_, child) {
          return GetBuilder<AppThemeController>(builder: (controller) {
            return MaterialApp(
              title: 'Manex App',
              debugShowCheckedModeBanner: false,
              theme: controller.currentTheme,
              navigatorKey: AppContext.appNavKey,
              locale: const Locale('ar'),
              supportedLocales: const [
                Locale('ar'),
              ],
              localizationsDelegates: const [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              initialRoute: AppRoutes.home,
              onGenerateRoute: RouteGenerator.generateRoute,
            );
          });
        });
  }
}

uiConfigs() async {
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: AppColors.primary, // Android status bar color
    statusBarIconBrightness: Brightness.light, // Android status bar icons
    statusBarBrightness: Brightness.light, // iOS status bar icons
    systemNavigationBarColor:
        Colors.transparent, // Android navigation bar color
    systemNavigationBarIconBrightness: Brightness.light, // Android nav icons
  ));
}
