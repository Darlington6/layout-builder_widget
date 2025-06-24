import 'package:flutter/material.dart';
import 'package:flutter_layout_builder/responsives/desktop_layout.dart';
import 'package:flutter_layout_builder/responsives/mobile_layout.dart';
import 'package:flutter_layout_builder/responsives/responsive_constraints.dart';
import 'package:flutter_layout_builder/responsives/tablet_layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "LayoutBuilder Demo",
      theme: ThemeData(),
      home: ResponsiveLayout(
        mobileLayout: MobileLayout(),
        tabletLayout: TabletLayout(), 
        desktopLayout: DesktopLayout(),
        ),
    );
  }
}