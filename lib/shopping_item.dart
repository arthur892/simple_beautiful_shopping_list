import 'package:flutter/material.dart';
import 'package:simple_beautiful_shopping_list/shopping_cart_button.dart';
import 'package:simple_beautiful_shopping_list/shopping_item_name_and_price.dart';

class ShoppingItem extends StatelessWidget {
  const ShoppingItem({super.key, required this.name, required this.price});

  final String name;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: const BoxDecoration(
          color: Colors.deepPurpleAccent,
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: 16),
          ShoppingItemNameAndPrice(name: name, price: price),
          const Spacer(),
          const ShoppingCartButtonLukas(),
        ],
      ),
    );
  }
}
