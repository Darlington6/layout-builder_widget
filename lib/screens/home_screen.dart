import 'package:flutter/material.dart';

// Importing responsive layout screens
import 'package:flutter_layout_builder/responsives/desktop_layout.dart';
import 'package:flutter_layout_builder/responsives/mobile_layout.dart';
import 'package:flutter_layout_builder/responsives/responsive_constraints.dart';
import 'package:flutter_layout_builder/responsives/tablet_layout.dart';

// Home screen shown when the app launches
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("LayoutBuilder Demo", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Welcome to Flutter's LayoutBuilder Demo; sit back and enjoy the ride!",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                ),
            ),
              SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Navigates to the responsive layout screen when button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ResponsiveLayout(
                      mobileLayout: MobileLayout(),
                      tabletLayout: TabletLayout(),
                      desktopLayout: DesktopLayout(),
                    ),
                  ),
                );
              },
               // Button label
              child: Text("Explore Layouts", style: TextStyle(color: Colors.blue.shade900),),
            ),
          ],
        ),
      ),
    );
  }
}