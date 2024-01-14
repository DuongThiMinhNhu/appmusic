import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app_music/modules/list_music/controller/list_music_controller.dart';

import '../../home/controller/home_controller.dart';

class MainController extends GetxController
    with GetSingleTickerProviderStateMixin {
  MainController();
  PageController controller = PageController(initialPage: 0);
  RxInt currentPage = 0.obs;
  HomeController homeController = HomeController();
  ListMusicController listMusicController = ListMusicController();
  Future<void> onInit() async {
    super.onInit();
    Get.put<HomeController>(homeController);
    Get.put<ListMusicController>(listMusicController);
  }

  Future<void> ontapSelected(int idx) async {}
  @override
  Future<void> dispose() async {
    Get.delete<MainController>();
    super.dispose();
  }

  _doNothing() {}
}
