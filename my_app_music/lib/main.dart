import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app_music/routes/app_pages.dart';
import 'package:my_app_music/themes/colors_theme.dart';

import 'modules/splash/binding/splash_binding.dart';
import 'modules/splash/view/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music',
      theme: ThemeColor().themeData,
      home: const SplashPage(),
      initialBinding: SplashBinding(),
      getPages: AppPages.pages,
    );
  }
}
