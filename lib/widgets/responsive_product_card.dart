import 'package:flutter/material.dart';
import 'product_details.dart';

class ResponsiveProductCard extends StatelessWidget {
  const ResponsiveProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return Row(
            children: const [
              Expanded(flex: 1, child: _ProductImage()),
              SizedBox(width: 20),
              Expanded(flex: 2, child: ProductDetails()),
            ],
          );
        } else {
          return Column(
            children: const [
              _ProductImage(),
              SizedBox(height: 20),
              ProductDetails(),
            ],
          );
        }
      },
    );
  }
}

class _ProductImage extends StatelessWidget {
  const _ProductImage();

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/avocado_toast.jpg',
      height: 200,
      fit: BoxFit.cover,
    );
  }
}