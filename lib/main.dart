import 'package:currencyconverter/currency_converter_material.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

/// Two types of widgets -
/// 1. Stateless Widgets
/// 2. Statefull Widgets

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final ThemeData theme = ThemeData();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const CurrencyConverterMaterialPage(),
      debugShowCheckedModeBanner: false,
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.white,
          secondary: Colors.pinkAccent,
        )
      ),
    );
  }
}
