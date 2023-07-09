import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/// Two types of widgets -
/// 1. Stateless Widgets
/// 2. Statefull Widgets

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Currency Converter"),),
        body: const Center(
          child: Text("Hello world!"),
        ),
      ),
    );
  }
}
