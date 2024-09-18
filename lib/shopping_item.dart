import 'package:flutter/material.dart';
import 'package:simple_beautiful_shopping_list/shopping_item_name_and_price.dart';

class ShoppingItem extends StatelessWidget {
  const ShoppingItem({super.key, required this.name, required this.price});

  final String name;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      padding: const EdgeInsets.all(8),
      color: Colors.deepPurpleAccent,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ShoppingItemNameAndPrice(name: name, price: price),
          const Icon(Icons.shopping_cart_outlined, size: 32),
        ],
      ),
    );
  }
}
