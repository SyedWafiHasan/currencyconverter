import 'package:currencyconverter/currency_converter_cupertino.dart';
import 'package:currencyconverter/currency_converter_material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyMaterialApp());
  // runApp(const MyCupertinoApp());
}

/// Two types of widgets -
/// 1. Stateless Widgets
/// 2. Statefull Widgets

class MyMaterialApp extends StatelessWidget {
  MyMaterialApp({super.key});

  final ThemeData theme = ThemeData();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const CurrencyConverterMaterialPage(),
      debugShowCheckedModeBanner: false,
      theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(
        primary: Colors.blueGrey,
        secondary: Colors.pinkAccent,
      )),
    );
  }
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CurrencyConverterCupertinoPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
