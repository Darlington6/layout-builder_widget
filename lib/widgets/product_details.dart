import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Avocado Toast',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          'A delicious avocado toast with eggs and tomatoes, perfect for breakfast or lunch.',
        ),
        SizedBox(height: 10),
        Text(
          '\$6.99',
          style: TextStyle(fontSize: 18, color: Colors.deepOrange),
        ),
      ],
    );
  }
}