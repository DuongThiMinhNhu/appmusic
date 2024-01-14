import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app_music/modules/home/view/home_view.dart';

import '../../../shared/constants/colors.dart';
import '../../../shared/multi_appear_widgets/widget.dart';
import '../../../shared/text_style.dart';
import '../../list_music/view/list_music_view.dart';
import '../controller/main_controller.dart';

class MainScreen extends GetView<MainController> {
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      extendBody: true,
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller.controller,
        onPageChanged: (index) {
          controller.currentPage.value = index;
        },
        children: _buildScreens(),
      ),
      bottomNavigationBar: BottomAppBar(
        height: kBottomNavigationBarHeight + 32,
        elevation: 0,
        color: AppColor.primary,
        padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
        surfaceTintColor: colorScheme.secondary,
        clipBehavior: Clip.antiAlias,
        shape: const CircularNotchedRectangle(),
        notchMargin: 12.0,
        child: Container(
            padding: const EdgeInsets.only(bottom: 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                onTapWidget(
                  onTap: () {
                    controller.controller.jumpToPage(0);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: const Icon(
                      Icons.list,
                      color: Colors.white,
                      size: 32,
                    ),
                  ),
                ),
                onTapWidget(
                  onTap: () {
                    controller.controller.jumpToPage(2);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 32,
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }

  List<Widget> _buildScreens() {
    return [
      HomePage(controller.homeController),
      //home-2nd-page
      ListMusicPage(controller.listMusicController),

      //home-5th-page
    ];
  }
}
