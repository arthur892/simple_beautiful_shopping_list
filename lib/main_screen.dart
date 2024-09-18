import 'package:flutter/material.dart';
import 'package:simple_beautiful_shopping_list/shopping_item.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

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
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
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
        ),
      ),
    );
  }
}
