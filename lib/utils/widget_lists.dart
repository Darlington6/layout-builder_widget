import 'package:flutter/material.dart';

// A stateless widget that creates a green horizontal block for layout demos
class WidgetLists extends StatelessWidget {
  const WidgetLists({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 100.0, // Fixed vertical size for the block
          color: Colors.green.shade800,
        ),
      );
  }
}