import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app_music/modules/home/controller/home_controller.dart';

class HomePage extends GetView<HomeController> {
  final HomeController homeController;

  const HomePage(this.homeController, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
