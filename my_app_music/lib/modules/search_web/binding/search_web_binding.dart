import 'package:get/get.dart';

import '../controller/search_web_controller.dart';

class SearchWebBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchWebController());
  }
}
