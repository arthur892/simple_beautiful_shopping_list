import 'package:flutter/material.dart';
import 'package:simple_beautiful_shopping_list/main_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Simple Beautiful Shopping App',
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
