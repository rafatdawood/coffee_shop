import 'package:flutter/material.dart';

import 'size_config.dart';

abstract class AppStyles {
  static TextStyle sora16SemiBold(context) {
    return  TextStyle(
      color: const Color(0xff242424),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Sora',
      fontWeight: FontWeight.w600,

    );
  }
  static TextStyle sora16Regular(context) {
    return  TextStyle(
      color: Colors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Sora',
      fontWeight: FontWeight.w400,
    );
  }
  static TextStyle sora12Regular(context) {
    return  TextStyle(
      color: const Color(0xFFA2A2A2),
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: 'Sora',
      fontWeight: FontWeight.w400,
    );
  }
  static TextStyle sora14SemiBold(context) {
    return  TextStyle(
      color: Colors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Sora',
      fontWeight: FontWeight.w600,
    );
  }
  static TextStyle sora14Regular(context) {
    return  TextStyle(
      color: const Color(0xFF303030),
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Sora',
      fontWeight: FontWeight.w400,
    );
  }
  static TextStyle sora18SemiBold(context) {
    return  TextStyle(
      color: Colors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'Sora',
      fontWeight: FontWeight.w600,
    );
  }
  static TextStyle sora8SemiBold(context) {
    return  TextStyle(
      color: Colors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 8),
      fontFamily: 'Sora',
      fontWeight: FontWeight.w600,
    );
  }
  static TextStyle sora32SemiBold(context) {
    return  TextStyle(
      color: Colors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 32),
      fontFamily: 'Sora',
      fontWeight: FontWeight.w600,
    );
  }
  static TextStyle sora20SemiBold(context) {
    return  TextStyle(
      color: Colors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Sora',
      fontWeight: FontWeight.w600,
    );
  }
}

// sacleFactor
// responsive font size
// (min , max) fontsize
double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 800;
  } else {
    return width / 1000;
  }
}

