import 'package:flutter/material.dart';
import 'package:simple_beautiful_shopping_list/models/product.dart';
import 'package:simple_beautiful_shopping_list/presentation/shopping_cart_button.dart';
import 'package:simple_beautiful_shopping_list/presentation/shopping_list_item_information.dart';

class ShoppingListEntry extends StatelessWidget {
  const ShoppingListEntry({super.key, required this.product});

  final Product product;

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
          const SizedBox(width: 24),
          ShoppingListItemInformation(
            name: product.name,
            price: product.price,
          ),
          const Spacer(),
          const ShoppingCartButton(),
        ],
      ),
    );
  }
}
