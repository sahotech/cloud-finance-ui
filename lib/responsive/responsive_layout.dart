// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'screens/desktop.dart';
import 'screens/mobile.dart';
import 'screens/tablet.dart';

class ResponsiveLayout extends StatelessWidget {
  ResponsiveLayout({super.key});

  int moblie = 600;
  int tablet = 1100;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < moblie) {
          return const Mobile();
        } else if (constraints.maxWidth < tablet) {
          return Tablet();
        } else {
          return DesktopDashboard();
        }
      },
    );
  }
}
