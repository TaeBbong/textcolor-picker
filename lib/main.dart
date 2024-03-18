import 'package:flutter/material.dart';

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
      home: ResponsiveLayout(
        mobileLayout: MobileScreen(),
        tabletLayout: TabletScreen(),
        desktopLayout: DesktopScreen(),
      ),
    );
  }
}
