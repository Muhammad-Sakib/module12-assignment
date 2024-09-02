import 'package:flutter/material.dart';

enum DeviceType { mobile, tablet, desktop }

class ScreenUtils {
  static const double mobileMaxSize = 610;
  static const double tabletMaxSize = 1008;
  static const double desktopMinSize = 1008;
  static const String HeaderText = "Flutter web.\nThe basics";
  static const String ParagraphText =
      "In this course we will go over the basics of using Flutter Web for development. Topics will include Responsive Layout, Deploying Font Changes, Hover functionality, Modals and more.";

  static const Color themeColor = Color.fromARGB(255, 31, 228, 147);

  static DeviceType getDeviceType(double width) {
    if (width < mobileMaxSize) {
      return DeviceType.mobile;
    } else if (width >= mobileMaxSize && width < tabletMaxSize) {
      return DeviceType.tablet;
    } else {
      return DeviceType.desktop;
    }
  }
}
