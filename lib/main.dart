import 'package:flutter/material.dart';
import 'package:flutter_layout_builder/screens/home_screen.dart'; // Importing the initial screen

// The main function — entry point of the Flutter application
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes the debug banner from the top-right corner
      title: "LayoutBuilder Demo",
      home: HomeScreen()  // Sets the home screen when the app starts
    );
  }
}