import 'package:flutter/material.dart';
import 'package:simple_beautiful_shopping_list/shopping_item.dart';

class ShoppingListContent extends StatelessWidget {
  const ShoppingListContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Diese Column soll durch eine ListView ersetzt werden.
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Items",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        SizedBox(height: 16),
        ShoppingItem(name: "Tomate", price: 19.99),
        SizedBox(height: 16),
        ShoppingItem(name: "Apfel", price: 7.99),
        SizedBox(height: 16),
        ShoppingItem(name: "Wassermelone", price: 34.99),
      ],
    );
  }
}
