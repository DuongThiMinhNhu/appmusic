import 'package:flutter/material.dart';
import 'constants/colors.dart';
import 'constants/common.dart';

class TextAppStyle {
  static const String appFont = 'Mulish';
  TextStyle appBarTitle() {
    return TextStyle(
        color: AppColor.blackColor,
        fontSize: 14,
        fontFamily: CommonConstants.extrabold);
  }

  TextStyle normalTextStyleExtraSmall() {
    return TextStyle(
        color: AppColor.blackColor,
        fontSize: CommonConstants.extraSmallText,
        fontFamily: CommonConstants.medium);
  }

  TextStyle semiBoldTextStyleLarge() {
    return TextStyle(
        color: AppColor.blackColor,
        fontSize: CommonConstants.largeText,
        fontFamily: CommonConstants.semibold);
  }

  TextStyle semiBoldTextStyleExtraLarge() {
    return TextStyle(
        color: AppColor.blackColor,
        fontSize: CommonConstants.extraLargeText,
        fontFamily: CommonConstants.semibold);
  }

  TextStyle titleStyleSmall() {
    return TextStyle(
        color: AppColor.blackColor,
        fontSize: CommonConstants.smallText,
        fontFamily: CommonConstants.bold);
  }

  TextStyle titleStyle() {
    return TextStyle(
        color: AppColor.blackColor,
        fontSize: CommonConstants.mediumText,
        fontFamily: CommonConstants.bold);
  }

  TextStyle superStyleSmall() {
    return TextStyle(
        color: AppColor.blackColor,
        fontSize: CommonConstants.smallText,
        fontFamily: CommonConstants.extrabold);
  }

  TextStyle superStyle() {
    return TextStyle(
        color: AppColor.blackColor,
        fontSize: CommonConstants.mediumText,
        fontFamily: CommonConstants.extrabold);
  }
}
