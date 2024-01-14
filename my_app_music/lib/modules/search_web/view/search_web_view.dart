import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../themes/colors_theme.dart';
import '../controller/search_web_controller.dart';

class SearchWebPage extends StatelessWidget {
  const SearchWebPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchWebController>(
      builder: (controller) =>
          Scaffold(backgroundColor: ThemeColor.white, body: Container()),
    );
  }
}
