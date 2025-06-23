import 'package:flutter/material.dart';
import '../widgets/responsive_product_card.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        centerTitle: true,
        title: Text('Responsive Product Card', style: TextStyle(color: Colors.white),)
        ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: ResponsiveProductCard(),
      ),
    );
  }
}