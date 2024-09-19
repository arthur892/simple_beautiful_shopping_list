import 'package:flutter/material.dart';
import 'package:simple_beautiful_shopping_list/models/product.dart';
import 'package:simple_beautiful_shopping_list/presentation/list_content.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.products});

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Simple Beautiful Shopping List",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        // Die Column in diesem Widget soll durch eine ListView ersetzt werden.
        child: ListContent(products: products),
      ),
    );
  }
}
