import 'package:flutter/material.dart';

// A custom widget that returns different layouts based on screen width
class ResponsiveLayout extends StatelessWidget {
  
  final Widget mobileLayout;
  final Widget tabletLayout;
  final Widget desktopLayout;

  const ResponsiveLayout({super.key, 
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
    });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // If screen width is 1024px or more, show desktop layout
        if (constraints.maxWidth >= 1024) {
          return desktopLayout;
           // If screen width is between 600px and 1023px, show tablet layout
        } else if (constraints.maxWidth >= 600) {
          return tabletLayout;
          // If screen width is less than 600px, show mobile layout
        } else {
          return mobileLayout;
        }
      },
      );
  }
}