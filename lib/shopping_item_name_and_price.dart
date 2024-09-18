import 'package:flutter/material.dart';

class ShoppingItemNameAndPrice extends StatelessWidget {
  const ShoppingItemNameAndPrice({
    super.key,
    required this.name,
    required this.price,
  });

  final String name;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Text(
          "  ${price.toStringAsFixed(2)} €",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
