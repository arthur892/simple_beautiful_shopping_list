import 'package:flutter/material.dart';
import 'package:simple_beautiful_shopping_list/models/product.dart';
import 'package:simple_beautiful_shopping_list/presentation/list_entry.dart';

class ColumnListContent extends StatelessWidget {
  const ColumnListContent({super.key, required this.products});

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
            itemBuilder: (contex, index) => ListEntry(product: products[index]),
            separatorBuilder: (contex, index) => const SizedBox(
                  height: 16,
                ),
            itemCount: products.length)

        /*Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListEntry(product: products[0]),
        const SizedBox(height: 16),
        ListEntry(product: products[1]),
        const SizedBox(height: 16),
        ListEntry(product: products[2]),
        const SizedBox(height: 16),
        ListEntry(product: products[3]),
        const SizedBox(height: 16),
        ListEntry(product: products[4]),
      ],
    )*/
        ;
  }
}
