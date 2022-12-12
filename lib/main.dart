// ignore_for_file: prefer_const_constructors
import 'package:appointment_app/screens/customize_screen/screen.dart';
import 'package:appointment_app/screens/register%20screen/register_as.dart';
import 'package:appointment_app/splash_screen.dart';
import 'package:appointment_app/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'controllers/theme_controller.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ThemeController themeController =
        Get.put(ThemeController(), permanent: true);
// Timer(Duration(seconds: 3), () => Get.to(() => SplashScreen()));
    return Obx(
      () => GetMaterialApp(
        defaultTransition: Transition.cupertino,
        transitionDuration: const Duration(milliseconds: 300),
        title: 'Habit',
        debugShowCheckedModeBanner: false,
        theme: Styles.themeData(
          context,
          themeController.mode,
        ),
        darkTheme: Styles.darkThemeData(
          context,
          themeController.mode,
        ),
        initialRoute: '/',
        getPages: Routes.routes,
        themeMode: themeController.themeModeData['value'] == 'default'
            ? ThemeMode.system
            : themeController.themeModeData['value'] == 'dark'
                ? ThemeMode.dark
                : ThemeMode.light,
        unknownRoute:
            GetPage(name: '/notfound', page: () => const SplashScreen()),
      ),
    );
  }
}

class Routes {
  static final routes = [
    GetPage(name: '/', page: () => const SplashScreen()),
    GetPage(name: '/customize', page: () => const CustomizeScreen()),
    GetPage(name: '/register-as', page: () => const RegisterAsScreen()),



  ];
}
