import 'package:flutter/material.dart';

// A simple stateless widget that displays a padded brown box
class WidgetBoxes extends StatelessWidget {
  const WidgetBoxes({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.brown,
        ),
      );
  }
}