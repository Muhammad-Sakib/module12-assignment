import 'package:flutter/material.dart';
import 'package:module12_assignment/presentation/screens/fragments/desktop_view.dart';
import 'package:module12_assignment/presentation/widgets/responsive_builder.dart';

import 'fragments/mobile_view.dart';
import 'fragments/tablet_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        mobile: MobileView(), tablet: TabletView(), desktop: DesktopView());
  }
}
