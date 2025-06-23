import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LayoutBuilder Demo',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      debugShowCheckedModeBanner: false,
    );
  }
}
