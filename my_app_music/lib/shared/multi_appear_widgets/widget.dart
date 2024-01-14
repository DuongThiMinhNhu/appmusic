import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';

class CommonWidget {}

Widget spaceVertical(double value) {
  return SizedBox(
    height: value,
  );
}

Widget spaceHorizontal(double value) {
  return SizedBox(
    width: value,
  );
}

Widget onTapWidget({
  required Widget child,
  required void Function()? onTap,
}) {
  return InkWell(
    splashColor: AppColor.blackColor.withOpacity(0.15),
    highlightColor: AppColor.grayTextwhiteColor.withOpacity(0.25),
    onTap: onTap,
    child: child,
  );
}
