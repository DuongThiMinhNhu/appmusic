import 'package:flutter/material.dart';

import '../../resource/assets_constant/icon_constants.dart';
import '../constants/colors.dart';

class NetworkImageCommon extends StatelessWidget {
  final String urlImg;
  final double? wCPI;
  final double? hCPI;
  final double? sizeLogo;
  final bool? setPersonLogo;
  final double? sizePersonLogo;
  final BoxFit? fit;
  const NetworkImageCommon(
      {Key? key,
      required this.urlImg,
      this.wCPI,
      this.hCPI,
      this.sizeLogo,
      this.setPersonLogo,
      this.sizePersonLogo,
      this.fit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      urlImg,
      fit: fit ?? BoxFit.contain,
      loadingBuilder: (BuildContext context, Widget child,
          ImageChunkEvent? loadingProgress) {
        if (loadingProgress == null) {
          return child;
        }
        return Center(
          child: SizedBox(
            width: wCPI != 0 ? wCPI : 12,
            height: hCPI != 0 ? hCPI : 12,
            child: CircularProgressIndicator(
              strokeWidth: 2.5,
              color: AppColor.blackColor,
              backgroundColor: AppColor.backgroundColor,
            ),
          ),
        );
      },
      errorBuilder:
          (BuildContext context, Object exception, StackTrace? stackTrace) {
        return Center(
            child: Container(
          width: sizeLogo ?? 80,
          height: sizeLogo ?? 80,
          child: setPersonLogo == true
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    IconConstants.user_default,
                    fit: BoxFit.fitWidth,
                  ),
                )
              : Icon(
                  Icons.no_photography_outlined,
                  color: AppColor.grayTextwhiteColor,
                  size: sizeLogo ?? 24,
                ),
        ));
      },
    );
  }
}
