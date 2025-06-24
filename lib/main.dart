// import 'package:flutter/material.dart';
// import 'package:flutter_layout_builder/screens/product_screen.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'LayoutBuilder Demo',
//       theme: ThemeData(primarySwatch: Colors.deepOrange),
//       home: const ProductScreen(),
//       // Hide debugger banner
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_layout_builder/responsive/desktop_scaffold.dart';
import 'package:flutter_layout_builder/responsive/mobile_scaffold.dart';
import 'package:flutter_layout_builder/responsive/responsive_layout.dart';
import 'package:flutter_layout_builder/responsive/tablet_scaffold.dart';

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
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(), 
        desktopScaffold: DesktopScaffold(),
        ),
    );
  }
}