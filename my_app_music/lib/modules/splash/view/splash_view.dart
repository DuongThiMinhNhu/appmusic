import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app_music/routes/app_routes.dart';
import 'package:my_app_music/shared/constants/colors.dart';
import 'package:my_app_music/shared/multi_appear_widgets/network_image_common.dart';

import '../../../resource/assets_constant/icon_constants.dart';
import '../../../resource/assets_constant/image_constants.dart';
import '../../../shared/multi_appear_widgets/widget.dart';
import '../../../shared/text_style.dart';
import '../../../themes/colors_theme.dart';
import '../controller/splash_controller.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return GetBuilder<SplashController>(
      builder: (controller) => Scaffold(
          appBar: AppBar(
              titleSpacing: 0,
              backgroundColor: AppColor.whiteColor,
              elevation: 0,
              title: _appBar(colorScheme, context)),
          backgroundColor: ThemeColor.white,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                    child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 32),
                      child: Row(
                        children: [
                          RichText(
                            text: TextSpan(
                                text: 'Add Your\n',
                                style: TextAppStyle()
                                    .semiBoldTextStyleLarge()
                                    .copyWith(
                                        fontSize: 20,
                                        color: AppColor.grayTextwhiteColor),
                                children: [
                                  WidgetSpan(child: spaceVertical(32)),
                                  TextSpan(
                                    text: 'Music ',
                                    style: TextAppStyle()
                                        .semiBoldTextStyleLarge()
                                        .copyWith(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600),
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: Get.width,
                      height: Get.height / 2,
                      child: Image.asset(ImageConstants.splash,
                          fit: BoxFit.contain),
                    ),
                  ],
                )),
                onTapWidget(
                  onTap: () {
                    Get.offAllNamed(AppRoutes.main);
                  },
                  child: Container(
                    width: Get.width - 160,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      color: AppColor.primary,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Text(
                      '''Let's go''',
                      style: TextAppStyle()
                          .appBarTitle()
                          .copyWith(color: AppColor.whiteColor, fontSize: 24),
                    ),
                  ),
                ),
                spaceVertical(32),
              ],
            ),
          )),
    );
  }

  Widget _appBar(ColorScheme colorScheme, BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        Container(
          padding: const EdgeInsets.all(4),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: const SizedBox(
              width: 36,
              height: 36,
              child: NetworkImageCommon(
                  urlImg:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQq9XsQfQXEphwe-1fT4z-F66I8Srw4O3cMw--cPP2jvSQpTcTvbpfFpgqiLGCKOe-6Wj4&usqp=CAU'),
            ),
          ),
        )
      ]),
    );
  }
}
