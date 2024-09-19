import 'package:flutter/material.dart';
import 'package:simple_beautiful_shopping_list/models/product.dart';
import 'package:simple_beautiful_shopping_list/presentation/shopping_list_entry.dart';

class ShoppingListContent extends StatelessWidget {
  const ShoppingListContent({super.key, required this.products});

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    // Diese Column soll durch eine ListView ersetzt werden.
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Items",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        const SizedBox(height: 16),
        ShoppingListEntry(product: products[0]),
        const SizedBox(height: 16),
        ShoppingListEntry(product: products[1]),
        const SizedBox(height: 16),
        ShoppingListEntry(product: products[2]),
      ],
    );
  }
}
