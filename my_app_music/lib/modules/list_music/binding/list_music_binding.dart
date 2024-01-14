import 'package:get/get.dart';

import '../controller/list_music_controller.dart';

class ListMusicBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ListMusicController());
  }
}
