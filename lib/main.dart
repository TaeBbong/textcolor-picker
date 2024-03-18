import 'package:flutter/material.dart';
import 'package:textcolor_picker_web/constants/theme.dart';

import 'screens/desktop_screen.dart';
import 'screens/mobile_screen.dart';
import 'screens/tablet_screen.dart';
import 'widgets/responsive_layout.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: initThemeData(brightness: Brightness.light),
      darkTheme: initThemeData(brightness: Brightness.dark),
      home: ResponsiveLayout(
        mobileLayout: MobileScreen(),
        tabletLayout: TabletScreen(),
        desktopLayout: DesktopScreen(),
      ),
    );
  }
}
