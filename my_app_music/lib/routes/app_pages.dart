import 'package:get/get.dart';
import 'package:my_app_music/modules/splash/view/splash_view.dart';

import '../modules/list_music/binding/list_music_binding.dart';
import '../modules/list_music/view/list_music_view.dart';
import '../modules/main/binding/main_binding.dart';
import '../modules/main/view/main_view.dart';
import '../modules/search_web/binding/search_web_binding.dart';
import '../modules/search_web/view/search_web_view.dart';
import '../modules/splash/binding/splash_binding.dart';
import 'app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.searchWeb,
      page: () => const SearchWebPage(),
      binding: SearchWebBinding(),
    ),
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.main,
      page: () => const MainScreen(),
      binding: MainBinding(),
    ),
  ];
}
