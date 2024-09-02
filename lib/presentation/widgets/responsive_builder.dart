import 'package:flutter/material.dart';
import 'package:module12_assignment/presentation/utils/screen_utils.dart';

class ResponsiveBuilder extends StatelessWidget {
  const ResponsiveBuilder(
      {super.key,
      required this.mobile,
      required this.tablet,
      required this.desktop});
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final DeviceType deviceType = ScreenUtils.getDeviceType(size.width);
    print(deviceType);
    if (deviceType == DeviceType.mobile) {
      return mobile;
    } else if (deviceType == DeviceType.tablet) {
      return tablet;
    } else {
      return desktop;
    }
  }
}
